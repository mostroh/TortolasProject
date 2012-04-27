﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TortolasProject.Models.Repositorios
{
    public class EmpresasRepositorio
    {
        mtbMalagaDataContext mtbMalagaDB = new mtbMalagaDataContext();

        public IList<tbEmpresa> ListarEmpresas()
        {
            return mtbMalagaDB.tbEmpresa.ToList();
        }

        public tbEmpresa buscaremp(Guid idemp)
        {
            return mtbMalagaDB.tbEmpresa.Where(empresa => empresa.idEmpresa == idemp).Single();
        }
        
        public void updateEmp(tbEmpresa emp)
        {
            tbEmpresa original = buscaremp(emp.idEmpresa);

            original.Nombre = emp.Nombre;
            original.Localidad = emp.Localidad;
            original.CIF = emp.CIF;
            original.DireccionWeb = emp.DireccionWeb;
            original.TelefonodeContacto = emp.TelefonodeContacto;
            original.Email = emp.Email;

            mtbMalagaDB.SubmitChanges();
        }
        public void createEmp(tbEmpresa emp)
        {
            mtbMalagaDB.tbEmpresa.InsertOnSubmit(emp);
            salvar();        
        }
        public void salvar()
        {
            mtbMalagaDB.SubmitChanges();
        }
        public void deleteEmp(Guid id)
        {
            mtbMalagaDB.tbEmpresa.DeleteOnSubmit(buscaremp(id));
            salvar();
        }

    }
}