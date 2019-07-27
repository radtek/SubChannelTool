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
            this.combo_type = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.groupBox_google = new System.Windows.Forms.GroupBox();
            this.label6 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.groupBox_google.SuspendLayout();
            this.panel1.SuspendLayout();
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
            this.textBox_apks.Size = new System.Drawing.Size(299, 63);
            this.textBox_apks.TabIndex = 0;
            this.textBox_apks.Text = "请拖动待处理的文件至此(.apk)";
            this.textBox_apks.DragDrop += new System.Windows.Forms.DragEventHandler(this.textBox_apks_DragDrop);
            this.textBox_apks.DragEnter += new System.Windows.Forms.DragEventHandler(this.textBox_apks_DragEnter);
            // 
            // textBox_channelId
            // 
            this.textBox_channelId.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.textBox_channelId.Location = new System.Drawing.Point(71, 35);
            this.textBox_channelId.Name = "textBox_channelId";
            this.textBox_channelId.Size = new System.Drawing.Size(198, 21);
            this.textBox_channelId.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 38);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 12);
            this.label1.TabIndex = 2;
            this.label1.Text = "子渠道号:";
            // 
            // button_modify
            // 
            this.button_modify.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.button_modify.Location = new System.Drawing.Point(206, 60);
            this.button_modify.Name = "button_modify";
            this.button_modify.Size = new System.Drawing.Size(63, 23);
            this.button_modify.TabIndex = 3;
            this.button_modify.Text = "修改";
            this.button_modify.UseVisualStyleBackColor = true;
            this.button_modify.Click += new System.EventHandler(this.button_modify_Click);
            // 
            // comboBox_sign
            // 
            this.comboBox_sign.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.comboBox_sign.FormattingEnabled = true;
            this.comboBox_sign.Location = new System.Drawing.Point(71, 62);
            this.comboBox_sign.Name = "comboBox_sign";
            this.comboBox_sign.Size = new System.Drawing.Size(115, 20);
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
            this.label2.Location = new System.Drawing.Point(2, 24);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 12);
            this.label2.TabIndex = 7;
            this.label2.Text = "publickey:";
            // 
            // textPublicKey
            // 
            this.textPublicKey.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.textPublicKey.Location = new System.Drawing.Point(73, 20);
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
            this.label3.Location = new System.Drawing.Point(2, 76);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(59, 12);
            this.label3.TabIndex = 9;
            this.label3.Text = "LtServer:";
            // 
            // textLtserver
            // 
            this.textLtserver.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.textLtserver.Location = new System.Drawing.Point(73, 72);
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
            this.label4.Location = new System.Drawing.Point(2, 103);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 12);
            this.label4.TabIndex = 11;
            this.label4.Text = "notifyUrl:";
            // 
            // textNotify
            // 
            this.textNotify.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.textNotify.Location = new System.Drawing.Point(73, 99);
            this.textNotify.Name = "textNotify";
            this.textNotify.Size = new System.Drawing.Size(189, 21);
            this.textNotify.TabIndex = 10;
            this.toolTip1.SetToolTip(this.textNotify, "乐堂计费服务器回调地址，默认不填");
            // 
            // combo_type
            // 
            this.combo_type.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.combo_type.FormattingEnabled = true;
            this.combo_type.Location = new System.Drawing.Point(71, 9);
            this.combo_type.Name = "combo_type";
            this.combo_type.Size = new System.Drawing.Size(199, 20);
            this.combo_type.TabIndex = 12;
            this.combo_type.SelectedIndexChanged += new System.EventHandler(this.combo_type_SelectedIndexChanged);
            // 
            // label5
            // 
            this.label5.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 12);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(59, 12);
            this.label5.TabIndex = 13;
            this.label5.Text = "分包类型:";
            // 
            // groupBox_google
            // 
            this.groupBox_google.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.groupBox_google.Controls.Add(this.label4);
            this.groupBox_google.Controls.Add(this.textNotify);
            this.groupBox_google.Controls.Add(this.label3);
            this.groupBox_google.Controls.Add(this.textLtserver);
            this.groupBox_google.Controls.Add(this.label2);
            this.groupBox_google.Controls.Add(this.textPublicKey);
            this.groupBox_google.ForeColor = System.Drawing.Color.Maroon;
            this.groupBox_google.Location = new System.Drawing.Point(8, 98);
            this.groupBox_google.Name = "groupBox_google";
            this.groupBox_google.Size = new System.Drawing.Size(273, 129);
            this.groupBox_google.TabIndex = 14;
            this.groupBox_google.TabStop = false;
            this.groupBox_google.Text = "google支付参数：";
            // 
            // label6
            // 
            this.label6.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(30, 65);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(35, 12);
            this.label6.TabIndex = 15;
            this.label6.Text = "签名:";
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.panel1.Controls.Add(this.label6);
            this.panel1.Controls.Add(this.groupBox_google);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.combo_type);
            this.panel1.Controls.Add(this.comboBox_sign);
            this.panel1.Controls.Add(this.button_modify);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.textBox_channelId);
            this.panel1.Location = new System.Drawing.Point(1, 70);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(297, 241);
            this.panel1.TabIndex = 16;
            // 
            // FormSubChannel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(299, 311);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.textBox_apks);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FormSubChannel";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "SubChannelTool(乐堂联运SDK)";
            this.Load += new System.EventHandler(this.FormSubChannel_Load);
            this.groupBox_google.ResumeLayout(false);
            this.groupBox_google.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
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
        private System.Windows.Forms.ComboBox combo_type;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.GroupBox groupBox_google;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Panel panel1;
    }
}

