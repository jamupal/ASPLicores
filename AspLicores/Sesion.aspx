<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalSesion.Master" AutoEventWireup="true" CodeBehind="Sesion.aspx.cs" Inherits="AspLicores.Sesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>IINSTRUCCIONES</h1>
        <p class="lead">Por favor continúe dando click en el area <strong>Registro</strong> o ingrese en el area de <strong>Log in</strong></p>
        <p><a href="/Account/Register" class="btn btn-primary btn-lg">Registro &raquo;</a>&nbsp;<a href="/Account/Login" class="btn btn-primary btn-lg">Login &raquo;</a></p>
        <asp:Label ID="lblMensaje" runat="server" CssClass="label label-success"></asp:Label>
    </div>
    
</asp:Content>
