{*******************************************************}
{                      Be More Web                      }
{          Início do projeto 26/02/2025 17:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Entidade.Calcular.Valor.Parcela.Imp;

interface

uses
  Model.Entidade.Calcular.Valor.Parcela.Interfaces,
  Model.Entidade.Prazo.Pagamento.Itens.Interfaces;

type
  TEntidadeCalcularValorParcela<T : iInterface> = class(TInterfacedObject, iEntidadeCalcularValorParcela<T>)
    private
      [weak]
      FParent     : T;
      FIdPedido   : Integer;
      FValorTotalPedido : Currency;
      FValorParcela     : Currency;
      FValorRestante    : Currency;
      FPrazoPagamentoItens  : iEntidadePrazoPagamentoItens<iEntidadeCalcularValorParcela<T>>;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iEntidadeCalcularValorParcela<T>;


      function IdPedido         (Value : Integer)  : iEntidadeCalcularValorParcela<T>; overload;
      function IdPedido                            : Integer;                          overload;
      function ValorTotalPedido (Value : Currency) : iEntidadeCalcularValorParcela<T>; overload;
      function ValorTotalPedido                    : Currency;                         overload;
      function ValorParcela     (Value : Currency) : iEntidadeCalcularValorParcela<T>; overload;
      function ValorParcela                        : Currency;                         overload;
      function ValorRestante    (Value : Currency) : iEntidadeCalcularValorParcela<T>; overload;
      function ValorRestante                       : Currency;                         overload;

      function &End : T;
      //Injeção de dependência
      function PrazoPagamentoItens  : iEntidadePrazoPagamentoItens<iEntidadeCalcularValorParcela<T>>;
  end;

implementation

uses
  Model.Entidade.Prazo.Pagamento.Itens.Imp;

{ TEntidadeCalcularValorParcela<T> }

constructor TEntidadeCalcularValorParcela<T>.Create(Parent: T);
begin
  FParent := Parent;
  FPrazoPagamentoItens := TEntidadePrazoPagamentoItens<iEntidadeCalcularValorParcela<T>>.New(Self);
end;

destructor TEntidadeCalcularValorParcela<T>.Destroy;
begin
  inherited;
end;

class function TEntidadeCalcularValorParcela<T>.New(Parent: T): iEntidadeCalcularValorParcela<T>;
begin
  Result := Self.Create(Parent);
end;

function TEntidadeCalcularValorParcela<T>.IdPedido(Value: Integer): iEntidadeCalcularValorParcela<T>;
begin
  Result := Self;
  FIdPedido := Value;
end;

function TEntidadeCalcularValorParcela<T>.IdPedido: Integer;
begin
  Result := FIdPedido;
end;

function TEntidadeCalcularValorParcela<T>.ValorParcela(Value: Currency): iEntidadeCalcularValorParcela<T>;
begin
  Result := Self;
  FValorParcela := Value;
end;

function TEntidadeCalcularValorParcela<T>.ValorParcela: Currency;
begin
  Result := FValorParcela;
end;

function TEntidadeCalcularValorParcela<T>.ValorRestante(Value: Currency): iEntidadeCalcularValorParcela<T>;
begin
  Result := Self;
  FValorRestante := Value;
end;

function TEntidadeCalcularValorParcela<T>.ValorRestante: Currency;
begin
  Result := FValorRestante;
end;

function TEntidadeCalcularValorParcela<T>.ValorTotalPedido(Value: Currency): iEntidadeCalcularValorParcela<T>;
begin
  Result := Self;
  FValorTotalPedido := Value;
end;

function TEntidadeCalcularValorParcela<T>.ValorTotalPedido: Currency;
begin
  Result := FValorTotalPedido;
end;

function TEntidadeCalcularValorParcela<T>.&End: T;
begin
  Result := FParent;
end;

function TEntidadeCalcularValorParcela<T>.PrazoPagamentoItens: iEntidadePrazoPagamentoItens<iEntidadeCalcularValorParcela<T>>;
begin
  Result := FPrazoPagamentoItens;
end;

end.
