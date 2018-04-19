using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.Common;

using MySql.Data.MySqlClient;

namespace SafeGirls
{
    public class ObjectQuery
    {
        private MySqlConnection connection;
        private MySqlCommand command;
        private string connectionString = "server=localhost;userid=root;password=1234;database=safegirls";

        public ObjectQuery()
        {
            connection = new MySqlConnection(connectionString);
            connection.ConnectionString = connectionString;

            command = new MySqlCommand();
            command.Connection = connection;
        }

        public string CommandText
        {
            get { return command.CommandText; }
            set { command.CommandText = value; }
        }

        public CommandType CommandType
        {
            get { return command.CommandType; }
            set { command.CommandType = value; }
        }

        public DbDataReader ExecuteQuery()
        {
            connection.Open();
            return command.ExecuteReader(CommandBehavior.CloseConnection);
        }

        public int ExecuteNonQuery()
        {
            connection.Open();
            int linhas = command.ExecuteNonQuery();
            connection.Close();
            return linhas;
        }

        public void SetParameter(string nome, object valor)
        {
            DbParameter parameter = command.CreateParameter();
            parameter.ParameterName = nome;
            parameter.Value = valor;

            command.Parameters.Add(parameter);
        }


        public void ClearParameter()
        {
            command.Parameters.Clear();
        }
    }
}