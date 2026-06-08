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
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
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
            }
        }
    }
}