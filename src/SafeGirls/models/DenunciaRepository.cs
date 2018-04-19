using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using MySql.Data.MySqlClient;

namespace SafeGirls
{
    public class DenunciaRepository
    {
        private ObjectQuery objectQuery;

        public DenunciaRepository()
        {
            objectQuery = new ObjectQuery();
        }

        public void Inserir(Denuncia denuncia)
        {
            StringBuilder query = new StringBuilder();

            query.Append(" insert into denuncias (denuncia, data_ocorrido, local) ");
            query.Append(" values(@denuncia, @data_ocorrido, @local) ");

            objectQuery.CommandText = query.ToString();

            objectQuery.ClearParameter();
            objectQuery.SetParameter("@denuncia", denuncia.denuncia);
            objectQuery.SetParameter("@data_ocorrido", denuncia.data_ocorrido);
            objectQuery.SetParameter("@local", denuncia.local);

            objectQuery.ExecuteNonQuery();
        }


        public List<Denuncia> Listar()
        {
            StringBuilder query = new StringBuilder();
            MySqlDataReader dr = null;
            Denuncia denuncia = null;
            List<Denuncia> arrDenuncias = new List<Denuncia>();

            try
            {
                query.Append(" select * from denuncias ");

                objectQuery.CommandText = query.ToString();

                dr = (MySqlDataReader)objectQuery.ExecuteQuery();

                while (dr.Read())
                {
                    denuncia = new Denuncia();
                    denuncia.codigo = Convert.ToInt32(dr["codigo"].ToString());
                    denuncia.denuncia = dr["denuncia"].ToString();
                    denuncia.data_ocorrido = dr["data_ocorrido"].ToString();
                    denuncia.local = dr["local"].ToString();

                    arrDenuncias.Add(denuncia);
                }
            }
            finally
            {
                if (dr != null) dr.Close();
            }

            return arrDenuncias;
        }
    }
}