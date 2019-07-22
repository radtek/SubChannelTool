namespace SubChannelTool
{
    partial class FormSubChannel
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormSubChannel));
            this.textBox_apks = new System.Windows.Forms.TextBox();
            this.textBox_channelId = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.button_modify = new System.Windows.Forms.Button();
            this.comboBox_sign = new System.Windows.Forms.ComboBox();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.label2 = new System.Windows.Forms.Label();
            this.textPublicKey = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textLtserver = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.textNotify = new System.Windows.Forms.TextBox();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.SuspendLayout();
            // 
            // textBox_apks
            // 
            this.textBox_apks.AllowDrop = true;
            this.textBox_apks.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.textBox_apks.Location = new System.Drawing.Point(1, 1);
            this.textBox_apks.Multiline = true;
            this.textBox_apks.Name = "textBox_apks";
            this.textBox_apks.Size = new System.Drawing.Size(343, 73);
            this.textBox_apks.TabIndex = 0;
            this.textBox_apks.Text = "请拖动待处理的文件至此(.apk)";
            this.textBox_apks.DragDrop += new System.Windows.Forms.DragEventHandler(this.textBox_apks_DragDrop);
            this.textBox_apks.DragEnter += new System.Windows.Forms.DragEventHandler(this.textBox_apks_DragEnter);
            // 
            // textBox_channelId
            // 
            this.textBox_channelId.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.textBox_channelId.Location = new System.Drawing.Point(66, 85);
            this.textBox_channelId.Name = "textBox_channelId";
            this.textBox_channelId.Size = new System.Drawing.Size(122, 21);
            this.textBox_channelId.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(5, 89);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 12);
            this.label1.TabIndex = 2;
            this.label1.Text = "子渠道号:";
            // 
            // button_modify
            // 
            this.button_modify.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.button_modify.Location = new System.Drawing.Point(268, 83);
            this.button_modify.Name = "button_modify";
            this.button_modify.Size = new System.Drawing.Size(75, 23);
            this.button_modify.TabIndex = 3;
            this.button_modify.Text = "修改";
            this.button_modify.UseVisualStyleBackColor = true;
            this.button_modify.Click += new System.EventHandler(this.button_modify_Click);
            // 
            // comboBox_sign
            // 
            this.comboBox_sign.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.comboBox_sign.FormattingEnabled = true;
            this.comboBox_sign.Location = new System.Drawing.Point(194, 85);
            this.comboBox_sign.Name = "comboBox_sign";
            this.comboBox_sign.Size = new System.Drawing.Size(71, 20);
            this.comboBox_sign.TabIndex = 5;
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 500;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // label2
            // 
            this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(5, 120);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 12);
            this.label2.TabIndex = 7;
            this.label2.Text = "publickey:";
            // 
            // textPublicKey
            // 
            this.textPublicKey.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.textPublicKey.Location = new System.Drawing.Point(76, 116);
            this.textPublicKey.Multiline = true;
            this.textPublicKey.Name = "textPublicKey";
            this.textPublicKey.Size = new System.Drawing.Size(189, 46);
            this.textPublicKey.TabIndex = 6;
            this.toolTip1.SetToolTip(this.textPublicKey, "google支付公钥");
            // 
            // label3
            // 
            this.label3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(5, 172);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(59, 12);
            this.label3.TabIndex = 9;
            this.label3.Text = "LtServer:";
            // 
            // textLtserver
            // 
            this.textLtserver.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.textLtserver.Location = new System.Drawing.Point(76, 168);
            this.textLtserver.Name = "textLtserver";
            this.textLtserver.Size = new System.Drawing.Size(189, 21);
            this.textLtserver.TabIndex = 8;
            this.textLtserver.Text = "netuserempirewar.hiwechats.com";
            this.toolTip1.SetToolTip(this.textLtserver, "乐堂计费服务器地址信息");
            // 
            // label4
            // 
            this.label4.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(5, 199);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 12);
            this.label4.TabIndex = 11;
            this.label4.Text = "notifyUrl:";
            // 
            // textNotify
            // 
            this.textNotify.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.textNotify.Location = new System.Drawing.Point(76, 195);
            this.textNotify.Name = "textNotify";
            this.textNotify.Size = new System.Drawing.Size(189, 21);
            this.textNotify.TabIndex = 10;
            this.toolTip1.SetToolTip(this.textNotify, "乐堂计费服务器回调地址，默认不填");
            // 
            // FormSubChannel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(343, 224);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.textNotify);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textLtserver);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.textPublicKey);
            this.Controls.Add(this.comboBox_sign);
            this.Controls.Add(this.button_modify);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBox_channelId);
            this.Controls.Add(this.textBox_apks);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FormSubChannel";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "SubChannelTool-google";
            this.Load += new System.EventHandler(this.FormSubChannel_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBox_apks;
        private System.Windows.Forms.TextBox textBox_channelId;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button_modify;
        private System.Windows.Forms.ComboBox comboBox_sign;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textPublicKey;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textLtserver;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textNotify;
    }
}

