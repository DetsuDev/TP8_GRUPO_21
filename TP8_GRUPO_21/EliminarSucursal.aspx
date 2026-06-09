<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP8_GRUPO_21.EliminarSucursal" %>
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
            background: #c0392b;
            color: #fff;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn.secondary {
            background: #7f8c8d;
        }

        .validation {
            color: #e74c3c;
            margin-left: 6px;
        }

        .message {
            color: #2ecc71;
            font-weight: 600;
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
                <h1 class="title">Eliminar Sucursal</h1>

                <table class="form-table">
                    <tr>
                        <td style="width:220px;">Ingresar ID sucursal:</td>
                        <td style="width:260px;">
                            <asp:TextBox ID="txtIdEliminar" runat="server" Width="215px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" CssClass="btn" />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvIdEliminar" runat="server" ControlToValidate="txtIdEliminar" ErrorMessage="Ingrese un ID" CssClass="validation"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtIdEliminar" ErrorMessage="Ingrese solo numeros" CssClass="validation" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            <asp:RangeValidator ID="rvIdMayorACero" runat="server" ControlToValidate="txtIdEliminar" ErrorMessage="Ingrese un ID mayor a 0" CssClass="validation" Type="Integer" MinimumValue="1" MaximumValue="9999999"></asp:RangeValidator>
                            <asp:Label ID="lblMensajeEliminar" runat="server" CssClass="message" Text=""></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="4" style="padding-top:18px; font-weight:700;">Eliminar por Nombre + Provincia + Dirección</td>
                    </tr>

                    <tr>
                        <td>Nombre Sucursal:</td>
                        <td>
                            <asp:TextBox ID="txtNombreEliminar" runat="server" Width="215px" ValidationGroup="group3"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvNombreEliminar" runat="server" ControlToValidate="txtNombreEliminar" ErrorMessage="Ingrese el nombre" CssClass="validation" ValidationGroup="group3"></asp:RequiredFieldValidator>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Provincia:</td>
                        <td>
                            <asp:DropDownList ID="dpProvinciasEliminar" runat="server" Width="215px" ValidationGroup="group3"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvProvinciaEliminar" runat="server" ControlToValidate="dpProvinciasEliminar" InitialValue="0" ErrorMessage="Debe seleccionar una provincia" CssClass="validation" ValidationGroup="group3"></asp:RequiredFieldValidator>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Dirección:</td>
                        <td>
                            <asp:TextBox ID="txtDireccionEliminar" runat="server" Width="215px" ValidationGroup="group3"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvDireccionEliminar" runat="server" ControlToValidate="txtDireccionEliminar" ErrorMessage="Ingrese la dirección" CssClass="validation" ValidationGroup="group3"></asp:RequiredFieldValidator>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnEliminarPorDatos" runat="server" Text="Eliminar por Datos" OnClick="btnEliminarPorDatos_Click" ValidationGroup="group3" CssClass="btn secondary" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:Label ID="lblMensajeEliminarPorDatos" runat="server" CssClass="message" Text="" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>