using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjWebFormClass1
{
    public partial class Default : System.Web.UI.Page
    {

        public static List<Pessoa> pessoas = new List<Pessoa>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            Pessoa pessoa = new Pessoa();

            pessoa.Nome = txtname.Text;
            pessoa.Sexo = txtsexo.Text;
            pessoa.Idade = txtidade.Text;
            pessoa.Telefone = txtfone.Text;




            pessoas.Add(pessoa);

            LoadGrid();
        }

        private void LoadGrid()
        {
            TbCadastros.DataSource = pessoas;
            TbCadastros.DataBind();

        }
    }
}
