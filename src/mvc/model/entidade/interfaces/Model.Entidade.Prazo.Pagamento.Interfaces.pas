{*******************************************************}
{                      Be More Web                      }
{          Início do projeto 06/03/2025 19:11           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Entidade.Prazo.Pagamento.Interfaces;

interface

uses
  Model.Entidade.Prazo.Pagamento.Itens.Interfaces;

type
  iEntidadePrazoPagamento<T> = interface
    ['{F74ACD49-CF17-4B54-83B0-23DD08FC08B5}']
    function Id                 (Value : Integer)  : iEntidadePrazoPagamento<T>; overload;
    function Id                                    : Integer;                    overload;
    function CodigoPrazo        (Value : String)   : iEntidadePrazoPagamento<T>; overload;
    function CodigoPrazo                           : String;                     overload;
    function NomePrazo          (Value : String)   : iEntidadePrazoPagamento<T>; overload;
    function NomePrazo                             : String;                     overload;
    function QuantidadePagamento(Value : Integer)  : iEntidadePrazoPagamento<T>; overload;
    function QuantidadePagamento                   : Integer;                    overload;
    function TotaldeDias        (Value : Currency) : iEntidadePrazoPagamento<T>; overload;
    function TotaldeDias                           : Currency;                   overload;
    function Status             (Value : Integer)  : iEntidadePrazoPagamento<T>; overload;
    function Status                                : Integer;                    overload;

    function &End : T;
    //Injeção de dependência
    function PrazoPagamentoItens  : iEntidadePrazoPagamentoItens<iEntidadePrazoPagamento<T>>;
  end;
implementation

end.
