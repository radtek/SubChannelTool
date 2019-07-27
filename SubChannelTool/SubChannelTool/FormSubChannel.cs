using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SubChannelTool
{
    public partial class FormSubChannel : Form
    {
        public bool isGooglePay = false;    // 是否为google支付配置资源

        public FormSubChannel()
        {
            InitializeComponent();
        }

        private void textBox_apks_DragEnter(object sender, DragEventArgs e)
        {
            SubChannelTool.DragDropTool.Form_DragEnter(sender, e);
        }

        private void textBox_apks_DragDrop(object sender, DragEventArgs e)
        {
            SubChannelTool.DragDropTool.Form_DragDrop(sender, e);

            // 载入子渠道号信息
            string[] files = textBox_apks.Text.Split(';');
            textBox_channelId.Text = getChannelIds(files);  
        }

        private void FormSubChannel_Load(object sender, EventArgs e)
        {
            SubChannelTool.SignDepends.loadSigns(comboBox_sign); // 载入签名文件信息
            SubChannelTool.ResDepends.loadRes(combo_type);       // 载入资源文件信息

            LoadParam();
        }

        private void button_modify_Click(object sender, EventArgs e)
        {
            RecordPraram();

            SubChannelTool.Cmd.ThreadRun(ModifyLogic, this, button_modify);
        }

        public void ModifyLogic()
        {
            if(isGooglePay)
            {
                string publicKey0 = textPublicKey.Text.Trim();
                if (publicKey0.Equals(""))
                {
                    MessageBox.Show("google支付公钥，publickey不应为空！");
                    return;
                }
            }

            string[] files = textBox_apks.Text.Split(';');
            string channelIdText = textBox_channelId.Text.Trim().Replace("；", ";").Replace("，", ";").Replace(",", ";").Replace("、", ";");
            string[] channelIds = channelIdText.Split(';');

            string publicKey = textPublicKey.Text.Trim();
            string ltServer = textLtserver.Text.Trim();
            string notifyUrl = textNotify.Text.Trim();

            UnzipRes();

            foreach (string Name in files)
            {
                if (Name.ToLower().EndsWith(".apk"))
                {
                    ModifyLogic(Name, channelIds, publicKey, ltServer, notifyUrl);
                }
            }
        }

        /// <summary>
        /// 解压配置资源文件
        /// </summary>
        private void UnzipRes()
        {
            String zipPath = SubChannelTool.ResDepends.ResPath() +  "\\" + combo_type.SelectedItem.ToString();
            SubChannelTool.FileTools.ClearDir(SubChannelTool.Apktool.replaceDir);
            SubChannelTool.ZipTool.unzip(zipPath, SubChannelTool.Apktool.replaceDir);
        }

        /// <summary>
        /// 执行修改逻辑
        /// </summary>
        /// <param name="apkFile"></param>
        private void ModifyLogic(string apkFile, string[] channelIds, string publickey, string serverName, string notifyUrl)
        {
            if (apkFile.Trim().Equals("") || !File.Exists(apkFile)) return;

            //string data = Tools.ZipTool.ReadFile(apkFile, "assets/ltpay_config.txt");
            //data = modifyProperty(data, "SubChannelId", channelId);

            //byte[] dataM = Encoding.UTF8.GetBytes(data);
            //Tools.ZipTool.WriteFile(apkFile, "assets/ltpay_config.txt", dataM);

            string targetPath = SubChannelTool.FileTools.getPathNoExt(apkFile);
            SubChannelTool.FileTools.ClearDir(targetPath);

            SubChannelTool.Apktool.unPackage(apkFile, null, false, false);               // apk包解压
            CopyFolderTo(SubChannelTool.Apktool.replaceDir, targetPath, true);           // 复制Replace目录下的文件至解包目录下

            string config = targetPath + @"\assets\ltpay_config.txt";
            if (isGooglePay)
            {
                if (!publickey.Equals("")) SubChannelTool.PropertyTool.SetProperty(config, "google_publickey", publickey);           // 修改google支付公钥
                if (!serverName.Equals("")) SubChannelTool.PropertyTool.SetProperty(config, "google_LtsdkServerName", serverName);   // 修改乐堂支付服务器地址信息
                if(!notifyUrl.Equals("")) SubChannelTool.PropertyTool.SetProperty(config, "notifyUrl", notifyUrl);                   // 修改支付回调通知地址
            }

            ModifyManifest(targetPath);

            foreach (string channelId in channelIds)
            {
                //string config = targetPath + @"\assets\ltpay_config.txt";
                SubChannelTool.PropertyTool.SetProperty(config, "SubChannelId", channelId);  // 修改渠道号

                string zipPath = targetPath + "_" + channelId + ".apk";
                //Tools.ZipTool.zipFolder(targetPath, zipPath);                     // 生成apk
                SubChannelTool.Apktool.package(targetPath, null, zipPath);                   // 生成apk

                SubChannelTool.SignTool.SignApk(zipPath, comboBox_sign.Text);                // 对apk进行签名
            }

            SubChannelTool.FileTools.ClearDir(targetPath);   // 清空目录
        }

        /// <summary>
        /// 对Manifest.xml进行修改
        /// </summary>
        private void ModifyManifest(string targetPath)
        {
            string appendActivity = "<activity android:name=\"com.ltsdk.union.platform.LtsdkGoogle\" android:configChanges=\"orientation|keyboardHidden|screenSize\"  android:theme=\"@android:style/Theme.Translucent.NoTitleBar.Fullscreen\" />";
            string appendNetWork = "android:networkSecurityConfig=\"@xml/network_security_config\"";
            string appendPermission = "<uses-permission android:name=\"com.android.vending.BILLING\" />";

            string filePath = targetPath + @"\AndroidManifest.xml";
            if (System.IO.File.Exists(filePath))
            {
                string data = FileProcess.fileToString(filePath);
                if (isGooglePay && !data.Contains("com.ltsdk.union.platform.LtsdkGoogle"))
                {
                    data = data.Replace("</application>", appendActivity + "\r\n " + "</application>");
                }

                if (!data.Contains("xml/network_security_config"))
                {
                    data = data.Replace("<application", "<application " + appendNetWork + " ");
                }

                if (isGooglePay && !data.Contains("com.android.vending.BILLING"))
                {
                    data = data.Replace("<application", appendPermission + "\r\n " + "<application ");
                }

                FileProcess.SaveProcess(data, filePath);
            }
        }

        /// <summary>
        /// 获取apk包中的渠道号信息
        /// </summary>
        /// <param name="apkFiles"></param>
        /// <returns></returns>
        private string getChannelIds(string[] apkFiles)
        {
            StringBuilder B = new StringBuilder();

            foreach(string file in apkFiles)
            {
                if (file.ToLower().EndsWith(".apk"))
                {
                    string data = SubChannelTool.ZipTool.ReadFile(file, "assets/ltpay_config.txt");
                    string value = SubChannelTool.PropertyTool.getProperty(data, "SubChannelId");
                    B.Append(value + ";");
                }
            }
            string channelIds = B.ToString();
            if (channelIds.Length > 0) channelIds = channelIds.Substring(0, channelIds.Length - 1);
            return channelIds;
        }


        /// <summary>
        /// 从一个目录将其内容复制到另一目录
        /// </summary>
        public static void CopyFolderTo(string dirSource, string dirTarget, bool overwirite)
        {
            // 先获取Source目录下，当前的文件目录信息。在复制前先读取文件和目录信息，避免父目录向子目录复制时出现的无限复制循环，而只执行一次复制
            DirectoryInfo directoryInfo = new DirectoryInfo(dirSource);
            FileInfo[] files = directoryInfo.GetFiles();
            DirectoryInfo[] directoryInfoArray = directoryInfo.GetDirectories();

            //检查目标路径是否存在目的目录
            if (!Directory.Exists(dirTarget)) Directory.CreateDirectory(dirTarget);

            //先来复制所有文件  
            foreach (FileInfo file in files)
            {
                string fileSource = Path.Combine(file.DirectoryName, file.Name);
                string fileTarget = Path.Combine(dirTarget, file.Name);
                file.CopyTo(fileTarget, overwirite);
            }

            //最后复制目录
            foreach (DirectoryInfo dir in directoryInfoArray)
            {
                CopyFolderTo(Path.Combine(dirSource, dir.Name), Path.Combine(dirTarget, dir.Name), overwirite);
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (!SubChannelTool.UpdateTool.updateIsRunning())
            {
                button_modify.Enabled = true;
                button_modify.Text = "修改";
            }
            else
            {
                button_modify.Enabled = false;
                button_modify.Text = "配置更新中...";
            }
        }

        private void combo_type_SelectedIndexChanged(object sender, EventArgs e)
        {
            isGooglePay = combo_type.SelectedItem.ToString().Contains("google");
            groupBox_google.Visible = isGooglePay;
        }

        /// <summary>
        /// 记录参数信息
        /// </summary>
        private void RecordPraram()
        {
            String apks = textBox_apks.Text.Trim();
            String type = combo_type.SelectedItem.ToString().Trim();
            String channelId = textBox_channelId.Text.Trim();
            String sign = comboBox_sign.SelectedItem.ToString().Trim();
            String PublicKey = textPublicKey.Text.Trim();
            String server = textLtserver.Text.Trim();
            String notify = textNotify.Text.Trim();

            RegistryTool.RegistrySave(SubChannelTool.UpdateTool.NAMESPACE, "apks", apks);
            RegistryTool.RegistrySave(SubChannelTool.UpdateTool.NAMESPACE, "type", type);
            RegistryTool.RegistrySave(SubChannelTool.UpdateTool.NAMESPACE, "channelId", channelId);
            RegistryTool.RegistrySave(SubChannelTool.UpdateTool.NAMESPACE, "sign", sign);
            RegistryTool.RegistrySave(SubChannelTool.UpdateTool.NAMESPACE, "PublicKey", PublicKey);
            RegistryTool.RegistrySave(SubChannelTool.UpdateTool.NAMESPACE, "server", server);
            RegistryTool.RegistrySave(SubChannelTool.UpdateTool.NAMESPACE, "notify", notify);
        }

        private void LoadParam()
        {
            String apks = RegistryTool.RegistryStrValue(SubChannelTool.UpdateTool.NAMESPACE, "apks");
            String type = RegistryTool.RegistryStrValue(SubChannelTool.UpdateTool.NAMESPACE, "type");
            String channelId = RegistryTool.RegistryStrValue(SubChannelTool.UpdateTool.NAMESPACE, "channelId");
            String sign = RegistryTool.RegistryStrValue(SubChannelTool.UpdateTool.NAMESPACE, "sign");
            String PublicKey = RegistryTool.RegistryStrValue(SubChannelTool.UpdateTool.NAMESPACE, "PublicKey");
            String server = RegistryTool.RegistryStrValue(SubChannelTool.UpdateTool.NAMESPACE, "server");
            String notify = RegistryTool.RegistryStrValue(SubChannelTool.UpdateTool.NAMESPACE, "notify");

            textBox_apks.Text = apks;

            // 设置分包类型
            int index = combo_type.Items.IndexOf(type);
            if (index != -1) combo_type.SelectedIndex = index;

            textBox_channelId.Text = channelId;

            // 设置签名类型
            index = comboBox_sign.Items.IndexOf(sign);
            if (index != -1) comboBox_sign.SelectedIndex = index;

            textPublicKey.Text = PublicKey;
            textLtserver.Text = server;
            textNotify.Text = notify;

        }
    }
}
