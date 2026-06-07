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
            listaSucursales.DataSource = negSuc.getTabla();
            listaSucursales.DataBind();
            txtIdSucursal.Text = "";
        }
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtIdSucursal.Text))
            {
                listaSucursales.DataSource = negSuc.getTablaFiltrada(txtIdSucursal.Text);
                listaSucursales.DataBind();
                txtIdSucursal.Text = "";
            }
        }

        protected void listaSucursales_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}