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

        public DataTable getTablaFiltrada(string idSucursal)
        {
            DaoSucursal dao = new DaoSucursal();
            return dao.getTablaFiltrada(idSucursal);
        }

        public DataTable getTablaFiltradaPorNombre(string nombreSucursal)
        {
            DaoSucursal dao = new DaoSucursal();
            return dao.getTablaFiltradaPorNombre(nombreSucursal);
        }

        public bool eliminarSucursal(int idSucursal)
        {
            DaoSucursal dao = new DaoSucursal();
            if (dao.eliminarSucursal(idSucursal) > 0)
            {
                return true;
            }
            return false;
        }
    }
}