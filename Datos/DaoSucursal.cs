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
            string query = "SELECT Id_Sucursal, NombreSucursal AS Nombre, DescripcionSucursal AS Descripcion, DescripcionProvincia AS Provincia, DireccionSucursal AS Direccion " +
                           "FROM Sucursal INNER JOIN Provincia ON Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia";
            return ds.ObtenerTabla("Sucursal", query);
        }
        public int agregarSucursal(string nombre, string descripcion, int idProvincia, string direccion)
        {
            string query = "INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) " +
                           "VALUES ('" + nombre.Replace("'", "''") + "', '" + descripcion.Replace("'", "''") + "', " + idProvincia + ", '" + direccion.Replace("'", "''") + "')";
            return ds.EjecutarConsulta(query);
        }

        public DataTable getTablaFiltrada(string idSucursal)
        {
            string query = "SELECT Id_Sucursal, NombreSucursal AS Nombre, DescripcionSucursal AS Descripcion, DescripcionProvincia AS Provincia, DireccionSucursal AS Direccion FROM Sucursal INNER JOIN Provincia ON Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia WHERE Id_Sucursal = " + idSucursal;
            return ds.ObtenerTabla("Sucursal", query);
        }

        public int eliminarSucursal(int idSucursal)
        {
            string query = "DELETE FROM Sucursal WHERE Id_Sucursal = " + idSucursal;
            return ds.EjecutarConsulta(query);
        }
    }
}