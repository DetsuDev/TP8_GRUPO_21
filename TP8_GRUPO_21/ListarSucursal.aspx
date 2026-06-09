<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursal.aspx.cs" Inherits="TP8_GRUPO_21.ListarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            font-family: "Segoe UI", Tahoma, Arial, sans-serif;
            background: #f5f7fa;
            margin: 20px;
            color: #2c3e50;
        }

        .navbar {
            background: #2c3e50;
            padding: 12px 8px;
            text-align: center;
            border-radius: 6px;
            margin-bottom: 18px;
        }

        .navbar .nav-link {
            color: #ecf0f1;
            padding: 8px 14px;
            text-decoration: none;
            display: inline-block;
            margin: 0 6px;
            border-radius: 4px;
        }

        .navbar .nav-link:hover {
            background: #34495e;
        }

        .card {
            background: #fff;
            padding: 18px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.06);
        }

        table.form-table {
            width: 100%;
            border-collapse: collapse;
        }

        table.form-table td {
            padding: 8px 6px;
            vertical-align: middle;
        }

        .btn {
            background: #2980b9;
            color: #fff;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .validation {
            color: #e74c3c;
            margin-left: 6px;
        }

        .grid-wrapper {
            margin-top: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar">
                <asp:HyperLink ID="hlAgregar" runat="server" NavigateUrl="AgregarSucursal.aspx" CssClass="nav-link">Agregar Sucursal</asp:HyperLink>
                <asp:HyperLink ID="hlListado" runat="server" NavigateUrl="ListarSucursal.aspx" CssClass="nav-link">Listado de Sucursales</asp:HyperLink>
                <asp:HyperLink ID="hlEliminar" runat="server" NavigateUrl="EliminarSucursal.aspx" CssClass="nav-link">Eliminar Sucursal</asp:HyperLink>
            </div>

            <div class="card">
                <h1 class="title">Listado de Sucursales</h1>

                <table class="form-table">
                    <tr>
                        <td style="width:220px;">Busqueda ingrese Id sucursal</td>
                        <td style="width:260px;">
                            <asp:TextBox ID="txtIdSucursal" runat="server"></asp:TextBox>
                            <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" CssClass="btn" />
                            <asp:Label ID="lblResultadoFiltro" runat="server" ForeColor="Blue" Font-Bold="true"></asp:Label>
                        </td>
                        <td rowspan="2" style="width:200px;">
                            <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" Width="140px" OnClick="btnMostrarTodos_Click" CausesValidation="False" CssClass="btn" />
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="revSoloNumeros" runat="server" ControlToValidate="txtIdSucursal" ValidationExpression="^\d+$" Text="Error, solo ingrese números" CssClass="validation"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Busqueda ingrese Nombre sucursal</td>
                        <td>
                            <asp:TextBox ID="txtNombreSucursal" runat="server" ValidationGroup="group2"></asp:TextBox>
                            <asp:Button ID="btnFiltrarNombre" runat="server" Text="Filtrar" OnClick="btnFiltrarNombre_Click" ValidationGroup="group2" CssClass="btn" />
                            <asp:Label ID="lblResultadoFiltroNombre" runat="server" ForeColor="Blue" Font-Bold="true"></asp:Label>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombreSucursal" ErrorMessage="Ingrese un nombre." CssClass="validation" ValidationGroup="group2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" class="grid-wrapper">
                            <asp:GridView ID="listaSucursales" runat="server" OnSelectedIndexChanged="listaSucursales_SelectedIndexChanged" EmptyDataText="No se encontró ninguna sucursal con ese ID"></asp:GridView>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>