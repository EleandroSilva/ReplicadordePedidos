{*******************************************************}
{                      Be More Web                      }
{          Início do projeto 09/04/2025 08:45           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.DAO.Empresa.Interfaces;

interface

uses
  Data.DB,
  Model.Entidade.Empresa.Interfaces;

type
  iDAOEmpresa = interface
    ['{439562F0-9BF4-409E-809B-30E8DAEA3535}']
    function DataSet    (DataSource : TDataSource) : iDAOEmpresa; overload;
    function DataSet                               : TDataSet;    overload;
    function GetAll                                : iDAOEmpresa;
    function GetbyId    (Id : Variant)             : iDAOEmpresa;
    function GetbyParams                           : iDAOEmpresa; overload;
    function GetbyParams(NomeEmpresarial : String) : iDAOEmpresa; overload;

    function This : iEntidadeEmpresa<iDAOEmpresa>;
  end;

implementation

end.
