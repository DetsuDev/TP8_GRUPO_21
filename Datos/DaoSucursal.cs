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

        public DataTable getTablaFiltradaPorNombre(string nombreSucursal)
        {
            string nombreEscaped = nombreSucursal.Replace("'", "''");
            string query = "SELECT Id_Sucursal, NombreSucursal AS Nombre, DescripcionSucursal AS Descripcion, DescripcionProvincia AS Provincia, DireccionSucursal AS Direccion FROM Sucursal INNER JOIN Provincia ON Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia WHERE NombreSucursal LIKE '%" + nombreEscaped + "%'";
            return ds.ObtenerTabla("Sucursal", query);
        }

        public bool ExisteSucursalEnProvincia(string nombre, int idProvincia, string direccion)
        {
            string nombreEscaped = nombre.Replace("'", "''");
            string direccionEscaped = direccion.Replace("'", "''");
            string query = "SELECT COUNT(1) FROM Sucursal WHERE NombreSucursal = '" + nombreEscaped + "' AND Id_ProvinciaSucursal = " + idProvincia + " AND DireccionSucursal = '" + direccionEscaped + "'";
            DataTable dt = ds.ObtenerTabla("Existe", query);
            if (dt != null && dt.Rows.Count > 0)
            {
                int count = 0;
                int.TryParse(dt.Rows[0][0].ToString(), out count);
                return count > 0;
            }
            return false;
        }

        public int eliminarSucursal(int idSucursal)
        {
            string query = "DELETE FROM Sucursal WHERE Id_Sucursal = " + idSucursal;
            return ds.EjecutarConsulta(query);
        }

        public int eliminarSucursalPorDatos(string nombre, int idProvincia, string direccion)
        {
            string nombreEscaped = nombre.Replace("'", "''");
            string direccionEscaped = direccion.Replace("'", "''");
            string query = "DELETE FROM Sucursal WHERE NombreSucursal = '" + nombreEscaped + "' AND Id_ProvinciaSucursal = " + idProvincia + " AND DireccionSucursal = '" + direccionEscaped + "'";
            return ds.EjecutarConsulta(query);
        }
    }
}