using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SafeGirls
{
    public partial class denuncias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                CarregaLista();
            }
        }

        private void CarregaLista()
        {
            DenunciaRepository denuncia = new DenunciaRepository();
            listaDenuncias.DataSource = denuncia.Listar();
            listaDenuncias.DataBind();
        }

    }
}