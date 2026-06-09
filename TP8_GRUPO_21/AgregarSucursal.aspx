<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP8_GRUPO_21.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        /* Global styles */
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

        h1.title {
            margin: 0 0 8px 0;
            font-size: 28px;
            font-weight: 700;
            color: #1f3a57;
        }

        label {
            font-weight: 600;
        }

        input[type="text"], select, textarea {
            padding: 8px 10px;
            border: 1px solid #d0d7de;
            border-radius: 4px;
            width: 100%;
            box-sizing: border-box;
            font-size: 14px;
        }

        .btn {
            background: #2980b9;
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

        .vs-summary {
            color: #e74c3c;
            margin-top: 8px;
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
                <h1 class="title">GRUPO N°21</h1>
                <h2 style="margin:6px 0 14px 0; font-weight:600; color:#3b556f;">Agregar Sucursal</h2>

                <table class="form-table">
                    <tr>
                        <td style="width:220px;"><label for="txtNombre">Nombre Sucursal:</label></td>
                        <td>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="input" Width="250px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Ingrese el nombre" CssClass="validation">*</asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="cvUnique" runat="server" ControlToValidate="txtNombre" OnServerValidate="cvUnique_ServerValidate" ErrorMessage="Ya existe una sucursal con ese nombre en la provincia seleccionada" CssClass="validation" Display="Dynamic">*</asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="txtDescripcion">Descripción:</label></td>
                        <td>
                            <asp:TextBox ID="txtDescripcion" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Ingrese la descripción" CssClass="validation">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="dpProvincias">Provincia:</label></td>
                        <td>
                            <asp:DropDownList ID="dpProvincias" runat="server" Width="250px"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="dpProvincias" InitialValue="0" ErrorMessage="Debe seleccionar una provincia" CssClass="validation">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="txtDireccion">Dirección:</label></td>
                        <td>
                            <asp:TextBox ID="txtDireccion" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Ingrese la dirección" CssClass="validation">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" CssClass="btn" />
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Label ID="lblMensaje" runat="server" CssClass="message"></asp:Label>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="vs-summary" />
                        </td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>