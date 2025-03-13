{*******************************************************}
{                      Be More Web                      }
{          Início do projeto 24/02/2025 12:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Entidade.Pedidos.Itens.Imp;

interface

uses
  Data.DB,
  System.SysUtils,
  Datasnap.DBClient,

  Model.Entidade.Pedidos.Itens.Interfaces;

type
  TEntidadePedidosItens<T : iInterface> = class(TInterfacedObject, iEntidadePedidosItens<T>)
    private
      [weak]
      FParent : T;
      FClientDataSet          : TClientDataSet;
      FIdPedido               : String;
      FItem                   : Integer;
      FIdProduto              : Integer;
      FIdTamanho              : Integer;
      FCodigoProduto          : String;
      FCodigoBarra            : String;
      FCodigoCor              : String;
      FCodigoAcessorio        : String;
      FNumeroPedido           : String;
      FCodigoTamanho          : String;
      FEan13                  : String;
      FEan23                  : String;
      FCFOP                   : String;
      FCST                    : String;
      FCF                     : String;
      FAliquotaComissao       : Currency;
      FAliquotaICMS           : Currency;
      FAliquotaIPI            : Currency;
      FAliquotaVincICMS       : Currency;
      FAliquotaVincISS        : Currency;
      FAliquotaDesconto       : Currency;
      FAliquotaDescontoPedido : Currency;
      FValorTabela            : Currency;
      FQuantidade             : Currency;
      FValorCusto             : Currency;
      FValorProduto           : Currency;
      FSubTotalProduto        : Currency;
      FValorDescontoProduto   : Currency;
      FValorPorTabela         : Currency;
      FValorTotalPorTabela    : Currency;
      FValorFinalProduto      : Currency;
      FLarguraProduto         : Currency;
      FComprimentoProduto     : Currency;
      FEspessuraProduto       : Currency;
      FPeca                   : Currency;
      FPesoProduto            : Currency;
      FCubicoProduto          : Currency;
      FCancelado              : String;
      FSaiudoEstoque          : String;
      FCouG                   : Integer;
      FProducao               : Integer;
      FFundoPreto             : Integer;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iEntidadePedidosItens<T>;

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

{ TEntidadePedidosItens<T> }

constructor TEntidadePedidosItens<T>.Create(Parent: T);
begin
  FParent  := Parent;
end;


destructor TEntidadePedidosItens<T>.Destroy;
begin
  inherited;
end;

class function TEntidadePedidosItens<T>.New(Parent: T): iEntidadePedidosItens<T>;
begin
  Result := Self.Create(Parent);
end;

function TEntidadePedidosItens<T>.AliquotaComissao(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FAliquotaComissao := Value;
end;

function TEntidadePedidosItens<T>.AliquotaComissao: Currency;
begin
  Result := FAliquotaComissao;
end;

function TEntidadePedidosItens<T>.AliquotaDesconto(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FAliquotaDesconto := Value;
end;

function TEntidadePedidosItens<T>.AliquotaDesconto: Currency;
begin
  Result := FAliquotaDesconto;
end;

function TEntidadePedidosItens<T>.AliquotaDescontoPedido(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FAliquotaDescontoPedido := Value;
end;

function TEntidadePedidosItens<T>.AliquotaDescontoPedido: Currency;
begin
  Result := FAliquotaDescontoPedido;
end;

function TEntidadePedidosItens<T>.AliquotaICMS(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FAliquotaICMS := Value;
end;

function TEntidadePedidosItens<T>.AliquotaICMS: Currency;
begin
  Result := FAliquotaICMS;
end;

function TEntidadePedidosItens<T>.AliquotaIPI(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FAliquotaIPI := Value;
end;

function TEntidadePedidosItens<T>.AliquotaIPI: Currency;
begin
  Result := FAliquotaIPI;
end;


function TEntidadePedidosItens<T>.AliquotaVincICMS(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FAliquotaVincICMS := Value;
end;

function TEntidadePedidosItens<T>.AliquotaVincICMS: Currency;
begin
  Result := FAliquotaVincICMS;
end;

function TEntidadePedidosItens<T>.AliquotaVincISS(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FAliquotaVincISS := Value;
end;

function TEntidadePedidosItens<T>.AliquotaVincISS: Currency;
begin
  Result := FAliquotaVincISS;
end;

function TEntidadePedidosItens<T>.Cancelado(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FCancelado := Value;
end;

function TEntidadePedidosItens<T>.Cancelado: String;
begin
  Result := FCancelado;
end;

function TEntidadePedidosItens<T>.CF(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FCF := Value;
end;

function TEntidadePedidosItens<T>.CF: String;
begin
  Result := FCF;
end;

function TEntidadePedidosItens<T>.CFOP(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FCFOP := Value;
end;

function TEntidadePedidosItens<T>.CFOP: String;
begin
  Result := FCFOP;
end;

function TEntidadePedidosItens<T>.CodigoBarra(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FCodigoBarra := Value;
end;

function TEntidadePedidosItens<T>.CodigoBarra: String;
begin
  Result := FCodigoBarra;
end;

function TEntidadePedidosItens<T>.CodigoAcessorio(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FCodigoAcessorio := Value;
end;

function TEntidadePedidosItens<T>.CodigoAcessorio: String;
begin
  Result := FCodigoAcessorio;
end;

function TEntidadePedidosItens<T>.CodigoCor(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FCodigoCor := Value;
end;

function TEntidadePedidosItens<T>.CodigoCor: String;
begin
  Result := FCodigoCor;
end;

function TEntidadePedidosItens<T>.CodigoProduto(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FCodigoProduto := Value;
end;

function TEntidadePedidosItens<T>.CodigoProduto: String;
begin
  Result := FCodigoProduto;
end;

function TEntidadePedidosItens<T>.CodigoTamanho(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FCodigoTamanho := Value;
end;

function TEntidadePedidosItens<T>.CodigoTamanho: String;
begin
  Result := FCodigoTamanho;
end;

function TEntidadePedidosItens<T>.ComprimentoProduto(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FComprimentoProduto := Value;
end;

function TEntidadePedidosItens<T>.ComprimentoProduto: Currency;
begin
  Result := FComprimentoProduto;
end;


function TEntidadePedidosItens<T>.CouG(Value: Integer): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FCouG := Value;
end;

function TEntidadePedidosItens<T>.CouG: Integer;
begin
  Result := FCouG;
end;


function TEntidadePedidosItens<T>.CST(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FCST := Value;
end;

function TEntidadePedidosItens<T>.CST: String;
begin
  Result := FCST;
end;

function TEntidadePedidosItens<T>.CubicoProduto(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FCubicoProduto := Value;
end;

function TEntidadePedidosItens<T>.CubicoProduto: Currency;
begin
  Result := FCubicoProduto;
end;

function TEntidadePedidosItens<T>.Ean13(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FEan13 := Value;
end;

function TEntidadePedidosItens<T>.Ean13: String;
begin
  Result := FEan13;
end;


function TEntidadePedidosItens<T>.Ean23(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FEan23 := Value;
end;

function TEntidadePedidosItens<T>.Ean23: String;
begin
  Result := FEan23;
end;

function TEntidadePedidosItens<T>.EspessuraProduto(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FEspessuraProduto := Value;
end;

function TEntidadePedidosItens<T>.EspessuraProduto: Currency;
begin
  Result := FEspessuraProduto;
end;

function TEntidadePedidosItens<T>.FundoPreto(Value: Integer): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FFundoPreto := Value;
end;

function TEntidadePedidosItens<T>.FundoPreto: Integer;
begin
  Result := FFundoPreto;
end;

function TEntidadePedidosItens<T>.IdPedido(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  if ((Value <>'') and (Value<>'null')) then
    FIdPedido := StringOfChar('0', 5 - Length(Value)) + Value else
    FIdPedido := '';
end;

function TEntidadePedidosItens<T>.IdPedido: String;
begin
  Result := FIdPedido;
end;

function TEntidadePedidosItens<T>.IdProduto(Value: Integer): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FIdProduto := Value;
end;

function TEntidadePedidosItens<T>.IdProduto: Integer;
begin
  Result := FIdProduto;
end;

function TEntidadePedidosItens<T>.IdTamanho(Value: Integer): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FIdTamanho := Value;
end;

function TEntidadePedidosItens<T>.IdTamanho: Integer;
begin
  Result := FIdTamanho;
end;

function TEntidadePedidosItens<T>.Item(Value: Integer): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FItem := Value;
end;

function TEntidadePedidosItens<T>.Item: Integer;
begin
  Result := FItem;
end;

function TEntidadePedidosItens<T>.LarguraProduto(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FLarguraProduto := Value;
end;

function TEntidadePedidosItens<T>.LarguraProduto: Currency;
begin
  Result := FLarguraProduto;
end;

function TEntidadePedidosItens<T>.NumeroPedido(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FNumeroPedido := Value;
end;

function TEntidadePedidosItens<T>.NumeroPedido: String;
begin
  Result := FNumeroPedido;
end;

function TEntidadePedidosItens<T>.Peca(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FPeca := Value;
end;

function TEntidadePedidosItens<T>.Peca: Currency;
begin
  Result := FPeca;
end;

function TEntidadePedidosItens<T>.PesoProduto(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FPesoProduto := Value;
end;

function TEntidadePedidosItens<T>.PesoProduto: Currency;
begin
  Result := FPesoProduto;
end;

function TEntidadePedidosItens<T>.Producao(Value: Integer): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FProducao := Value;
end;

function TEntidadePedidosItens<T>.Producao: Integer;
begin
  Result := FProducao;
end;

function TEntidadePedidosItens<T>.Quantidade(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FQuantidade := Value;
end;

function TEntidadePedidosItens<T>.Quantidade: Currency;
begin
  Result := FQuantidade;
end;

function TEntidadePedidosItens<T>.SaiudoEstoque(Value: String): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FSaiudoEstoque := Value;
end;

function TEntidadePedidosItens<T>.SaiudoEstoque: String;
begin
  Result := FSaiudoEstoque;
end;

function TEntidadePedidosItens<T>.SubTotalProduto(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FSubTotalProduto := Value;
end;

function TEntidadePedidosItens<T>.SubTotalProduto: Currency;
begin
  Result := FSubTotalProduto;
end;

function TEntidadePedidosItens<T>.ValorCusto(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FValorCusto := Value;
end;

function TEntidadePedidosItens<T>.ValorCusto: Currency;
begin
  Result := FValorCusto;
end;

function TEntidadePedidosItens<T>.ValorDescontoProduto(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FValorDescontoProduto := Value;
end;

function TEntidadePedidosItens<T>.ValorDescontoProduto: Currency;
begin
  Result := FValorDescontoProduto;
end;

function TEntidadePedidosItens<T>.ValorFinalProduto(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FValorFinalProduto := Value;
end;

function TEntidadePedidosItens<T>.ValorFinalProduto: Currency;
begin
  Result := FValorFinalProduto;
end;

function TEntidadePedidosItens<T>.ValorPorTabela(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FValorPorTabela := Value;
end;

function TEntidadePedidosItens<T>.ValorPorTabela: Currency;
begin
  Result := FValorPorTabela;
end;

function TEntidadePedidosItens<T>.ValorProduto(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FValorProduto := Value;
end;

function TEntidadePedidosItens<T>.ValorProduto: Currency;
begin
  Result := FValorProduto;
end;

function TEntidadePedidosItens<T>.ValorTabela(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FValorTabela := Value;
end;

function TEntidadePedidosItens<T>.ValorTabela: Currency;
begin
  Result := FValorTabela;
end;

function TEntidadePedidosItens<T>.ValorTotalPorTabela(Value: Currency): iEntidadePedidosItens<T>;
begin
  Result := Self;
  FValorTotalPorTabela := Value;
end;

function TEntidadePedidosItens<T>.ValorTotalPorTabela: Currency;
begin
  Result := FValorTotalPorTabela;
end;

function TEntidadePedidosItens<T>.CriarEstruturaCDS(cdsPedidoItens: TClientDataSet): iEntidadePedidosItens<T>;
begin
  Result := Self;
  cdsPedidoItens.Close;
  cdsPedidoItens.FieldDefs.Clear;

  // Criando os campos manualmente
  cdsPedidoItens.FieldDefs.Add('IdPedido'               , ftString  , 5, False);  // String de até 5 caracteres
  cdsPedidoItens.FieldDefs.Add('Item'                   , ftInteger , 0, False);  // Campo inteiro
  cdsPedidoItens.FieldDefs.Add('IdProduto'              , ftInteger , 0, False);  //
  cdsPedidoItens.FieldDefs.Add('IdTamanho'              , ftInteger , 0, False);
  cdsPedidoItens.FieldDefs.Add('CodigoProduto'          , ftString  , 5, False);
  cdsPedidoItens.FieldDefs.Add('CodigoBarra'            , ftString  , 5, False);
  cdsPedidoItens.FieldDefs.Add('CodigoCor'              , ftString  , 5, False);
  cdsPedidoItens.FieldDefs.Add('CodigoAcessorio'        , ftString  , 5, False);
  cdsPedidoItens.FieldDefs.Add('NumeroPedido'           , ftString  , 5, False);
  cdsPedidoItens.FieldDefs.Add('CodigoTamanho'          , ftString  , 5, False);
  cdsPedidoItens.FieldDefs.Add('Ean13'                  , ftString  , 5, False);
  cdsPedidoItens.FieldDefs.Add('Ean23'                  , ftString  , 5, False);
  cdsPedidoItens.FieldDefs.Add('CFOP'                   , ftString  , 5, False);
  cdsPedidoItens.FieldDefs.Add('CST'                    , ftString  , 5, False);
  cdsPedidoItens.FieldDefs.Add('CF'                     , ftString  , 5, False);
  cdsPedidoItens.FieldDefs.Add('AliquotaComissao'       , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('AliquotaICMS'           , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('AliquotaIPI'            , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('AliquotaVincICMS'       , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('AliquotaVincISS'        , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('AliquotaDesconto'       , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('AliquotaDescontoPedido' , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('ValorTabela'            , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('Quantidade'             , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('ValorCusto'             , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('ValorProduto'           , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('SubTotalProduto'        , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('ValorDescontoProduto'   , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('ValorPorTabela'         , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('ValorTotalPorTabela'    , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('ValorFinalProduto'      , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('LarguraProduto'         , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('ComprimentoProduto'     , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('EspessuraProduto'       , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('Peca'                   , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('PesoProduto'            , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('CubicoProduto'          , ftCurrency, 0, False);
  cdsPedidoItens.FieldDefs.Add('Cancelado'              , ftString , 5, False);
  cdsPedidoItens.FieldDefs.Add('SaiudoEstoque'          , ftString , 5, False);
  cdsPedidoItens.FieldDefs.Add('CouG'                   , ftInteger, 0, False);
  cdsPedidoItens.FieldDefs.Add('Producao'               , ftInteger, 0, False);
  cdsPedidoItens.FieldDefs.Add('FundoPreto'             , ftInteger, 0, False);
  // Criando fisicamente os campos
  cdsPedidoItens.CreateDataSet;
end;

function TEntidadePedidosItens<T>.&End: T;
begin
  Result := FParent;
end;


end.
