using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Trades
{
    public partial class FormAvtorization : Form
    {
        public FormAvtorization()
        {
            InitializeComponent();
            TbPassword.Text = Properties.Settings.Default.Save_password;
            TbLogin.Text = Properties.Settings.Default.Save_login;
        }

        private void BtVxod_Click(object sender, EventArgs e)
        {
            try
            {
                if (Properties.Settings.Default.Save_password != "" || Properties.Settings.Default.Save_login != "")
                {
                    CbZapomnit.Checked = true;
                }
                SqlConnection connect = new SqlConnection(Properties.Settings.Default.Connect);
                string Login = TbLogin.Text.Trim();
                string Password = TbPassword.Text.Trim();
                connect.Open();
                SqlCommand command = new SqlCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "CheckUser";
                command.Parameters.AddWithValue("@Login", Login);
                command.Parameters.AddWithValue("@Password", Password);
                command.Connection = connect;
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        ClassId.ID_user = reader.GetInt32(0);
                        ClassId.ID_role = reader.GetInt32(1);
                        if (ClassId.ID_role == 3)
                        {
                            MessageBox.Show("вы успешно вошли как пользователь");
                            FormProduct frmm = new FormProduct();
                            frmm.Show();
                            Hide();
                        }
                        else if (ClassId.ID_role == 2)
                        {
                            MessageBox.Show(" вы успешно вошли как менеджер");
                            FormProduct frmm = new FormProduct();
                            frmm.Show();
                            Hide();
                        }
                        else if (ClassId.ID_role == 1)
                        {
                            MessageBox.Show("Извините, окно администратора еще в разработке");
                        }
                    }
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void BtVxodGues_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Вы вошли как гость");
            FormProduct fm = new FormProduct();
            fm.Show();
            Hide();
        }

        private void CbZapomnit_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                Properties.Settings.Default.Save_password = TbPassword.Text;
                Properties.Settings.Default.Save();

                Properties.Settings.Default.Save_login = TbLogin.Text;
                Properties.Settings.Default.Save();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void CbPokazPassword_CheckedChanged(object sender, EventArgs e)
        {
            if (CbPokazPassword.Checked)
            {
                TbPassword.UseSystemPasswordChar = false;
            }
            else if (!CbPokazPassword.Checked)
            {
                TbPassword.UseSystemPasswordChar = true;
            }
        }
    }
}
