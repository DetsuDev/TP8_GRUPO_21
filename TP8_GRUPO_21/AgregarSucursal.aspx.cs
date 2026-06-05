using Negocio;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP8_GRUPO_21
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        NegocioProvincia negProv = new NegocioProvincia();
        NegocioSucursal negSuc = new NegocioSucursal();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dpProvincias.DataSource = negProv.getTabla();
                dpProvincias.DataTextField = "DescripcionProvincia";
                dpProvincias.DataValueField = "Id_Provincia";
                dpProvincias.DataBind();
                dpProvincias.Items.Insert(0, new ListItem("-- Seleccione una Provincia --", "0"));
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            /*bool estado = false;
            estado = negSuc.agregarSucursal(txtNombre.Text, txtDescripcion.Text, Convert.ToInt32(dpProvincias.SelectedValue), txtDireccion.Text);*/
        }
    }
}