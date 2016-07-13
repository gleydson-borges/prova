using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
   
    }

    protected void btnGravar_Click(object sender, EventArgs e)
    {
        Conexao c = new Conexao();
        c.conectar();
        string sql = "INSERT INTO tblProva (txt1,txt2) values (@txt1, @txt2)";
        c.command.CommandText = sql;
        c.command.Parameters.Add("@txt1", SqlDbType.VarChar).Value = txt1.Text;
        c.command.Parameters.Add("@txt2", SqlDbType.VarChar).Value = txt2.Text;
        c.command.ExecuteNonQuery();
        c.desconectar();

        Response.Write("<script>alert('Dados Salvos com sucesso')" +
                       ";top.document.location='index.aspx'</script>");


    }
}