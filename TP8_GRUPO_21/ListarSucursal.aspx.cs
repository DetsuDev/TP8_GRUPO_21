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
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
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
            lblResultadoFiltro.ForeColor = System.Drawing.Color.Green;
            lblResultadoFiltroNombre.Text = "";
            txtIdSucursal.Text = "";
            txtNombreSucursal.Text = "";
            lblResultadoFiltro.Text = "";
        }
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtIdSucursal.Text))
            {
                listaSucursales.DataSource = negSuc.getTablaFiltrada(txtIdSucursal.Text);
                listaSucursales.DataBind();
                lblResultadoFiltro.Text = "Filtrado por ID: " + txtIdSucursal.Text;
                lblResultadoFiltro.ForeColor = System.Drawing.Color.Blue;
                txtIdSucursal.Text = "";
            }
        }

        protected void btnFiltrarNombre_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtNombreSucursal.Text))
            {
                listaSucursales.DataSource = negSuc.getTablaFiltradaPorNombre(txtNombreSucursal.Text);
                listaSucursales.DataBind();
                lblResultadoFiltroNombre.Text = "Filtrado por Nombre: " + txtNombreSucursal.Text;
                lblResultadoFiltroNombre.ForeColor = System.Drawing.Color.Blue;
                txtNombreSucursal.Text = "";
            }
        }

        protected void listaSucursales_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}