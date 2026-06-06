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
        .auto-style2 {
            width: 223px;
        }
        .auto-style3 {
            width: 508px;
        }
        .auto-style5{
            width: 100%;
        }
        body{
    overflow: hidden;

    /* Firefox */
    scrollbar-width: none;

    /* IE and Edge */
    -ms-overflow-style: none;
}

/* Chrome, Edge Chromium, Safari */
body::-webkit-scrollbar {
    display: none;
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
                    <td class="auto-style2">Listado de Sucursales</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Busquedo ingrese Id sucursal</td>
                    <td class="auto-style3"> 
            <asp:TextBox ID="txtIdSucursal" runat="server"></asp:TextBox>
            <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" />
            <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" Width="86px" />

                    </td>
                    <td>

            <asp:RegularExpressionValidator ID="revSoloNumeros" runat="server" 
                ControlToValidate="txtIdSucursal" 
                ValidationExpression="^\d+$" 
                Text="Error, solo ingrese números" 
                ForeColor="Red">
            </asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:GridView ID="listaSucursales" runat="server" OnSelectedIndexChanged="listaSucursales_SelectedIndexChanged">
            </asp:GridView>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
