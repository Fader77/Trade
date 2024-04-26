namespace Trades
{
    partial class FormProduct
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.PnTxt = new System.Windows.Forms.Panel();
            this.PnBt = new System.Windows.Forms.Panel();
            this.DgwProduct = new System.Windows.Forms.DataGridView();
            this.LbName = new System.Windows.Forms.Label();
            this.PcbLogo = new System.Windows.Forms.PictureBox();
            this.PnInfo = new System.Windows.Forms.Panel();
            this.BtExit = new System.Windows.Forms.Button();
            this.PnTxt.SuspendLayout();
            this.PnBt.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DgwProduct)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.PcbLogo)).BeginInit();
            this.SuspendLayout();
            // 
            // PnTxt
            // 
            this.PnTxt.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.PnTxt.Controls.Add(this.BtExit);
            this.PnTxt.Controls.Add(this.LbName);
            this.PnTxt.Location = new System.Drawing.Point(0, 0);
            this.PnTxt.Name = "PnTxt";
            this.PnTxt.Size = new System.Drawing.Size(800, 130);
            this.PnTxt.TabIndex = 1;
            // 
            // PnBt
            // 
            this.PnBt.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.PnBt.Controls.Add(this.PnInfo);
            this.PnBt.Controls.Add(this.PcbLogo);
            this.PnBt.Location = new System.Drawing.Point(0, 396);
            this.PnBt.Name = "PnBt";
            this.PnBt.Size = new System.Drawing.Size(800, 130);
            this.PnBt.TabIndex = 2;
            // 
            // DgwProduct
            // 
            this.DgwProduct.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Sunken;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.TopCenter;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.DgwProduct.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.DgwProduct.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.TopCenter;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.DgwProduct.DefaultCellStyle = dataGridViewCellStyle2;
            this.DgwProduct.EnableHeadersVisualStyles = false;
            this.DgwProduct.Location = new System.Drawing.Point(0, 129);
            this.DgwProduct.Name = "DgwProduct";
            this.DgwProduct.ReadOnly = true;
            this.DgwProduct.RowHeadersVisible = false;
            this.DgwProduct.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.DgwProduct.Size = new System.Drawing.Size(800, 271);
            this.DgwProduct.TabIndex = 3;
            this.DgwProduct.VirtualMode = true;
            // 
            // LbName
            // 
            this.LbName.AutoSize = true;
            this.LbName.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.LbName.Location = new System.Drawing.Point(634, 49);
            this.LbName.Name = "LbName";
            this.LbName.Size = new System.Drawing.Size(154, 26);
            this.LbName.TabIndex = 1;
            this.LbName.Text = "ООО «Посуда»";
            // 
            // PcbLogo
            // 
            this.PcbLogo.Image = global::Trades.Properties.Resources.logo;
            this.PcbLogo.Location = new System.Drawing.Point(0, 3);
            this.PcbLogo.Name = "PcbLogo";
            this.PcbLogo.Size = new System.Drawing.Size(147, 124);
            this.PcbLogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.PcbLogo.TabIndex = 2;
            this.PcbLogo.TabStop = false;
            // 
            // PnInfo
            // 
            this.PnInfo.Location = new System.Drawing.Point(288, 3);
            this.PnInfo.Name = "PnInfo";
            this.PnInfo.Size = new System.Drawing.Size(281, 124);
            this.PnInfo.TabIndex = 3;
            // 
            // BtExit
            // 
            this.BtExit.Font = new System.Drawing.Font("Comic Sans MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.BtExit.Location = new System.Drawing.Point(12, 12);
            this.BtExit.Name = "BtExit";
            this.BtExit.Size = new System.Drawing.Size(178, 34);
            this.BtExit.TabIndex = 2;
            this.BtExit.Text = "Выйти из аккаунта";
            this.BtExit.UseVisualStyleBackColor = true;
            this.BtExit.Click += new System.EventHandler(this.BtExit_Click);
            // 
            // FormProduct
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 523);
            this.Controls.Add(this.DgwProduct);
            this.Controls.Add(this.PnBt);
            this.Controls.Add(this.PnTxt);
            this.MaximizeBox = false;
            this.Name = "FormProduct";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ООО «Посуда»";
            this.Load += new System.EventHandler(this.FormOrder_Load);
            this.PnTxt.ResumeLayout(false);
            this.PnTxt.PerformLayout();
            this.PnBt.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.DgwProduct)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.PcbLogo)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel PnTxt;
        private System.Windows.Forms.Panel PnBt;
        private System.Windows.Forms.DataGridView DgwProduct;
        private System.Windows.Forms.Label LbName;
        private System.Windows.Forms.Button BtExit;
        private System.Windows.Forms.Panel PnInfo;
        private System.Windows.Forms.PictureBox PcbLogo;
    }
}