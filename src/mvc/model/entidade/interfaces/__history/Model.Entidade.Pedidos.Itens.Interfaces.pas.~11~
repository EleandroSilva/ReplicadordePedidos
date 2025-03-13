{*******************************************************}
{                    API PDV - JSON                     }
{                      Be More Web                      }
{          Início do projeto 24/02/2025 12:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}

unit Model.Entidade.Pedidos.Itens.Interfaces;

interface

uses
  Datasnap.DBClient;

type
  iEntidadePedidosItens<T> = interface
    ['{3B8240D7-6419-4E76-A739-FD942394772B}']
    function IdPedido        (Value : String)   : iEntidadePedidosItens<T>; overload;
    function IdPedido                           : String;                   overload;
    function Item            (Value : Integer)  : iEntidadePedidosItens<T>; overload;
    function Item                               : Integer;                  overload;
    function IdProduto       (Value : Integer)  : iEntidadePedidosItens<T>; overload;
    function IdProduto                          : Integer;                  overload;
    function IdTamanho       (Value : Integer)  : iEntidadePedidosItens<T>; overload;
    function IdTamanho                          : Integer;                  overload;
    function CodigoProduto   (Value : String)   : iEntidadePedidosItens<T>; overload;
    function CodigoProduto                      : String;                   overload;
    function CodigoBarra     (Value : String)   : iEntidadePedidosItens<T>; overload;
    function CodigoBarra                        : String;                   overload;
    function CodigoCor       (Value : String)   : iEntidadePedidosItens<T>; overload;
    function CodigoCor                          : String;                   overload;
    function CodigoAcessorio (Value : String)   : iEntidadePedidosItens<T>; overload;
    function CodigoAcessorio                    : String;                   overload;
    function NumeroPedido    (Value : String)   : iEntidadePedidosItens<T>; overload;
    function NumeroPedido                       : String;                   overload;
    function CodigoTamanho   (Value : String)   : iEntidadePedidosItens<T>; overload;
    function CodigoTamanho                      : String;                   overload;
    function Ean13           (Value : String)   : iEntidadePedidosItens<T>; overload;
    function Ean13                              : String;                   overload;
    function Ean23           (Value : String)   : iEntidadePedidosItens<T>; overload;
    function Ean23                              : String;                   overload;
    function CFOP            (Value : String)   : iEntidadePedidosItens<T>; overload;
    function CFOP                               : String;                   overload;
    function CST             (Value : String)   : iEntidadePedidosItens<T>; overload;
    function CST                                : String;                   overload;
    function CF              (Value : String)   : iEntidadePedidosItens<T>; overload;
    function CF                                 : String;                   overload;
    function AliquotaComissao(Value : Currency) : iEntidadePedidosItens<T>; overload;
    function AliquotaComissao                   : Currency;                 overload;
    function AliquotaICMS    (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function AliquotaICMS                       : Currency;                 overload;
    function AliquotaIPI     (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function AliquotaIPI                        : Currency;                 overload;
    function AliquotaVincICMS(Value : Currency) : iEntidadePedidosItens<T>; overload;
    function AliquotaVincICMS                   : Currency;                 overload;
    function AliquotaVincISS (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function AliquotaVincISS                    : Currency;                 overload;
    function AliquotaDesconto(Value : Currency) : iEntidadePedidosItens<T>; overload;
    function AliquotaDesconto                   : Currency;                 overload;
    function AliquotaDescontoPedido(Value : Currency) : iEntidadePedidosItens<T>; overload;
    function AliquotaDescontoPedido                   : Currency;                 overload;
    function ValorTabela           (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function ValorTabela                              : Currency;                 overload;
    function Quantidade            (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function Quantidade                               : Currency;                 overload;
    function ValorCusto            (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function ValorCusto                               : Currency;                 overload;
    function ValorProduto          (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function ValorProduto                             : Currency;                 overload;
    function SubTotalProduto       (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function SubTotalProduto                          : Currency;                 overload;
    function ValorDescontoProduto  (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function ValorDescontoProduto                     : Currency;                 overload;
    function ValorPorTabela        (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function ValorPorTabela                           : Currency;                 overload;
    function ValorTotalPorTabela   (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function ValorTotalPorTabela                      : Currency;                 overload;
    function ValorFinalProduto     (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function ValorFinalProduto                        : Currency;                 overload;
    function LarguraProduto        (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function LarguraProduto                           : Currency;                 overload;
    function ComprimentoProduto    (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function ComprimentoProduto                       : Currency;                 overload;
    function EspessuraProduto      (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function EspessuraProduto                         : Currency;                 overload;
    function Peca                  (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function Peca                                     : Currency;                 overload;
    function PesoProduto           (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function PesoProduto                              : Currency;                 overload;
    function CubicoProduto         (Value : Currency) : iEntidadePedidosItens<T>; overload;
    function CubicoProduto                            : Currency;                 overload;
    function Cancelado             (Value : String)   : iEntidadePedidosItens<T>; overload;
    function Cancelado                                : String;                   overload;
    function SaiudoEstoque         (Value : String)   : iEntidadePedidosItens<T>; overload;
    function SaiudoEstoque                            : String;                   overload;
    function CouG                  (Value : Integer)  : iEntidadePedidosItens<T>; overload;
    function CouG                                     : Integer                   overload;
    function Producao              (Value : Integer)  : iEntidadePedidosItens<T>; overload;
    function Producao                                 : Integer;                  overload;
    function FundoPreto            (Value : Integer)  : iEntidadePedidosItens<T>; overload;
    function FundoPreto                               : Integer;                  overload;

    function CriarEstruturaCDS     (cdsPedidoItens: TClientDataSet) : iEntidadePedidosItens<T>;
    function &End : T;
  end;

implementation

end.
