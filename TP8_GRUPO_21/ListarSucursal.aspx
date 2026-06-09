<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursal.aspx.cs" Inherits="TP8_GRUPO_21.ListarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        html, body {
    overflow: auto !important;
    height: auto !important;
}
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {            height: 137px;
        }
        .auto-style5{
            width: 100%;
        }
        body{
    overflow: hidden;
    scrollbar-width: none;
    -ms-overflow-style: none;
}
body::-webkit-scrollbar {
    display: none;
}

        .auto-style6 {
            width: 209px;
        }
        .auto-style7 {
            width: 339px;
        }
        .auto-style8 {
            width: 666px;
        }

        .auto-style9 {
            width: 390px;
        }
        .auto-style10 {
            width: 242px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="myDiv">
            <table class="auto-style5">
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
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">Listado de Sucursales</td>
                    <td class="auto-style8" colspan="2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Busqueda ingrese Id sucursal</td>
                    <td class="auto-style10"> 
            <asp:TextBox ID="txtIdSucursal" runat="server"></asp:TextBox>
            <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" />
            <asp:Label ID="lblResultadoFiltro" runat="server" ForeColor="Blue" Font-Bold="true"></asp:Label>

                    </td>
                    <td class="auto-style9" rowspan="2"> 
            <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" Width="113px" OnClick="btnMostrarTodos_Click" CausesValidation="False" Height="53px" style="margin-left: 0px" />

                    </td>
                    <td class="auto-style7">

            <asp:RegularExpressionValidator ID="revSoloNumeros" runat="server" 
                ControlToValidate="txtIdSucursal" 
                ValidationExpression="^\d+$" 
                Text="Error, solo ingrese números" 
                ForeColor="Red">
            </asp:RegularExpressionValidator>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Busqueda ingrese Nombre sucursal</td>
                    <td class="auto-style10">
            <asp:TextBox ID="txtNombreSucursal" runat="server" ValidationGroup="group2"></asp:TextBox>
            <asp:Button ID="btnFiltrarNombre" runat="server" Text="Filtrar" OnClick="btnFiltrarNombre_Click" ValidationGroup="group2" />
            <asp:Label ID="lblResultadoFiltroNombre" runat="server" ForeColor="Blue" Font-Bold="true"></asp:Label>

                    </td>
                    <td class="auto-style7">

            <asp:RequiredFieldValidator ID="rfvNombre" runat="server"
                ControlToValidate="txtNombreSucursal"
                ErrorMessage="Ingrese un nombre."
                ForeColor="Red" ValidationGroup="group2"></asp:RequiredFieldValidator>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4">
            <asp:GridView ID="listaSucursales" runat="server" OnSelectedIndexChanged="listaSucursales_SelectedIndexChanged" EmptyDataText="No se encontró ninguna sucursal con ese ID">
            </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8" colspan="2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8" colspan="2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8" colspan="2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8" colspan="2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>