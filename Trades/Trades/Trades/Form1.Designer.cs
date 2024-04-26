namespace Trades
{
    partial class FormAvtorization
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.Txtpn = new System.Windows.Forms.Panel();
            this.PcbLogo = new System.Windows.Forms.PictureBox();
            this.LbName = new System.Windows.Forms.Label();
            this.PnButon = new System.Windows.Forms.Panel();
            this.BtVxodGues = new System.Windows.Forms.Button();
            this.BtVxod = new System.Windows.Forms.Button();
            this.TbLogin = new System.Windows.Forms.TextBox();
            this.TbPassword = new System.Windows.Forms.TextBox();
            this.LbLogin = new System.Windows.Forms.Label();
            this.LbPassword = new System.Windows.Forms.Label();
            this.CbZapomnit = new System.Windows.Forms.CheckBox();
            this.CbPokazPassword = new System.Windows.Forms.CheckBox();
            this.Txtpn.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PcbLogo)).BeginInit();
            this.PnButon.SuspendLayout();
            this.SuspendLayout();
            // 
            // Txtpn
            // 
            this.Txtpn.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.Txtpn.Controls.Add(this.PcbLogo);
            this.Txtpn.Controls.Add(this.LbName);
            this.Txtpn.Location = new System.Drawing.Point(0, 0);
            this.Txtpn.Name = "Txtpn";
            this.Txtpn.Size = new System.Drawing.Size(434, 130);
            this.Txtpn.TabIndex = 0;
            // 
            // PcbLogo
            // 
            this.PcbLogo.Image = global::Trades.Properties.Resources.logo;
            this.PcbLogo.Location = new System.Drawing.Point(287, 0);
            this.PcbLogo.Name = "PcbLogo";
            this.PcbLogo.Size = new System.Drawing.Size(147, 130);
            this.PcbLogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.PcbLogo.TabIndex = 1;
            this.PcbLogo.TabStop = false;
            // 
            // LbName
            // 
            this.LbName.AutoSize = true;
            this.LbName.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.LbName.Location = new System.Drawing.Point(12, 47);
            this.LbName.Name = "LbName";
            this.LbName.Size = new System.Drawing.Size(154, 26);
            this.LbName.TabIndex = 0;
            this.LbName.Text = "ООО «Посуда»";
            // 
            // PnButon
            // 
            this.PnButon.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.PnButon.Controls.Add(this.BtVxodGues);
            this.PnButon.Controls.Add(this.BtVxod);
            this.PnButon.Location = new System.Drawing.Point(0, 344);
            this.PnButon.Name = "PnButon";
            this.PnButon.Size = new System.Drawing.Size(434, 119);
            this.PnButon.TabIndex = 1;
            // 
            // BtVxodGues
            // 
            this.BtVxodGues.Font = new System.Drawing.Font("Comic Sans MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.BtVxodGues.Location = new System.Drawing.Point(117, 74);
            this.BtVxodGues.Name = "BtVxodGues";
            this.BtVxodGues.Size = new System.Drawing.Size(212, 31);
            this.BtVxodGues.TabIndex = 1;
            this.BtVxodGues.Text = "Ввойти как гость";
            this.BtVxodGues.UseVisualStyleBackColor = true;
            this.BtVxodGues.Click += new System.EventHandler(this.BtVxodGues_Click);
            // 
            // BtVxod
            // 
            this.BtVxod.Font = new System.Drawing.Font("Comic Sans MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.BtVxod.Location = new System.Drawing.Point(145, 20);
            this.BtVxod.Name = "BtVxod";
            this.BtVxod.Size = new System.Drawing.Size(159, 48);
            this.BtVxod.TabIndex = 0;
            this.BtVxod.Text = "Ввойти";
            this.BtVxod.UseVisualStyleBackColor = true;
            this.BtVxod.Click += new System.EventHandler(this.BtVxod_Click);
            // 
            // TbLogin
            // 
            this.TbLogin.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.TbLogin.Location = new System.Drawing.Point(117, 178);
            this.TbLogin.Name = "TbLogin";
            this.TbLogin.Size = new System.Drawing.Size(212, 26);
            this.TbLogin.TabIndex = 2;
            // 
            // TbPassword
            // 
            this.TbPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.TbPassword.Location = new System.Drawing.Point(117, 250);
            this.TbPassword.Name = "TbPassword";
            this.TbPassword.Size = new System.Drawing.Size(212, 26);
            this.TbPassword.TabIndex = 3;
            this.TbPassword.UseSystemPasswordChar = true;
            // 
            // LbLogin
            // 
            this.LbLogin.AutoSize = true;
            this.LbLogin.Font = new System.Drawing.Font("Comic Sans MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.LbLogin.Location = new System.Drawing.Point(113, 152);
            this.LbLogin.Name = "LbLogin";
            this.LbLogin.Size = new System.Drawing.Size(48, 23);
            this.LbLogin.TabIndex = 4;
            this.LbLogin.Text = "Login";
            // 
            // LbPassword
            // 
            this.LbPassword.AutoSize = true;
            this.LbPassword.Font = new System.Drawing.Font("Comic Sans MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.LbPassword.Location = new System.Drawing.Point(113, 224);
            this.LbPassword.Name = "LbPassword";
            this.LbPassword.Size = new System.Drawing.Size(76, 23);
            this.LbPassword.TabIndex = 5;
            this.LbPassword.Text = "Password";
            // 
            // CbZapomnit
            // 
            this.CbZapomnit.AutoSize = true;
            this.CbZapomnit.Font = new System.Drawing.Font("Comic Sans MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.CbZapomnit.Location = new System.Drawing.Point(117, 282);
            this.CbZapomnit.Name = "CbZapomnit";
            this.CbZapomnit.Size = new System.Drawing.Size(155, 27);
            this.CbZapomnit.TabIndex = 6;
            this.CbZapomnit.Text = "Запомнить меня";
            this.CbZapomnit.UseVisualStyleBackColor = true;
            this.CbZapomnit.CheckedChanged += new System.EventHandler(this.CbZapomnit_CheckedChanged);
            // 
            // CbPokazPassword
            // 
            this.CbPokazPassword.AutoSize = true;
            this.CbPokazPassword.Font = new System.Drawing.Font("Comic Sans MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.CbPokazPassword.Location = new System.Drawing.Point(117, 311);
            this.CbPokazPassword.Name = "CbPokazPassword";
            this.CbPokazPassword.Size = new System.Drawing.Size(159, 27);
            this.CbPokazPassword.TabIndex = 7;
            this.CbPokazPassword.Text = "Показать пароль";
            this.CbPokazPassword.UseVisualStyleBackColor = true;
            this.CbPokazPassword.CheckedChanged += new System.EventHandler(this.CbPokazPassword_CheckedChanged);
            // 
            // FormAvtorization
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(434, 461);
            this.Controls.Add(this.CbPokazPassword);
            this.Controls.Add(this.CbZapomnit);
            this.Controls.Add(this.LbPassword);
            this.Controls.Add(this.LbLogin);
            this.Controls.Add(this.TbPassword);
            this.Controls.Add(this.TbLogin);
            this.Controls.Add(this.PnButon);
            this.Controls.Add(this.Txtpn);
            this.MaximizeBox = false;
            this.Name = "FormAvtorization";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ООО «Посуда»";
            this.Txtpn.ResumeLayout(false);
            this.Txtpn.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PcbLogo)).EndInit();
            this.PnButon.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel Txtpn;
        private System.Windows.Forms.PictureBox PcbLogo;
        private System.Windows.Forms.Label LbName;
        private System.Windows.Forms.Panel PnButon;
        private System.Windows.Forms.Button BtVxodGues;
        private System.Windows.Forms.Button BtVxod;
        private System.Windows.Forms.TextBox TbLogin;
        private System.Windows.Forms.TextBox TbPassword;
        private System.Windows.Forms.Label LbLogin;
        private System.Windows.Forms.Label LbPassword;
        private System.Windows.Forms.CheckBox CbZapomnit;
        private System.Windows.Forms.CheckBox CbPokazPassword;
    }
}

