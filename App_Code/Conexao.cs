using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Conexao
/// </summary>
public class Conexao
{
    public SqlConnection conexao;
    public SqlCommand command;

    string strConexao = "Server=DESKTOP-NP3INTM\\SQLEXPRESS; DataBase=TESTE1; user id=sa; password=123456;";

    public Conexao()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public void  conectar()
    {
        conexao = new SqlConnection(strConexao);
        conexao.Open();
        command = new SqlCommand();
        command.Connection = conexao;
    }
    public void desconectar()
    {
        conexao.Close();
        conexao = null;
        command = null;
    }
}