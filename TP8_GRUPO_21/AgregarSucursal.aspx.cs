using Negocio;
using System;
using System.Collections.Generic;
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
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
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
            if (Page.IsValid)
            {
                int filas = negSuc.agregarSucursal(txtNombre.Text.Trim(), txtDescripcion.Text.Trim(), int.Parse(dpProvincias.SelectedValue), txtDireccion.Text.Trim());

                if (filas > 0)
                {
                    lblMensaje.Text = "La sucursal se ha agregado con éxito";
                    lblMensaje.ForeColor = System.Drawing.Color.Green;
                    txtNombre.Text = "";
                    txtDescripcion.Text = "";
                    txtDireccion.Text = "";
                    dpProvincias.SelectedIndex = 0;
                }
                else
                {
                    lblMensaje.Text = "Ocurrió un error al agregar la sucursal";
                    lblMensaje.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}