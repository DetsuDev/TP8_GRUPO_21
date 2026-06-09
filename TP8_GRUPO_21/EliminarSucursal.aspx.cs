using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP8_GRUPO_21
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        NegocioSucursal negSuc = new NegocioSucursal();
        Negocio.NegocioProvincia negProv = new Negocio.NegocioProvincia();
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                dpProvinciasEliminar.DataSource = negProv.getTabla();
                dpProvinciasEliminar.DataTextField = "DescripcionProvincia";
                dpProvinciasEliminar.DataValueField = "Id_Provincia";
                dpProvinciasEliminar.DataBind();
                dpProvinciasEliminar.Items.Insert(0, new ListItem("-- Seleccione una Provincia --", "0"));
            }
        }
        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                bool eliminado = negSuc.eliminarSucursal(Convert.ToInt32(txtIdEliminar.Text));

                if (eliminado)
                {
                    lblMensajeEliminar.Text = "La sucursal se ha eliminado con éxito";
                    lblMensajeEliminar.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMensajeEliminar.Text = "El ID ingresado no existe";
                    lblMensajeEliminar.ForeColor = System.Drawing.Color.Red;
                }

                txtIdEliminar.Text = "";
            }

        }

        protected void btnEliminarPorDatos_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string nombre = txtNombreEliminar.Text.Trim();
                int idProv = 0;
                int.TryParse(dpProvinciasEliminar.SelectedValue, out idProv);
                string direccion = txtDireccionEliminar.Text.Trim();

                if (idProv <= 0)
                {
                    lblMensajeEliminarPorDatos.Text = "Debe seleccionar una provincia";
                    lblMensajeEliminarPorDatos.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                bool eliminado = negSuc.eliminarSucursalPorDatos(nombre, idProv, direccion);

                if (eliminado)
                {
                    lblMensajeEliminarPorDatos.Text = "La sucursal se ha eliminado con éxito";
                    lblMensajeEliminarPorDatos.ForeColor = System.Drawing.Color.Green;
                    txtNombreEliminar.Text = "";
                    txtDireccionEliminar.Text = "";
                    dpProvinciasEliminar.SelectedIndex = 0;
                }
                else
                {
                    lblMensajeEliminarPorDatos.Text = "No se encontró una sucursal con esos datos";
                    lblMensajeEliminarPorDatos.ForeColor = System.Drawing.Color.Red;
                }
        }
        }
    }
}