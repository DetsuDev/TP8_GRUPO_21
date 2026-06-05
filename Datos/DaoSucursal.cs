using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DaoSucursal
    {
        AccesoDatos ds = new AccesoDatos();
        public DataTable getTablaSucursales()
        {
            string query = "SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, DescripcionProvincia, DireccionSucursal " +
                           "FROM Sucursal INNER JOIN Provincia ON Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia";
            return ds.ObtenerTabla("Sucursal", query);
        }
    }
}
