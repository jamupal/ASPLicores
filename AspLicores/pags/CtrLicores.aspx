<%@ Page Title="Administrar Licores" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CtrLicores.aspx.cs" Inherits="AspLicores.pags.CtrLicores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <form>
        <div class="row">
            <div class="col-md-3">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="ID del Producto">
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
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
                                </td>
                                </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Precio"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> 
                                </td>
                                </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Cantidad"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Btn_Guardar" runat="server" Text="Guardar" class="btn btn-primary"/>
                                </td>
                                <td></td>
                                <td>
                                    <asp:Button ID="Btn_Actualizar" runat="server" Text="Actualizar" class="btn btn-primary"/>
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
                    <asp:BoundField HeaderText="ID" />
                    <asp:BoundField HeaderText="Nombre" />
                    <asp:BoundField HeaderText="Precio" />
                    <asp:BoundField HeaderText="Cantidad" />
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
