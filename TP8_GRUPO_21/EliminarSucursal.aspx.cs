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
            //negSuc.eliminarSucursal(Convert.ToInt32(txtIdEliminar.Text));
        }
    }
}