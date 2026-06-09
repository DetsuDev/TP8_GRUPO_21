<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP8_GRUPO_21.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 153px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
            width: 265px;
        }
        .auto-style7 {
            width: 265px;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            width: 153px;
            height: 26px;
        }
        .auto-style10 {
            width: 265px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
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
                    <td class="auto-style4" colspan="2" style="font-weight: bold; font-size: 30px;">GRUPO N°21</td>
                    <td class="auto-style4">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="font-weight: bold; font-size: 20px;">Agregar Sucursal</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Nombre Sucursal:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtNombre" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Ingrese el nombre" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="cvUnique" runat="server" ControlToValidate="txtNombre" OnServerValidate="cvUnique_ServerValidate" ErrorMessage="Ya existe una sucursal con ese nombre en la provincia seleccionada" ForeColor="Red" Display="Dynamic">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Descripción:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtDescripcion" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Ingrese la descripción" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Provincia:</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="dpProvincias" runat="server" Width="250px"></asp:DropDownList>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator 
                            ID="rfvProvincia" 
                            runat="server" 
                            ControlToValidate="dpProvincias" 
                            InitialValue="0" 
                            ErrorMessage="Debe seleccionar una provincia" 
                            ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Dirección:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtDireccion" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Ingrese la dirección" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="lblMensaje" runat="server" ForeColor="Green"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>