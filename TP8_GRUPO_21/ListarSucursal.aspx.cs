using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP8_GRUPO_21
{
    public partial class ListarSucursal : System.Web.UI.Page
    {
        NegocioSucursal negSuc = new NegocioSucursal();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listaSucursales.DataSource = negSuc.getTabla();
                listaSucursales.DataBind();
            }
        }
        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            //listaSucursales.DataSource = conexion.ObtenerTabla("SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, DescripcionProvincia, DireccionSucursal FROM Sucursal INNER JOIN Provincia ON Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia");
            //listaSucursales.DataBind();
            //txtIdSucursal.Text = "";
        }
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            //if (!string.IsNullOrEmpty(txtIdSucursal.Text))
            //{
            //    string consulta = "SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, DescripcionProvincia, DireccionSucursal FROM Sucursal INNER JOIN Provincia ON Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia WHERE Id_Sucursal = " + txtIdSucursal.Text;
            //    listaSucursales.DataSource = conexion.ObtenerTabla(consulta);
            //    listaSucursales.DataBind();

            //    txtIdSucursal.Text = "";
            //}
        }

        protected void listaSucursales_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}