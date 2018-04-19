using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SafeGirls
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            erromodal.Visible = false;
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void cmdEntrar_Click(object sender, EventArgs e)
        {
            Usuario usuario = null;

            try
            {

                usuario = new Usuario();
                usuario.login = txtLogin.Text;
                usuario.senha = txtSenha.Text;

                if (new UsuarioRepository().VerificaLogin(usuario))
                {
                    Response.Redirect("principal.aspx");
                }
                else
                {
                    ModelState.AddModelError("LoginInvalido", "Usuário ou senha inválidos");
                    erromodal.Visible = true;
                }

            }
            catch (Exception err)
            {
                ModelState.AddModelError("", err.ToString());
                erromodal.Visible = true;
            }
        }
    }
}