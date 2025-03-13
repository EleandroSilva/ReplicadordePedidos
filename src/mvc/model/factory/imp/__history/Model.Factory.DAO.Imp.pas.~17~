{*******************************************************}
{                      Be More Web                      }
{          Início do projeto 23/04/2025 12:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Factory.DAO.Imp;

interface

uses
  Model.Factory.DAO.Interfaces,
  Model.DAO.Pedidos.Interfaces,
  Model.DAO.Pedidos.Itens.Interfaces,
  Model.DAO.Pedidos.Pagamentos.Interfaces,
  Model.DAO.Pessoa.Interfaces,
  Model.DAO.Prazo.Pagamento.Interfaces,
  Model.DAO.Prazo.Pagamento.Itens.Interfaces;

type
  TFactoryDAO = class(TInterfacedObject, iFactoryDAO)
    private
      FDAOPedidos             : iDAOPedidos;
      FDAOPedidosItens        : iDAOPedidosItens;
      FDAOPedidosPagamentos   : iDAOPedidosPagamentos;
      FDAOPessoa              : iDAOPessoa;
      FDAOPrazoPagamento      : iDAOPrazoPagamento;
      FDAOPrazoPagamentoItens : iDAOPrazoPagamentoItens;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iFactoryDAO;

      function DAOPedidos             : iDAOPedidos;
      function DAOPedidosItens        : iDAOPedidosItens;
      function DAOPedidosPagamentos   : iDAOPedidosPagamentos;
      function DAOPessoa              : iDAOPessoa;
      function DAOPrazoPagamento      : iDAOPrazoPagamento;
      function DAOPrazoPagamentoItens : iDAOPrazoPagamentoItens;
  end;

implementation

uses
  Model.DAO.Pedidos.Imp,
  Model.DAO.Pedidos.Itens.Imp,
  Model.DAO.Pedidos.Pagamentos.Imp,
  Model.DAO.Pessoa.Imp,
  Model.DAO.Prazo.Pagamento.Imp,
  Model.DAO.Prazo.Pagamento.Itens.Imp;

{ TFactoryDAO }

constructor TFactoryDAO.Create;
begin
  //
end;

destructor TFactoryDAO.Destroy;
begin
  inherited;
end;

class function TFactoryDAO.New: iFactoryDAO;
begin
  Result := Self.Create;
end;


function TFactoryDAO.DAOPedidos: iDAOPedidos;
begin
  if not Assigned(FDAOPedidos) then
    FDAOPedidos := TDAOPedidos.New;

  Result := FDAOPedidos;
end;

function TFactoryDAO.DAOPedidosItens: iDAOPedidosItens;
begin
  if not Assigned(FDAOPedidosItens) then
    FDAOPedidosItens := TDAOPedidosItens.New;

  Result := FDAOPedidosItens;
end;

function TFactoryDAO.DAOPedidosPagamentos: iDAOPedidosPagamentos;
begin
  if not Assigned(FDAOPedidosPagamentos) then
    FDAOPedidosPagamentos := TDAOPedidosPagamentos.New;

  Result := FDAOPedidosPagamentos;
end;

function TFactoryDAO.DAOPessoa: iDAOPessoa;
begin
  if not Assigned(FDAOPessoa) then
    FDAOPessoa := TDAOPessoa.New;

  Result := FDAOPessoa;
end;

function TFactoryDAO.DAOPrazoPagamento: iDAOPrazoPagamento;
begin
  if not Assigned(FDAOPrazoPagamento) then
    FDAOPrazoPagamento := TDAOPrazoPagamento.New;

  Result := FDAOPrazoPagamento;
end;

function TFactoryDAO.DAOPrazoPagamentoItens: iDAOPrazoPagamentoItens;
begin
  if not Assigned(FDAOPrazoPagamentoItens) then
    FDAOPrazoPagamentoItens := TDAOPrazoPagamentoItens.New;

  Result := FDAOPrazoPagamentoItens;
end;

end.
