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
        public FormSubChannel()
        {
            InitializeComponent();
        }

        private void textBox_apks_DragEnter(object sender, DragEventArgs e)
        {
            Tools.DragDropTool.Form_DragEnter(sender, e);
        }

        private void textBox_apks_DragDrop(object sender, DragEventArgs e)
        {
            Tools.DragDropTool.Form_DragDrop(sender, e);

            // 载入子渠道号信息
            string[] files = textBox_apks.Text.Split(';');
            textBox_channelId.Text = getChannelIds(files);  
        }

        private void FormSubChannel_Load(object sender, EventArgs e)
        {
            Tools.SignDepends.loadSigns(comboBox_sign); // 载入签名文件信息
        }

        private void button_modify_Click(object sender, EventArgs e)
        {
            Tools.Cmd.ThreadRun(ModifyLogic, this, button_modify);
        }

        public void ModifyLogic()
        {
            string[] files = textBox_apks.Text.Split(';');
            string channelIdText = textBox_channelId.Text.Trim().Replace("；", ";").Replace("，", ";").Replace(",", ";").Replace("、", ";");
            string[] channelIds = channelIdText.Split(';');

            foreach (string Name in files)
            {
                if (Name.ToLower().EndsWith(".apk"))
                {
                    ModifyLogic(Name, channelIds);
                }
            }
        }

        /// <summary>
        /// 执行修改逻辑
        /// </summary>
        /// <param name="apkFile"></param>
        private void ModifyLogic(string apkFile, string[] channelIds)
        {
            if (apkFile.Trim().Equals("") || !File.Exists(apkFile)) return;

            //string data = Tools.ZipTool.ReadFile(apkFile, "assets/ltpay_config.txt");
            //data = modifyProperty(data, "SubChannelId", channelId);

            //byte[] dataM = Encoding.UTF8.GetBytes(data);
            //Tools.ZipTool.WriteFile(apkFile, "assets/ltpay_config.txt", dataM);

            string targetPath = Tools.FileTools.getPathNoExt(apkFile);
            Tools.FileTools.ClearDir(targetPath);

            //Tools.ZipTool.unzip(apkFile, targetPath);                         // apk包解压
            Tools.Apktool.unPackage(apkFile, null, false, false);               // 解包

            //Tools.FileTools.ClearDir(Tools.Apktool.replaceDir);
            //Tools.ZipTool.unzip(Tools.Apktool.replaceDir + ".zip", Tools.Apktool.replaceDir);
            CopyFolderTo(Tools.Apktool.replaceDir, targetPath, true);           // 复制Replace目录下的文件至解包目录下

            foreach (string channelId in channelIds)
            {
                string config = targetPath + @"\assets\ltpay_config.txt";
                Tools.PropertyTool.SetProperty(config, "SubChannelId", channelId);  // 修改渠道号

                string zipPath = targetPath + "_" + channelId + ".apk";
                //Tools.ZipTool.zipFolder(targetPath, zipPath);                     // 生成apk
                Tools.Apktool.package(targetPath, null, zipPath);                   // 生成apk

                Tools.SignTool.SignApk(zipPath, comboBox_sign.Text);                // 对apk进行签名
            }

            Tools.FileTools.ClearDir(targetPath);   // 清空目录
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
                    string data = Tools.ZipTool.ReadFile(file, "assets/ltpay_config.txt");
                    string value = Tools.PropertyTool.getProperty(data, "SubChannelId");
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
            if (!Tools.UpdateTool.updateIsRunning())
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

    }
}
