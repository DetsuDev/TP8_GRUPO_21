using Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NegocioSucursal
    {
        public DataTable getTabla()
        {
            DaoSucursal dao = new DaoSucursal();
            return dao.getTablaSucursales();
        }
        public int agregarSucursal(string nombre, string descripcion, int idProvincia, string direccion)
        {
            DaoSucursal dao = new DaoSucursal();
            return dao.agregarSucursal(nombre, descripcion, idProvincia, direccion);
        }
    }
}