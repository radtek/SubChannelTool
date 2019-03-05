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

    }
}
