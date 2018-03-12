﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FiltraDataPasta._default" %>

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
                <asp:GridView ID="gvFiles" CellPadding="4" runat="server" AutoGenerateColumns="False" GridLines="None" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Text" HeaderText="Nom do Arquivo" >
                        <ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Tipo" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="true" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
        </form>
    </div>
</body>
</html>
