<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CtrUsuarios.aspx.cs" Inherits="AspLicores.pags.CtrUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <table style="width: 100%">
        <tr>
            <td style="width: 503px; background-color: #0099CC;">Escriba el nombre de usuario o cedula:&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 503px; background-color: #0099CC;">
                <asp:TextBox ID="TextBox1" runat="server" Width="243px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Button" Width="119px" />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="178px" Width="506px">
                    <Columns>
                        <asp:BoundField HeaderText="Nombre" />
                        <asp:BoundField HeaderText="Cedula" />
                        <asp:BoundField HeaderText="Tipo" />
                        <asp:ButtonField ButtonType="Image" HeaderText="ELIMINAR" ImageUrl="~/img/cross.png" Text="Button" />
                        <asp:ButtonField ButtonType="Image" HeaderText="EDITAR" ImageUrl="~/img/lapiz.png" Text="EDITAR" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 503px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
