{*******************************************************}
{                      Be More Web                      }
{          In�cio do projeto 06/03/2025 19:56           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.DAO.Prazo.Pagamento.Interfaces;

interface

uses
  Data.DB,
  Model.Entidade.Prazo.Pagamento.Interfaces;

type
  iDAOPrazoPagamento = interface
    ['{8931DBB4-EF49-4736-BF00-E23C5BD4A6E7}']
    function DataSet    (DataSource : TDataSource) : iDAOPrazoPagamento; overload;
    function DataSet                               : TDataSet;           overload;
    function GetAll                                : iDAOPrazoPagamento;
    function GetbyId    (Id : Variant)             : iDAOPrazoPagamento;
    function GetbyParams(NomePagamento : String)   : iDAOPrazoPagamento;
    function This : iEntidadePrazoPagamento<iDAOPrazoPagamento>;
  end;

implementation

end.
