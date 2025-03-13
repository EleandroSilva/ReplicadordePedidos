{*******************************************************}
{                      Be More Web                      }
{          Início do projeto 06/03/2025 14:21           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.DAO.Pessoa.Interfaces;

interface

uses
  Data.DB;

type
  iDAOPessoa = interface
    ['{59AA353A-F11D-4C30-BA06-2D54660360A0}']
    function DataSet    (DataSource : TDataSource) : iDAOPessoa; overload;
    function DataSet                               : TDataSet;    overload;
    function GetAll                                : iDAOPessoa;
    function GetbyId    (Id : Variant)             : iDAOPessoa;
    function GetbyParams                           : iDAOPessoa; overload;
    function GetbyParams(NomePessoa : String)      : iDAOPessoa; overload;

    function This : iDAOPessoa;
  end;


implementation

end.
