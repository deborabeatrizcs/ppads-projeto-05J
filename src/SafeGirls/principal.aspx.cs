using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SafeGirls
{
    public partial class principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void cmdGravar_Click(object sender, EventArgs e)
        {
            try
            {
                Denuncia denuncia = new Denuncia();
                DenunciaRepository denunciaRepository = new DenunciaRepository();

                denuncia.denuncia = txtDenuncia.Text.Trim();
                denuncia.data_ocorrido = txtDataOcorrido.Text.Trim();
                denuncia.local = txtLocal.Text.Trim();

                if (String.IsNullOrEmpty(denuncia.denuncia) ||
                    String.IsNullOrEmpty(denuncia.data_ocorrido) ||
                    String.IsNullOrEmpty(denuncia.local))
                {

                    ModelState.AddModelError("LoginInvalido", "Preencha todos os campos");
                    erromodal.Visible = true;
                    return;
                }

                denunciaRepository.Inserir(denuncia);

                txtDenuncia.Text = "";
                txtDataOcorrido.Text = "";
                txtLocal.Text = "";

                sucessomodal.Visible = true;
                ModelState.AddModelError("", "Denúncias cadastrada com sucesso!");
            }
            catch (Exception err)
            {
                ModelState.AddModelError("", err.ToString());
                erromodal.Visible = true;
            }
        }
    }
}