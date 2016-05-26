<%@ Page Title="Seleccione una operación" Language="C#" MasterPageFile="~/pags/Admin.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="AspLicores.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 401px">
    <table class="nav-justified">
        <tr>
            <td style="height: 177px; margin-left: 40px">
                <asp:Button ID="Button10" runat="server" CssClass="alert-success" Height="200px" OnClick="Page_Load" Text="Usuarios" Width="200px" style="background: url('../../img/User_icon.png');" PostBackUrl="~/pags/CtrUsuarios.aspx" />
            </td>
            <td style="height: 177px">
                <asp:Button ID="Button11" runat="server" CssClass="btn-default disabled active" Height="200px" Text="Productos" Width="200px" style="background: url('../../img/productos.png');" PostBackUrl="~/pags/CtrLicores.aspx" />
            </td>
        </tr>
        <tr>
            <td style="height: 177px">
                <asp:Button ID="Button12" runat="server" Height="200px" Text="Generar Exporte" Width="200px" style="background: url('../../img/exportar_datos.png');"/>
            </td>
            <td style="height: 177px">
                <asp:Button ID="Button13" runat="server" CssClass="alert-danger" Height="200px" Text="Administrador" Width="200px" style="background: url('../../img/Duff_Man.png');" Enabled="False" />
            </td>
        </tr>
    </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
