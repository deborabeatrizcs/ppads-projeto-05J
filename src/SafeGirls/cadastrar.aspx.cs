using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SafeGirls
{
    public partial class cadastrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdRegistrar_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            UsuarioRepository usuarioRepository = new UsuarioRepository();

            try
            {

                usuario.login = txtEmail.Text.Trim();
                usuario.senha = txtSenha.Text.Trim();
                usuario.idade = txtIdade.Text.Trim();
                usuario.nome = txtNome.Text.Trim();
                usuario.sobrenome = txtSobrenome.Text.Trim();

                if (usuario.senha != txtConfirmarSenha.Text.Trim())
                {
                    ModelState.AddModelError("LoginInvalido", "Senha e confirmação de senha devem ser iguais!");
                    erromodal.Visible = true;

                    return;
                }


                if (String.IsNullOrEmpty(usuario.login) ||
                    String.IsNullOrEmpty(usuario.senha) ||
                    String.IsNullOrEmpty(usuario.idade) ||
                    String.IsNullOrEmpty(usuario.nome) ||
                    String.IsNullOrEmpty(usuario.sobrenome))
                {
                    ModelState.AddModelError("LoginInvalido", "Preencha todos os dados para efetuar o registro!");
                    erromodal.Visible = true;

                    return;
                }

                usuario.senha = "";

                if (usuarioRepository.VerificaLogin(usuario))
                {

                    ModelState.AddModelError("LoginInvalido", "Email já existente, utilize outro!");
                    erromodal.Visible = true;

                    return;
                }

                usuario.senha = txtSenha.Text.Trim();

                usuarioRepository.Inserir(usuario);


                Response.Redirect("principal.aspx");

            }
            catch (Exception err)
            {
                ModelState.AddModelError("", err.ToString());
                erromodal.Visible = true;
            }
        }
    }
}