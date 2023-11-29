using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace prj37600_Validacoes
{
    public partial class frm37600_Validacoes : Form
    {
        public frm37600_Validacoes()
        {
            InitializeComponent();
        }

        #region Form Closing
        private void frm37600_Validacoes_FormClosing(object sender, FormClosingEventArgs e)
        {
            if(MessageBox.Show("Deseja Sair","Sair",MessageBoxButtons.YesNo,MessageBoxIcon.Question , MessageBoxDefaultButton.Button2) == DialogResult.No)
            {
                e.Cancel = true;
            }
        }
        #endregion

        #region Form Load
        private void frm37600_Validacoes_Load(object sender, EventArgs e)
        {
            cmbValidacoes.SelectedIndex = 0;
            lblValidacao.Text = cmbValidacoes.Text;
            KeyPreview = true;
        }
        #endregion

        #region Combo box Changed
        private void cmbValidacoes_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblValidacao.Text = cmbValidacoes.Text;
            lblSituacao.Text = "Situação";
            lblSituacao.ForeColor = Color.Black;
        }
        #endregion

        #region Button Validar
        private void btnValidar_Click(object sender, EventArgs e)
        {
            bool valido = false;

            if (String.IsNullOrEmpty(txtValidar.Text))
            {
                MessageBox.Show("Digite Alguma coisa", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

          

            switch (cmbValidacoes.SelectedIndex)
            {
                case 0:
                    valido = Cls37600Validacoes.Credito(txtValidar.Text);
                    break;
                case 1:
                    valido = Cls37600Validacoes.CNH(txtValidar.Text);
                    break;
                case 2:
                    valido = Cls37600Validacoes.CNPJ(txtValidar.Text);
                    break;
                case 3:
                    valido = Cls37600Validacoes.CPF(txtValidar.Text);
                    break;
                case 4:
                    valido = Cls37600Validacoes.PisPasep(txtValidar.Text);
                    break;
                case 5:
                    valido = Cls37600Validacoes.RG(txtValidar.Text);
                    break;
                case 6:
                    txtValidar.Text = txtValidar.Text.PadLeft(13, '0');
                    valido = Cls37600Validacoes.TituloEleitor(txtValidar.Text);
                    break;

            }

            if (valido)
            {
                lblSituacao.Text = "Válido";
                lblSituacao.ForeColor = Color.Green;
            }
            else
            {
                lblSituacao.Text = "Inválido";
                lblSituacao.ForeColor = Color.Red;
            }
        }
        #endregion

        #region Key Press
        private void txtValidar_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!((e.KeyChar> 47 && e.KeyChar<58) || e.KeyChar == 8))
            {
                e.KeyChar = Convert.ToChar(0);
            }
        }
        #endregion
    }
}
