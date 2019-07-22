using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Tools
{
    /// <summary>
    /// apk签名、zipallign对齐
    /// 
    /// 如：Tools.SignTool.SignApk("D:\123.apk", "my.keystore"); // 对apk进行签名
    /// </summary>
    public class SignTool
    {
        /// <summary>
        /// 使用signFileName对apkFile进行签名
        /// </summary>
        public static string SignApk(string apkName, string signFileName)
        {
            string result = "";

            if (signFileName == null || signFileName.Equals("")) return result;
            string Name = Path.GetFileName(apkName);
            outputAPK_name = Name.Substring(0, Name.Length-4) + "_" + signFileName + ".apk";


            if (signFileName.EndsWith(".keystore"))
            {
                String keysotreName = Tools.SignDepends.SinPath() + "\\" + signFileName;

                String[] I = Tools.SignDepends.getKestoreInfo(signFileName);  // 获取对应的签名信息
                String alias = I[0];
                String password = I[1];

                result = Tools.SignTool.SignKeyStore(apkName, keysotreName, alias, password, null);
            }
            else
            {
                String pem = Tools.SignDepends.SinPath() + "\\" + signFileName + ".x509.pem";
                String pk8 = Tools.SignDepends.SinPath() + "\\" + signFileName + ".pk8";
                String psw = "letang123";
                result = Tools.SignTool.Sign(apkName, pem, pk8, psw, null);
            }

            // 删除打包生成的未签名文件
            if (File.Exists(apkName)) File.Delete(apkName);

            return result;
        }


        #region 签名、对齐

        /// <summary>
        /// apk签名、对齐操作，对打包后的apk文件重新签名,使用指定的pem、pk8和psw进行签名
        /// </summary>
        public static String Sign(String apk, String pem, String pk8, String psw, Cmd.Callback call)
        {
            if (isApkFile(apk))
            {
                String signedApk = apk.Replace(".apk", "..apk");

                String signCmd = addDQM(pem) + " " + addDQM(pk8) + " " + addDQM(apk) + " " + addDQM(signedApk) + " " + psw; // 签名命令
                String result = SignApkRun(signCmd, call);                 // 执行签名命令,实时信息输出到函数OutPut中
                if (result.Contains("【E】")) return result;

                // 执行对齐操作
                signedApk = zipAlign(signedApk, call);
                if (result.Contains("【E】")) return result;

                // 设置apk输出名称
                String apkName = signedApk;
                if (!outputAPK_dir.Equals("")) apkName = outputAPK_dir + "\\" + Path.GetFileName(apkName);
                if (!outputAPK_name.Equals("")) apkName = Path.GetDirectoryName(apkName) + "\\" + outputAPK_name;

                if (!apkName.Equals(signedApk))
                {
                    if (File.Exists(apkName)) File.Delete(apkName);

                    String Dir = Path.GetDirectoryName(apkName);
                    if (Directory.Exists(Dir))
                    {
                        if (call != null) call("【I3】复制：" + signedApk + "到\r\n" + apkName);

                        File.Copy(signedApk, apkName);  // 复制生成的签名apk
                        File.Delete(signedApk);         // 删除原有签名apk
                        signedApk = apkName;            // 记录信息签名文件名称
                    }
                }

                return signedApk;
            }
            return "";
        }


        //set keysotreName=%~dp0downjoy_140_7YZLCBauKAXEfFD.keystore
        //set alias=140
        //set password=downjoy_140

        //jarsigner -digestalg SHA1 -sigalg MD5withRSA -verbose -keystore %keysotreName% -signedjar %1_signed.apk %1 %alias% -storepass %password%

        /// <summary>
        /// apk签名、对齐操作，对打包后的apk文件重新签名,使用指定的pem、pk8和psw进行签名
        /// </summary>
        public static String SignKeyStore(String apk, String keysotreName, String alias, String password, Cmd.Callback call)
        {
            if (isApkFile(apk))
            {
                String signedApk = apk.Replace(".apk", "..apk");

                // 签名命令
                String signCmd = "jarsigner -digestalg SHA1 -sigalg MD5withRSA -verbose -keystore " + addDQM(keysotreName) + " -signedjar " + addDQM(signedApk) + " " + addDQM(apk) + " " + alias + " -storepass " + password;

                String result = Cmd.Run(signCmd, call);   // 调用cmd命令，运行apktool.jar
                if (result.Contains("【E】")) return result;

                // 执行对齐操作
                signedApk = zipAlign(signedApk, call);
                if (result.Contains("【E】")) return result;

                // 设置apk输出名称
                String apkName = signedApk;
                if (!outputAPK_dir.Equals("")) apkName = outputAPK_dir + "\\" + Path.GetFileName(apkName);
                if (!outputAPK_name.Equals("")) apkName = Path.GetDirectoryName(apkName) + "\\" + outputAPK_name;

                if (!apkName.Equals(signedApk))
                {
                    if (File.Exists(apkName)) File.Delete(apkName);

                    String Dir = Path.GetDirectoryName(apkName);
                    if (Directory.Exists(Dir))
                    {
                        if (call != null) call("【I3】复制：" + signedApk + "到\r\n" + apkName);

                        File.Copy(signedApk, apkName);  // 复制生成的签名apk
                        File.Delete(signedApk);         // 删除原有签名apk
                        signedApk = apkName;            // 记录信息签名文件名称
                    }
                }

                return signedApk;
            }
            return "";
        }

        /// <summary>
        /// 对apk包执行zipAlign对齐操作，调用zipalign.exe对apk包进行处理
        /// </summary>
        public static string zipAlign(String filePath, Cmd.Callback call)
        {
            if (call != null) call(" ");
            if (call != null) call("【I】执行zipAlign对齐操作...");

            if (!File.Exists(filePath)) return "【E】文件不存在：" + filePath;
            string alignApk = filePath.Replace(".apk", ".align.apk");   // 对齐后的文件名

            String zipAlignTool = addDQM(System.AppDomain.CurrentDomain.BaseDirectory + Apktool.toolsDir + "\\zipalign.exe");
            String cmdStr = zipAlignTool + " -v 4 " + addDQM(filePath) + " " + addDQM(alignApk);

            String result = Cmd.Run(cmdStr, call);   // 调用cmd命令，运行apktool.jar
            if (result.Contains("【E】")) return result;

            if (File.Exists(filePath)) File.Delete(filePath);

            return alignApk;
        }

        # endregion


        public static string outputAPK_dir = "";        // apk输出目录
        public static string outputAPK_name = "";       // apk输出名称

        # region 工具基础功能函数

        // 判断是否为apk文件
        public static bool isApkFile(String file)
        {
            return System.IO.File.Exists(file) && file.EndsWith(".apk");
        }

        // 判断是否为apk文件解压后的文件目录
        public static bool isApkDir(String file)
        {
            return System.IO.Directory.Exists(file) && System.IO.File.Exists(file + "\\AndroidManifest.xml");
        }

        /// <summary>
        /// 为字符串str 添加双引号 add Double Quotation Marks
        /// </summary>
        private static String addDQM(String str)
        {
            return "\"" + str + "\"";
        }

        /// <summary>
        /// 删除指定文件目录，并重新创建
        /// </summary>
        public static String makeDir(String dir, bool useTimeMode = true)
        {
            String tmpDir = dir;                            // 生成新的路径
            if (useTimeMode) tmpDir = dir + "_@_" + DateTime.Now.ToString("yyyy_MM_dd_HH.mm.ss");

            if (System.IO.Directory.Exists(tmpDir))         // 若目标路径已存在,则删除
                Directory.Delete(tmpDir, true);
            System.IO.Directory.CreateDirectory(tmpDir);    // 创建缓存目录
            return tmpDir;
        }

        /// <summary>
        /// 使用signapk.jar执行命令
        /// 1、"*.x509.pem *.pk8 *1.apk *2.apk password"  // 使用签名文件，对*1.apk进行签名
        /// </summary>
        private static String SignApkRun(String arg, Cmd.Callback call)
        {
            String signTool = addDQM(System.AppDomain.CurrentDomain.BaseDirectory + Tools.Apktool.toolsDir + "\\signapk.jar");
            String cmdStr = "java -jar " + signTool + " " + arg;

            return Cmd.Run(cmdStr, call);   // 调用cmd命令，运行apktool.jar
        }

        # endregion

    }

    public class SignDepends
    {
        /// <summary>
        /// 获取签名文件所在目录
        /// </summary>
        public static String SinPath()
        {
            return System.AppDomain.CurrentDomain.BaseDirectory + Apktool.toolsDir+ "\\signs";
        }

        /// <summary>
        /// 载入签名文件信息
        /// </summary>
        public static void loadSigns(ComboBox comboBox_sign)
        {
            string preStr = comboBox_sign.Text;     //记录之前选中的信息
            comboBox_sign.Items.Clear();

            //所有签名文件
            string[] files = System.IO.Directory.GetFiles(SinPath());
            foreach (string file in files)
            {
                if (file.EndsWith(".pk8"))
                {
                    string name = System.IO.Path.GetFileNameWithoutExtension(file);
                    comboBox_sign.Items.Add(name);
                }
                else if (file.EndsWith(".keystore"))
                {
                    string name = System.IO.Path.GetFileName(file);
                    comboBox_sign.Items.Add(name);
                }
            }

            // 默认选中签名文件letang
            int index = comboBox_sign.Items.IndexOf(preStr.Equals("") ? "120" : preStr);
            if (index == -1 && comboBox_sign.Items.Count > 0) index = 0;
            if (index != -1) comboBox_sign.SelectedIndex = index;
        }


        /// <summary>
        /// 获取.keystore签名对应的alias和password信息
        /// </summary>
        public static String[] getKestoreInfo(String keysotreName)
        {
            String InfoPath = SinPath() + "\\" + "keystoreInfo.txt";
            string data = "";

            // 若keystore对应的信息记录文件不存在、或无此签名则提示输入并记录
            if (!File.Exists(InfoPath))
            {
                new InputForm_keyStore(keysotreName, InfoPath).ShowDialog();
            }
            else
            {
                data = FileProcess.fileToString(InfoPath);
                if (data.Equals("")) new InputForm_keyStore(keysotreName, InfoPath).ShowDialog();
            }

            // 读取keystoreName对应的签名配置信息
            data = FileProcess.fileToString(InfoPath);
            string SotreInfo = getNodeData(data, keysotreName, false);
            String alias = getNodeData(SotreInfo, "alias", true);
            String password = getNodeData(SotreInfo, "password", true);

            return new String[] { alias, password };
        }

        // 从自定义格式的数据data中，获取nodeName对应的节点数据
        //p>scimence(&#x000A;NeedToRegister(false)NeedToRegister&#x000A;RegisterPrice(1)RegisterPrice&#x000A;)scimence</p>&#x000A;</div>
        // NeedToRegister(false)&#x000A;RegisterPrice(1)   finalNode的数据格式
        public static string getNodeData(string data, string nodeName, bool finalNode)
        {
            try
            {
                string S = nodeName + "(", E = ")" + (finalNode ? "" : nodeName);
                int indexS = data.IndexOf(S) + S.Length;
                int indexE = data.IndexOf(E, indexS);

                return data.Substring(indexS, indexE - indexS);
            }
            catch (Exception) { return data; }
        }
    }


    public class FileProcess
    {
        #region 文件读取与保存

        /// <summary>
        /// 获取文件中的数据串
        /// </summary>
        public static string fileToString(String filePath)
        {
            string str = "";

            //获取文件内容
            if (System.IO.File.Exists(filePath))
            {
                bool defaultEncoding = filePath.EndsWith(".txt");

                System.IO.StreamReader file1;

                file1 = new System.IO.StreamReader(filePath);                  //读取文件中的数据
                //if (defaultEncoding) file1 = new System.IO.StreamReader(filePath, Encoding.Default);//读取文件中的数据
                //else file1 = new System.IO.StreamReader(filePath);                  //读取文件中的数据

                str = file1.ReadToEnd();                                            //读取文件中的全部数据

                file1.Close();
                file1.Dispose();
            }
            return str;
        }

        /// <summary>
        /// 保存数据data到文件处理过程，返回值为保存的文件名
        /// </summary>
        public static String SaveProcess(String data, String filePath, Encoding encoding = null)
        {
            //不存在该文件时先创建
            System.IO.StreamWriter file1 = null;
            if (encoding == null) file1 = new System.IO.StreamWriter(filePath, false/*, System.Text.Encoding.UTF8*/);     //文件已覆盖方式添加内容
            else file1 = new System.IO.StreamWriter(filePath, false, Encoding.Default);     // 使用指定的格式进行保存

            file1.Write(data);                                                              //保存数据到文件

            file1.Close();                                                                  //关闭文件
            file1.Dispose();                                                                //释放对象

            return filePath;
        }

        /// <summary>
        /// 获取当前运行目录
        /// </summary>
        public static string CurDir()
        {
            return AppDomain.CurrentDomain.BaseDirectory;
        }

        #endregion
    }

}
