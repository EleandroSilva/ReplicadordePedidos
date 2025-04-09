{*******************************************************}
{                      Be More Web                      }
{          Início do projeto 09/04/2025 08:45           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.DAO.Empresa.Imp;

interface

uses
  Data.DB,
  Vcl.Dialogs,
  System.SysUtils,

  Model.DAO.Empresa.Interfaces,
  Model.Conexao.Firedac.Interfaces,
  Model.Conexao.Query.Interfaces,
  Uteis.Interfaces,
  Model.Entidade.Empresa.Interfaces;

type
  TDAOEmpresa = class(TInterfacedObject, iDAOEmpresa)
    private
      FEmpresa : iEntidadeEmpresa<iDAOEmpresa>;
      FConexao : iConexao;
      FDataSet : TDataSet;
      FQuery   : iQuery;
      FUteis   : iUteis;

      const
      FSQL=('select '+
            'emp.id, '+
            'emp.razao_social as nomeempresarial, '+
            'emp.nome as nomefantasia, '+
            'emp.cnpj, '+
            'emp.ie as inscricaoestadual '+
            'from cad_razao_social emp '
           );
      function OrderBy : String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDAOEmpresa;

      function DataSet    (DataSource : TDataSource) : iDAOEmpresa; overload;
      function DataSet                               : TDataSet;   overload;
      function GetAll                                : iDAOEmpresa;
      function GetbyId    (Id : Variant)             : iDAOEmpresa;
      function GetbyParams                           : iDAOEmpresa; overload;
      function GetbyParams(NomeEmpresarial : String) : iDAOEmpresa; overload;

      function This : iEntidadeEmpresa<iDAOEmpresa>;

  end;

implementation

uses
  Model.Entidade.Empresa.Imp,
  Model.Conexao.Firedac.Firebird.Imp,
  Model.Conexao.Query.Imp,
  Uteis;

{ TDAOEmpresa }

constructor TDAOEmpresa.Create;
begin
  FEmpresa := TEntidadeEmpresa<iDAOEmpresa>.New(Self);
  FConexao := TModelConexaoFiredacFirebird.New;
  FQuery   := TQuery.New;
  FUteis   := TUteis.New;
end;

destructor TDAOEmpresa.Destroy;
begin
  inherited;
end;

class function TDAOEmpresa.New: iDAOEmpresa;
begin
  Result := Self.Create;
end;

function TDAOEmpresa.DataSet(DataSource: TDataSource): iDAOEmpresa;
begin
  Result := Self;
  if not Assigned(FDataset) then
    DataSource.DataSet := FQuery.DataSet
  else
    DataSource.DataSet := FDataSet;
end;

function TDAOEmpresa.DataSet: TDataSet;
begin
  Result := FDataSet;
end;

function TDAOEmpresa.GetAll: iDAOEmpresa;
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
    FEmpresa.Id(FDataSet.FieldByName('id').AsInteger);
  end
  else
    ShowMessage('Registro não encontrado!');
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      FEmpresa.Id(0);
      Abort;
    end;
  end;
end;

function TDAOEmpresa.GetbyId(Id: Variant): iDAOEmpresa;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                    .Add('where emp.Id=:Id')
                    .Params('Id', Id)
                  .Open
                  .DataSet;
  if not FDataSet.IsEmpty then
    FEmpresa.Id(FDataSet.FieldByName('id').AsInteger)
  else
    ShowMessage('Registro não encontrado!');
  except
    on E: Exception do
    begin
      FEmpresa.Id(0);
      Abort;
    end;
  end;
end;

function TDAOEmpresa.GetbyParams: iDAOEmpresa;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                    .Add('where emp.cnpj=: cnpj')
                  .Open
                  .DataSet;
  if not FDataSet.IsEmpty then
  begin
    FEmpresa.Id(FDataSet.FieldByName('id').AsInteger);
  end
  else
    ShowMessage('Registro não encontrado!');
  except
    on E: Exception do
    begin
      ShowMessage('Erro no TDAOEmpresa.GetbyParams - ao tentar encontrar empresa por CNPJ: ' + E.Message);
      Abort;
    end;
  end;
    FEmpresa.Id(0);
end;

function TDAOEmpresa.GetbyParams(NomeEmpresarial: String): iDAOEmpresa;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                  .Add('where upper(emp.razao_social) like :nomeempresarial')
                  .Params('nomeempresarial', '%' + UpperCase(NomeEmpresarial) + '%')
                  .Open
                  .DataSet;

  if not FDataSet.IsEmpty then
  begin
    FEmpresa.Id(FDataSet.FieldByName('id').AsInteger);
  end
  else
    ShowMessage('Registro não encontrado!');
  except
    on E: Exception do
    begin
      FEmpresa.Id(0);
      ShowMessage('Erro no TDAOEmpresa.GetbyParams - ao tentar encontrar Empresa por NomeEmpresarial: ' + E.Message);
      Abort;
    end;
  end;
end;

function TDAOEmpresa.OrderBy: String;
begin
  Result := 'order by emp.Razao_Social';
end;

function TDAOEmpresa.This: iEntidadeEmpresa<iDAOEmpresa>;
begin
  Result := FEmpresa;
end;

end.
