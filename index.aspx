<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Campo1" runat="server" />
            <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                <br/><br/>
            <asp:Label Text="Campo2" runat="server" />
            <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
        </div>
        <br/>
        <asp:Button ID="btnGravar" runat="server" Text="Gravar" OnClick="btnGravar_Click" />
        <br/><br/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="txt1" HeaderText="txt1" SortExpression="txt1" />
                <asp:BoundField DataField="txt2" HeaderText="txt2" SortExpression="txt2" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TESTE1ConnectionString %>" DeleteCommand="DELETE FROM [tblProva] WHERE [id] = @original_id AND (([txt1] = @original_txt1) OR ([txt1] IS NULL AND @original_txt1 IS NULL)) AND (([txt2] = @original_txt2) OR ([txt2] IS NULL AND @original_txt2 IS NULL))" InsertCommand="INSERT INTO [tblProva] ([txt1], [txt2]) VALUES (@txt1, @txt2)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProva]" UpdateCommand="UPDATE [tblProva] SET [txt1] = @txt1, [txt2] = @txt2 WHERE [id] = @original_id AND (([txt1] = @original_txt1) OR ([txt1] IS NULL AND @original_txt1 IS NULL)) AND (([txt2] = @original_txt2) OR ([txt2] IS NULL AND @original_txt2 IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_txt1" Type="String" />
                <asp:Parameter Name="original_txt2" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="txt1" Type="String" />
                <asp:Parameter Name="txt2" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="txt1" Type="String" />
                <asp:Parameter Name="txt2" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_txt1" Type="String" />
                <asp:Parameter Name="original_txt2" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
    </body>
</html>
