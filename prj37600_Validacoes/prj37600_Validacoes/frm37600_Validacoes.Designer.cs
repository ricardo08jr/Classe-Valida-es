namespace prj37600_Validacoes
{
    partial class frm37600_Validacoes
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnValidar = new System.Windows.Forms.Button();
            this.lblValidacao = new System.Windows.Forms.Label();
            this.lblSituacao = new System.Windows.Forms.Label();
            this.cmbValidacoes = new System.Windows.Forms.ComboBox();
            this.txtValidar = new System.Windows.Forms.MaskedTextBox();
            this.SuspendLayout();
            // 
            // btnValidar
            // 
            this.btnValidar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnValidar.Location = new System.Drawing.Point(206, 58);
            this.btnValidar.Name = "btnValidar";
            this.btnValidar.Size = new System.Drawing.Size(114, 29);
            this.btnValidar.TabIndex = 1;
            this.btnValidar.Text = "Validar";
            this.btnValidar.UseVisualStyleBackColor = true;
            this.btnValidar.Click += new System.EventHandler(this.btnValidar_Click);
            // 
            // lblValidacao
            // 
            this.lblValidacao.AutoSize = true;
            this.lblValidacao.Location = new System.Drawing.Point(22, 15);
            this.lblValidacao.Name = "lblValidacao";
            this.lblValidacao.Size = new System.Drawing.Size(35, 13);
            this.lblValidacao.TabIndex = 2;
            this.lblValidacao.Text = "label1";
            // 
            // lblSituacao
            // 
            this.lblSituacao.AutoSize = true;
            this.lblSituacao.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSituacao.Location = new System.Drawing.Point(21, 54);
            this.lblSituacao.Name = "lblSituacao";
            this.lblSituacao.Size = new System.Drawing.Size(82, 24);
            this.lblSituacao.TabIndex = 3;
            this.lblSituacao.Text = "Situação";
            // 
            // cmbValidacoes
            // 
            this.cmbValidacoes.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbValidacoes.FormattingEnabled = true;
            this.cmbValidacoes.Items.AddRange(new object[] {
            "Cartão de Crédito",
            "CNH",
            "CNPJ",
            "CPF",
            "PisPasep",
            "RG",
            "Titulo Eleitor"});
            this.cmbValidacoes.Location = new System.Drawing.Point(206, 31);
            this.cmbValidacoes.Name = "cmbValidacoes";
            this.cmbValidacoes.Size = new System.Drawing.Size(114, 21);
            this.cmbValidacoes.TabIndex = 4;
            this.cmbValidacoes.SelectedIndexChanged += new System.EventHandler(this.cmbValidacoes_SelectedIndexChanged);
            // 
            // txtValidar
            // 
            this.txtValidar.Location = new System.Drawing.Point(25, 31);
            this.txtValidar.Name = "txtValidar";
            this.txtValidar.Size = new System.Drawing.Size(175, 20);
            this.txtValidar.TabIndex = 5;
            this.txtValidar.TextMaskFormat = System.Windows.Forms.MaskFormat.ExcludePromptAndLiterals;
            this.txtValidar.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtValidar_KeyPress);
            // 
            // frm37600_Validacoes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(337, 96);
            this.Controls.Add(this.txtValidar);
            this.Controls.Add(this.cmbValidacoes);
            this.Controls.Add(this.lblSituacao);
            this.Controls.Add(this.lblValidacao);
            this.Controls.Add(this.btnValidar);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frm37600_Validacoes";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "37600";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frm37600_Validacoes_FormClosing);
            this.Load += new System.EventHandler(this.frm37600_Validacoes_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnValidar;
        private System.Windows.Forms.Label lblValidacao;
        private System.Windows.Forms.Label lblSituacao;
        private System.Windows.Forms.ComboBox cmbValidacoes;
        private System.Windows.Forms.MaskedTextBox txtValidar;
    }
}

