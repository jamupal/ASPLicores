<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CtrUsuarios.aspx.cs" Inherits="AspLicores.pags.CtrUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <form>
        <div class="row">
            <div class="col-md-3">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Cedula">
                    <span class="input-group-btn">
                        <asp:Button class="btn btn-default" type="button">Consultar</asp:Button>
                    </span>
                </div>
            </div>
            <div>&nbsp</div>
            <div>&nbsp</div>
            <div class="col-md-6">
                <asp:Button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">Nuevo
                </asp:Button>
                <div class="collapse" id="collapseExample">
                    <div class="well">
                        <table>
                            <!--col inicio-->
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <!--col cierre-->
                            <!--col inicio-->
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Cedula"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="F. Nacimiento"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <!--col cierre-->
                            <!--col inicio-->
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Dirección"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Telefono"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <!--col cierre-->
                            <!--col inicio-->
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="T. Credito"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="User Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                </td>
                                </tr>
                               <!--col cierre-->
                             <!--col inicio-->
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text="Perfil"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                </td>
                                </tr>
                               <!--col cierre-->
                                <tr>
                                <td>
                                    <asp:Button ID="Btn_Guardar" runat="server" Text="Guardar" class="btn btn-primary" />
                                </td>
                                <td></td>
                                <td>
                                    <asp:Button ID="Btn_Actualizar" runat="server" Text="Actualizar" class="btn btn-primary" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div>&nbsp</div>
            <div>&nbsp</div>
        </div>
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" class="btn btn-primary" />
        </div>
        <div>&nbsp</div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="344px">
                <Columns>
                    <asp:BoundField HeaderText="Cedula" />
                    <asp:BoundField HeaderText="Nombre" />
                    <asp:BoundField HeaderText="Direccion" />
                    <asp:BoundField HeaderText="Email" />
                    <asp:BoundField HeaderText="Email" />
                    <asp:BoundField HeaderText="F. Nacimiento" />
                    <asp:BoundField HeaderText="Telefono" />
                    <asp:BoundField HeaderText="T. Credito" />
                    <asp:BoundField HeaderText="User Name" />
                    <asp:BoundField HeaderText="Password" />
                    <asp:BoundField HeaderText="Perfil" />
                    <asp:ButtonField ButtonType="Image" HeaderText="Eliminar" ImageUrl="~/img/cross.png" Text="Eliminar">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ButtonField>
                    <asp:ButtonField ButtonType="Image" HeaderText="Seleccionar" ImageUrl="~/img/check.png" Text="Seleccionar">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ButtonField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</asp:Content>
