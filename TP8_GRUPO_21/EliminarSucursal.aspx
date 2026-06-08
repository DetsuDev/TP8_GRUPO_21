<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP8_GRUPO_21.EliminarSucursal" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 224px;
        }
        .auto-style3 {
            width: 144px;
            height: 23px;
        }
        .auto-style4 {
            width: 224px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 89px;
        }
        .auto-style7 {
            height: 23px;
            width: 89px;
        }
        .auto-style8 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style8">
                <tr>
                    <td style="text-align: center;">
                        <asp:HyperLink ID="hlAgregar" runat="server" NavigateUrl="AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td style="text-align: center;">
                        <asp:HyperLink ID="hlListado" runat="server" NavigateUrl="ListarSucursal.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td style="text-align: center;">
                        <asp:HyperLink ID="hlEliminar" runat="server" NavigateUrl="EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1" colspan="2" style="font-weight: bold; font-size: 20px;">Eliminar Sucursal</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Ingresar ID sucursal: </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtIdEliminar" runat="server" Width="215px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvIdEliminar" runat="server" ControlToValidate="txtIdEliminar" ErrorMessage="Ingrese un ID" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtIdEliminar" ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9,$]*$"></asp:RegularExpressionValidator>
                        <asp:RangeValidator 
                            ID="rvIdMayorACero" 
                            runat="server" 
                            ControlToValidate="txtIdEliminar" 
                            ErrorMessage="Ingrese un ID mayor a 0" 
                            ForeColor="Red" 
                            Type="Integer" 
                            MinimumValue="1" 
                            MaximumValue="9999999">
                        </asp:RangeValidator>
                        <asp:Label ID="lblMensajeEliminar" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>