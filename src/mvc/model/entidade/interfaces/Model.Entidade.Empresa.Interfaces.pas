{*******************************************************}
{                      Be More Web                      }
{          Início do projeto 09/04/2025 08:45           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Entidade.Empresa.Interfaces;

interface

type
  iEntidadeEmpresa<T> = interface
    function Id               (Value : Integer)  : iEntidadeEmpresa<T>; overload;
    function Id                                  : Integer;             overload;
    function NomeEmpresarial  (Value : String)   : iEntidadeEmpresa<T>; overload;
    function NomeEmpresarial                     : String;              overload;
    function NomeFantasia     (Value : String)   : iEntidadeEmpresa<T>; overload;
    function NomeFantasia                        : String;              overload;
    function CNPJ             (Value : String)   : iEntidadeEmpresa<T>; overload;
    function CNPJ                                : String;              overload;
    function InscricaoEstadual(Value : String)   : iEntidadeEmpresa<T>; overload;
    function InscricaoEstadual                   : String;              overload;

    function &End : T;
  end;

implementation

end.
