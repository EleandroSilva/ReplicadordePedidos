{*******************************************************}
{                      Be More Web                      }
{          Início do projeto 06/03/2025 19:56           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.DAO.Prazo.Pagamento.Imp;

interface

uses
  Data.DB,

  Model.DAO.Prazo.Pagamento.Interfaces,
  Model.Entidade.Prazo.Pagamento.Interfaces,
  Model.Conexao.Firedac.Interfaces,
  Model.Conexao.Query.Interfaces;

type
  TDAOPrazoPagamento = class(TInterfacedObject, iDAOPrazoPagamento)
    private
      FPrazoPagamento : iEntidadePrazoPagamento<iDAOPrazoPagamento>;
      FConexao        : iConexao;
      FDataSet        : TDataSet;
      FQuery          : iQuery;
      const
        FSQL =('select * from cad_prazo pp '
              );
      function OrderBy : String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDAOPrazoPagamento;

      function DataSet    (DataSource : TDataSource) : iDAOPrazoPagamento; overload;
      function DataSet                               : TDataSet;           overload;
      function GetAll                                : iDAOPrazoPagamento;
      function GetbyId    (Id : Variant)             : iDAOPrazoPagamento;
      function GetbyParams(NomePagamento : String)   : iDAOPrazoPagamento;

      function This : iEntidadePrazoPagamento<iDAOPrazoPagamento>;
  end;

implementation

uses
  Model.Entidade.Prazo.Pagamento.Imp,
  Model.Conexao.Firedac.Firebird.Imp,
  Model.Conexao.Query.Imp, System.SysUtils, Vcl.Dialogs;

{ TDAOPrazoPagamento }

constructor TDAOPrazoPagamento.Create;
begin
  FPrazoPagamento := TEntidadePrazoPagamento<iDAOPrazoPagamento>.New(Self);
  FConexao := TModelConexaoFiredacFirebird.New;
  FQuery   := TQuery.New;
end;

destructor TDAOPrazoPagamento.Destroy;
begin
  inherited;
end;

class function TDAOPrazoPagamento.New: iDAOPrazoPagamento;
begin
  Result := Self.Create;
end;

function TDAOPrazoPagamento.OrderBy: String;
begin
  Result := 'order by descricao ';
end;

function TDAOPrazoPagamento.DataSet(DataSource: TDataSource): iDAOPrazoPagamento;
begin
  Result := Self;
  if not Assigned(FDataset) then
    DataSource.DataSet := FQuery.DataSet
  else
    DataSource.DataSet := FDataSet;
end;

function TDAOPrazoPagamento.DataSet: TDataSet;
begin
  Result := FDataSet;
end;

function TDAOPrazoPagamento.GetAll: iDAOPrazoPagamento;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                  .Add(OrderBy)
                  .Open
                  .DataSet;

  if not FDataSet.IsEmpty then
  begin
    FPrazoPagamento.Id(FDataSet.FieldByName('id').AsInteger);
  end
  else
    ShowMessage('Registro não encontrado!');
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      FPrazoPagamento.Id(0);
      Abort;
    end;
  end;
end;

function TDAOPrazoPagamento.GetbyId(Id: Variant): iDAOPrazoPagamento;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                    .Add('where pp.Id=:Id')
                    .Params('Id', Id)
                  .Open
                  .DataSet;
  if not FDataSet.IsEmpty then
    FPrazoPagamento.Id(FDataSet.FieldByName('id').AsInteger)
    else
    ShowMessage('Registro não encontrado!');
  except
    on E: Exception do
    begin
      FPrazoPagamento.Id(0);
      Abort;
    end;
  end;
end;

function TDAOPrazoPagamento.GetbyParams(NomePagamento: String): iDAOPrazoPagamento;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                  .Add('where upper(pp.descricao) like :NomePagamento')
                  .Params('NomePagamento', '%' + UpperCase(NomePagamento) + '%')
                  .Open
                  .DataSet;

  if not FDataSet.IsEmpty then
  begin
    FPrazoPagamento.Id(FDataSet.FieldByName('id').AsInteger);
  end
  else
    ShowMessage('Registro não encontrado!');
  except
    on E: Exception do
    begin
      FPrazoPagamento.Id(0);
      ShowMessage('Erro no TDAOPrazoPagamento.GetbyParams - ao tentar encontrar pedido por NomePamento: ' + E.Message);
      Abort;
    end;
  end;
end;

function TDAOPrazoPagamento.This: iEntidadePrazoPagamento<iDAOPrazoPagamento>;
begin
  Result := FPrazoPagamento;
end;

end.
