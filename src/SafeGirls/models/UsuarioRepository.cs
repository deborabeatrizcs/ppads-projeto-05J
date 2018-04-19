using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using MySql.Data.MySqlClient;

namespace SafeGirls
{
    public class UsuarioRepository
    {
        private ObjectQuery objectQuery;

        public UsuarioRepository()
        {
            objectQuery = new ObjectQuery();
        }

        public bool VerificaLogin(Usuario usuario)
        {
            bool loginValido = false;
            StringBuilder query = new StringBuilder();
            MySqlDataReader dr = null;

            try
            {
                query.Append(" select * from usuarios ");
                query.Append(" where login = @login ");


                objectQuery.ClearParameter();
                if (!String.IsNullOrEmpty(usuario.senha))
                {
                    query.Append(" and senha = @senha ");
                    objectQuery.SetParameter("@senha", usuario.senha);
                }


                objectQuery.CommandText = query.ToString();

                objectQuery.SetParameter("@login", usuario.login);


                dr = (MySqlDataReader)objectQuery.ExecuteQuery();

                while (dr.Read())
                {
                    loginValido = true;
                }
            }
            finally
            {
                if (dr != null) dr.Close();
            }

            return loginValido;
        }

        public void Inserir(Usuario usuario)
        {
            StringBuilder query = new StringBuilder();

            query.Append(" insert into usuarios (nome, sobrenome, login, senha, idade) ");
            query.Append(" values(@nome, @sobrenome, @login, @senha, @idade) ");

            objectQuery.CommandText = query.ToString();

            objectQuery.ClearParameter();
            objectQuery.SetParameter("@nome", usuario.nome);
            objectQuery.SetParameter("@sobrenome", usuario.sobrenome);
            objectQuery.SetParameter("@login", usuario.login);
            objectQuery.SetParameter("@senha", usuario.senha);
            objectQuery.SetParameter("@idade", usuario.idade);

            objectQuery.ExecuteNonQuery();
        }

    }
}