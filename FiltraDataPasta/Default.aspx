<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FiltraDataPasta._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="scripts/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="label">Path:  C:/</label>
                <asp:TextBox ID="txtPath" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="label">Data:</label>                
                <asp:TextBox ID="txtData" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnProcessar" runat="server" Text="Processar" OnClick="btnProcessar_Click" class="btn btn-default" />
            </div>            
            <div class="form-group">
                <asp:GridView ID="gvFiles" CellPadding="3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Text" HeaderText="FileName" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="true" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
        </form>
    </div>
</body>
</html>
