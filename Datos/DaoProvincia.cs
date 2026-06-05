using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DaoProvincia
    {
        AccesoDatos ds = new AccesoDatos();
        public DataTable getTablaProvincias()
        {
            return ds.ObtenerTabla("Provincia", "SELECT Id_Provincia, DescripcionProvincia FROM Provincia");
        }
    }
}
