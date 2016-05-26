<%@ Page Title="Crea tu cuenta de ASPLicores" Language="C#" MasterPageFile="~/PrincipalSesion.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AspLicores.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="row form-horizontal">
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" ID="Nombre" CssClass="col-md-2 control-label">Nombres</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Nombres" CssClass="form-control" type="text" MaxLength="200" required="required"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" ID="Direccion" CssClass="col-md-2 control-label">Direccion</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Direccion1" CssClass="form-control" type="text" MaxLength="100" required="required"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" ID="Email1" CssClass="col-md-2 control-label">Correo electrónico</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email2" CssClass="form-control" type="email" MaxLength="100" required="required" />
               
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" ID="Fecha_nacimiento" CssClass="col-md-2 control-label">Fecha de nacimiento</asp:Label>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="Fecha_nacimiento1" CssClass="form-control" TextMode="Date" required="required"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" ID="telefono" CssClass="col-md-2 control-label">Telefono</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="telefono1" CssClass="form-control" TextMode="Phone" MaxLength="50" required="required"/>
            </div>
        </div>
            <div class="form-group">
            <asp:Label runat="server" ID="tarjetaCredito" CssClass="col-md-2 control-label">Numero de Tarjeta de Credito</asp:Label>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="tarjetaCredito1" CssClass="form-control" MaxLength="50" TextMode="Number" requiered="requiered"/>
            </div>
        </div>
           <div class="form-group">
            <asp:Label runat="server" ID="username" CssClass="col-md-2 control-label">Nombre Usuario</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="username1" CssClass="form-control" MaxLength="100" Type="text" requiered="requiered"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Contraseña</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="El campo de contraseña es obligatorio." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirmar contraseña</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="El campo de confirmación de contraseña es obligatorio." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="La contraseña y la contraseña de confirmación no coinciden." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Registrarse" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
