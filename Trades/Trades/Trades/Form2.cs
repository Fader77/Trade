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
    public partial class FormProduct : Form
    {
        public FormProduct()
        {
            InitializeComponent();
        }

        private void BtExit_Click(object sender, EventArgs e)
        {
            FormAvtorization frmm = new FormAvtorization();
            frmm.Show();
            Hide();
            ClassId.ID_user = 0;
        }

        private void FormOrder_Load(object sender, EventArgs e)
        {
            try
            {
                if (ClassId.ID_user == 1)
                {
                    BtExit.Text = "Выйти из аккаунта";
                }
                else if (ClassId.ID_user == 0)
                {
                    BtExit.Text = "Ввойти в аккаунт";
                }
                SqlConnection con = new SqlConnection(Properties.Settings.Default.Connect);
                DataSet dataset = new DataSet();
                SqlCommand command = new SqlCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "CheckOrder";
                command.Connection = con;
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(dataset);
                DgwProduct.DataSource = dataset.Tables[0];

                if (DgwProduct.DataSource != null)
                {
                    DgwProduct.Columns[0].Visible = false;
                }
                DgwProduct.Columns[1].HeaderText = "Артикул товара";
                DgwProduct.Columns[2].HeaderText = "Наименование";
                DgwProduct.Columns[3].HeaderText = "Единица измерения";
                DgwProduct.Columns[4].HeaderText = "Стоимость";
                DgwProduct.Columns[5].HeaderText = "Размер максимально возможной скидки";
                DgwProduct.Columns[6].HeaderText = "Производитель";
                DgwProduct.Columns[7].HeaderText = "Поставщик";
                DgwProduct.Columns[8].HeaderText = "Категория товара";
                DgwProduct.Columns[9].HeaderText = "Действующая скидка";
                DgwProduct.Columns[10].HeaderText = "Кол-во на складе";
                DgwProduct.Columns[11].HeaderText = "Описание";
                DgwProduct.Columns[12].HeaderText = "Изображение";
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
