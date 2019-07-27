using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SubChannelTool
{
    /// <summary>
    /// # 预留分包子渠道号
    /// SubChannelId=0000000
    /// 
    /// 修改，如：SetProperty("D:\config.txt", "SubChannelId", "0000001")
    /// </summary>
    public class PropertyTool
    {
        #region 修改文件中的属性值

        /// <summary>
        /// 修改属性文件中的属性数据
        /// </summary>
        public static void SetProperty(string filePath, string Key, string Value)
        {
            if (System.IO.File.Exists(filePath))
            {
                string data = fileToString(filePath);       // 载入文件内容
                data = modifyProperty(data, Key, Value);    // 修改属性信息

                SaveProcess(data, filePath);                // 保存文件
            }
        }

        /// <summary>
        /// 修改所有属性文件中的属性数据
        /// </summary>
        public static void SetProperty(string[] filePaths, string Key, string Value)
        {
            foreach (string filePath in filePaths)
            {
                SetProperty(filePath, Key, Value);
            }
        }

        /// <summary>
        /// 修改所有属性文件中的属性数据
        /// </summary>
        public static void SetProperty(string[] filePaths, string KeyValue)
        {
            if (KeyValue == null || KeyValue.Equals("") || !KeyValue.Contains("=")) return;

            String[] tmp = SplitTwo(KeyValue, '=');
            if (tmp.Length != 2) return;

            foreach (string filePath in filePaths)
            {
                SetProperty(filePath, tmp[0], tmp[1]);
            }
        }

        /// <summary>
        /// 修改属性数据
        /// </summary>
        public static string modifyProperty(String data, string Key, string Value)
        {
            if (Key.EndsWith("=")) Key = Key.Substring(0, Key.Length - 1);
            string KeyValue = Key + "=" + Value;                      // 新的属性键值

            bool isModify = false;

            data = data.Replace("\r\n", "\n");
            while (data.Contains("\n\n")) data = data.Replace("\n\n", "\n");
            String[] lines = data.Split('\n');                     // 按行读取

            int count = 0;
            foreach (String line0 in lines)
            {
                count++;
                String line = line0.Trim();
                String[] tmp = SplitTwo(line, '=');                // 分割键值
                if (tmp[0].Equals(Key))
                {
                    if (count == 1) KeyValue = "\n" + KeyValue;    // 第一行附加换行
                    data = data.Replace(line, KeyValue);           // 修改属性值
                    isModify = true;
                    break;
                }
            }

            if (!isModify) data += "\n" + KeyValue;                            // 添加新的属性值
            data = data.Replace("\n", "\r\n");

            return data;
        }

        /// <summary>
        /// 获取Key的属性值
        /// </summary>
        public static string getProperty(String data, string Key, string defaulValue="")
        {
            data = data.Replace("\r\n", "\n");
            while (data.Contains("\n\n")) data = data.Replace("\n\n", "\n");
            String[] lines = data.Split('\n');                     // 按行读取

            foreach (String line0 in lines)
            {
                String line = line0.Trim();
                String[] tmp = SplitTwo(line, '=');                // 分割键值
                if (tmp[0].Equals(Key))
                {
                    return tmp[1];
                }
            }

            return defaulValue;
        }

        /// <summary>
        /// 将一个字符串按分割符，分割为两个串
        /// </summary>
        public static String[] SplitTwo(String str, char seprator, bool trim = true)
        {
            String[] tmp = null;
            if (str.Contains(seprator))
            {
                int index = str.IndexOf(seprator);

                String key = str.Substring(0, index);
                String value = str.Substring(index + 1);

                if (trim) key = key.Trim();
                if (trim) value = value.Trim();

                tmp = new String[] { key, value };
            }
            else tmp = new String[] { str };

            return tmp;
        }

        #endregion


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
                System.IO.StreamReader file1 = new System.IO.StreamReader(filePath, Encoding.UTF8);//读取文件中的数据  
                str = file1.ReadToEnd();                                            //读取文件中的全部数据  

                file1.Close();
                file1.Dispose();
            }
            return str;
        }

        /// <summary>
        /// 保存数据data到文件处理过程，返回值为保存的文件名
        /// </summary>  
        public static String SaveProcess(String data, String filePath)
        {
            if (System.IO.File.Exists(filePath)) System.IO.File.Delete(filePath);           // 删除路径下原有文件
            System.IO.StreamWriter file1 = new System.IO.StreamWriter(filePath, false, Encoding.UTF8);     //文件已覆盖方式添加内容  

            file1.Write(data);                                                              //保存数据到文件  

            file1.Close();                                                                  //关闭文件  
            file1.Dispose();                                                                //释放对象  

            return filePath;
        }

        #endregion
    }
}
