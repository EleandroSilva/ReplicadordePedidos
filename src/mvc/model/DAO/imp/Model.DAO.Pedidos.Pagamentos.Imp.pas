{*******************************************************}
{                      Be More Web                      }
{          In�cio do projeto 23/04/2025 12:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.DAO.Pedidos.Pagamentos.Imp;

interface

uses
  Data.DB,
  Winapi.Windows,
  Vcl.Dialogs,
  System.SysUtils,

  Model.DAO.Pedidos.Pagamentos.Interfaces,
  Model.Conexao.Firedac.Interfaces,
  Model.Conexao.Query.Interfaces,
  Model.Entidade.Pedidos.Pagamentos.Interfaces,

  Uteis.Interfaces;

type
  TDAOPedidosPagamentos = class(TInterfacedObject, iDAOPedidosPagamentos)
    private
      FPedidosPagamentos : iEntidadePedidosPagamentos<iDAOPedidosPagamentos>;
      FConexao           : iConexao;
      FDataSet           : TDataSet;
      FQuery             : iQuery;
      FUteis             : iUteis;

      function LoopRegistro(Value : Integer): Integer;

      const
      FSQL=('select '+
            'pgto.idpedido      as IdPedido, '+
            'pgto.id_ped        as IdPed, '+
            'pgto.cod_ped       as CodigoPedido, '+
            'pgto.cod_pgto      as IdPagamento, '+
            'pgto.item          as Item, '+
            'prazo.descricao    as nomeprazo, '+
            'pgto.num_pgto      as NumeroPagamento, '+
            'pgto.dt_vencimento as DataVencimento, '+
            'pgto.nova          as ParcelaNova, '+
            'pgto.boleto        as EmitiuBoleto, '+
            'pgto.banco         as NumeroBanco, '+
            'pgto.vl_total      as ValorTotal, '+
            'pgto.vl_parcela    as ValorParcela, '+
            'pgto.qtde_dias     as QuantidadedeDias, '+
            'pgto.pg_com        as PagouComo, '+
            'pgto.comissao      as PagouComissao, '+
            'pgto.lib_com       as LiberouComissao, '+
            'pgto.ocorrencia    as OcorrenciaBanco, '+
            'pgto.LL            as ll, '+
            'pgto.Enviar        as enviar, '+
            'pgto.obs           as ObsPagamento, '+
            'pgto.descontado    as Descontado, '+
            'pgto.cartorio      as EnviadoParaCartorio '+
            'from cad_pgto_ped pgto '+
            'inner join cad_prazo prazo on prazo.cod_prazo = pgto.cod_pgto '
           );
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDAOPedidosPagamentos;

      function DataSet    (DataSource : TDataSource) : iDAOPedidosPagamentos; overload;
      function DataSet                               : TDataSet;              overload;
      function GetAll                                : iDAOPedidosPagamentos;
      function GetbyId    (Id       : Variant)       : iDAOPedidosPagamentos;
      function GetbyParams                           : iDAOPedidosPagamentos; overload;
      function GetbyParams(IdPagamento : Variant)    : iDAOPedidosPagamentos; overload;
      function Post                                  : iDAOPedidosPagamentos;
      function Put                                   : iDAOPedidosPagamentos; overload;
      function Put(Id : Variant)                     : iDAOPedidosPagamentos; overload;
      function Delete                                : iDAOPedidosPagamentos;
      function GenIdAtual                            : Integer;

      function QuantidadeRegistro : Integer;
      function This : iEntidadePedidosPagamentos<iDAOPedidosPagamentos>;
  end;

implementation

uses
  Model.Entidade.Pedidos.Pagamentos.Imp,
  Model.Conexao.Firedac.Firebird.Imp,
  Model.Conexao.Query.Imp,
  Uteis;

constructor TDAOPedidosPagamentos.Create;
begin
  FPedidosPagamentos := TEntidadePedidosPagamentos<iDAOPedidosPagamentos>.New(Self);
  FConexao           := TModelConexaoFiredacFirebird.New;
  FQuery             := TQuery.New;
  FUteis             := TUteis.New;
end;

destructor TDAOPedidosPagamentos.Destroy;
begin
  inherited;
end;

class function TDAOPedidosPagamentos.New: iDAOPedidosPagamentos;
begin
  Result := Self.Create;
end;

function TDAOPedidosPagamentos.DataSet(DataSource: TDataSource): iDAOPedidosPagamentos;
begin
  Result := Self;
  if not Assigned(FDataset) then
    DataSource.DataSet := FQuery.DataSet
  else
    DataSource.DataSet := FDataSet;
end;

function TDAOPedidosPagamentos.DataSet: TDataSet;
begin
  Result := FDataSet;
end;

function TDAOPedidosPagamentos.GetAll: iDAOPedidosPagamentos;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                  .Open
                  .DataSet;

  if not FDataSet.IsEmpty then
  begin
    FPedidosPagamentos.IdPedido(FDataSet.FieldByName('id').AsInteger);
    QuantidadeRegistro;
  end
  else
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      FPedidosPagamentos.IdPedido(0);
      Abort;
    end;
  end;
end;

function TDAOPedidosPagamentos.GetbyId(Id: Variant): iDAOPedidosPagamentos;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                    .Add('where pgto.idpedido=:Idpedido')
                    .Params('Idpedido', Id)
                  .Open
                  .DataSet;
  if not FDataSet.IsEmpty then
    FPedidosPagamentos.IdPedido(FDataSet.FieldByName('idpedido').AsInteger)
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      FPedidosPagamentos.IdPedido(0);
      Abort;
    end;
  end;

end;

function TDAOPedidosPagamentos.GetbyParams: iDAOPedidosPagamentos;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                    .Add('where pp.cpfcnpj=:cpfcnpj')
                    .Add('and p.excluido=:excluido')
                  .Open
                  .DataSet;
  if not FDataSet.IsEmpty then
  begin
    FPedidosPagamentos.IdPedido(FDataSet.FieldByName('id').AsInteger);
    QuantidadeRegistro;
  end;
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      ShowMessage('Erro no TDAOPedidosPagamentos.GetbyParams - ao tentar encontrar pedido por cpfcnpj: ' + E.Message);
      Abort;
    end;
  end;
    FPedidosPagamentos.IdPedido(0);
end;

function TDAOPedidosPagamentos.GetbyParams(IdPagamento: Variant): iDAOPedidosPagamentos;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                    .Add('where pgto.cod_pgto=:idpagamento')
                    .Params('idpagamento', idpagamento)
                  .Open
                  .DataSet;
  if not FDataSet.IsEmpty then
  begin
    FPedidosPagamentos.IdPagamento(FDataSet.FieldByName('idpagamento').AsString);
    QuantidadeRegistro;
  end;
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      FPedidosPagamentos.IdPagamento('0');
      ShowMessage('Erro no TDAOPedidosPagamentos.GetbyParams - ao tentar encontrar pedido por idusuario: ' + E.Message);
      Abort;
    end;
  end;

end;

function TDAOPedidosPagamentos.Post: iDAOPedidosPagamentos;
const
  LSQL=('insert into cad_pgto_ped( '+
                                   'IdPedido, '+
                                   'ID_PED, '+
                                   'COD_PED, '+
                                   'cod_pgto, '+
                                   'ITEM, '+
                                   'num_pgto, '+
                                   'DT_VENCIMENTO, '+
                                   'NOVA, '+
                                   'BOLETO, '+
                                   'BANCO, '+
                                   'VL_TOTAL, '+
                                   'VL_PARCELA, '+
                                   'QTDE_DIAS, '+
                                   'PG_COM, '+
                                   'COMISSAO, '+
                                   'LIB_COM, '+
                                   'OCORRENCIA, '+
                                   'LL, '+
                                   'ENVIAR, '+
                                   'OBS, '+
                                   'DESCONTADO, '+
                                   'CARTORIO '+
                                   ')'+
                                     ' values '+
                                   '('+
                                   ':idpedido, '+
                                   ':idped, '+
                                   ':codigopedido, '+
                                   ':idpagamento, '+
                                   ':item, '+
                                   ':numeropagamento, '+
                                   ':datavencimento, '+
                                   ':parcelanova, '+
                                   ':emitiuboleto, '+
                                   ':numerobanco, '+
                                   ':valortotal, '+
                                   ':valorparcela, '+
                                   ':quantidadededias, '+
                                   ':pagoucomo, '+
                                   ':pagoucomissao, '+
                                   ':liberoucomissao, '+
                                   ':ocorrenciabanco, '+
                                   ':ll, '+
                                   ':enviar, '+
                                   ':obspagamento, '+
                                   ':descontado, '+
                                   ':enviadoparacartorio '+
                                   ')'
       );
begin
  Result := Self;
  GenIdAtual;
  FConexao.StartTransaction;
  try
    FQuery
      .SQL(LSQL)
      .Params('idpedido'            , FPedidosPagamentos.IdPedido)
      .Params('idped'               , FPedidosPagamentos.IdPedido)
      .Params('codigopedido'        , FPedidosPagamentos.CodigoPedido)
      .Params('idpagamento'         , FPedidosPagamentos.IdPagamento)
      .Params('item'                , FPedidosPagamentos.Item)
      .Params('numeropagamento'     , FPedidosPagamentos.NumeroPagamento)
      .Params('datavencimento'      , FPedidosPagamentos.DataVencimento)
      .Params('parcelanova'         , FPedidosPagamentos.ParcelaNova)
      .Params('emitiuboleto'        , FPedidosPagamentos.EmitiuBoleto)
      .Params('numerobanco'         , FPedidosPagamentos.NumeroBanco)
      .Params('valortotal'          , FPedidosPagamentos.ValorTotal)
      .Params('valorparcela'        , FPedidosPagamentos.ValorParcela)
      .Params('quantidadededias'    , FPedidosPagamentos.QuantidadedeDias)
      .Params('pagoucomo'           , FPedidosPagamentos.PagoCom)
      .Params('pagoucomissao'       , FPedidosPagamentos.PagouComissao)
      .Params('liberoucomissao'     , FPedidosPagamentos.LiberouComissao)
      .Params('ocorrenciabanco'     , FPedidosPagamentos.OcorrenciaBanco)
      .Params('ll'                  , FPedidosPagamentos.LL)
      .Params('enviar'              , FPedidosPagamentos.Enviar)
      .Params('obspagamento'        , FPedidosPagamentos.ObsPagamento)
      .Params('descontado'          , FPedidosPagamentos.Descontado)
      .Params('enviadoparacartorio' , FPedidosPagamentos.EnviadoParaCartorio)
      .ExecSQL;

      FConexao.Commit;
      //ShowMessage('Registro pagamentos do pedido replicado com sucesso com o ID: ' + IntToStr(FPedidosPagamentos.IdPedido));
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      ShowMessage('Erro ao replicar pedido itens: ' + E.Message);
      Abort;
    end;
  end;
end;


//Put para atualizar valor pedido
function TDAOPedidosPagamentos.Put(Id: Variant): iDAOPedidosPagamentos;
const
  lSQL=('update pedido set '+
                       'valorproduto     =:valorproduto, '+
                       'valordescontoitem=:valordescontoitem, '+
                       'valorreceber     =:valorreceber '+
                       'where      id    =:id '
       );
begin
  Result := Self;
  FConexao.StartTransaction;
  try
    FQuery
      .SQL(lSQL)
        .Params('id'                , Id)

      .ExecSQL;

    FConexao.Commit;
    ShowMessage('Registro alterado com sucesso!');
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      ShowMessage('Erro no TDAOPedidosPagamentos.Put - ao tentar alterar apenas valores do pedido: ' + E.Message);
      Abort;
    end;
  end;
end;

function TDAOPedidosPagamentos.Put: iDAOPedidosPagamentos;
const
  LSQL=('update pedido set '+
                       'idempresa          =:idempresa, '+
                       'idcaixa            =:idcaixa, '+
                       'idpessoa           =:idpessoa, '+
                       'idcondicaopagamento=:idcondicaopagamento, '+
                       'idusuario          =:idusuario, '+
                       'valorproduto       =:valorproduto, '+
                       'valordesconto      =:valordesconto, '+
                       'valorreceber       =:valorreceber, '+
                       'valordescontoitem  =:valordescontoitem, '+
                       'datahoraemissao    =:datahoraemissao, '+
                       'status             =:status, '+
                       'excluido           =:excluido '+
                       'where id           =:id '
       );
begin
  Result := Self;
  FConexao.StartTransaction;
  try
    FQuery
      .SQL(LSQL)
        .Params('idpedido' , FPedidosPagamentos.IdPedido)
      .ExecSQL;
    FConexao.Commit;
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      ShowMessage('Erro no TDAOPedidosPagamentos.Put - ao tentar alterar pedido: ' + E.Message);
      Abort;
    end;
  end;
end;


function TDAOPedidosPagamentos.Delete: iDAOPedidosPagamentos;
const
  LSQL=('delete from pedido');
begin
  Result := self;
  FConexao.StartTransaction;
  try
    FQuery.SQL(LSQL)
               .Add('id=:idpedido')
                 .Params('idpedido', FPedidosPagamentos.IdPedido)
               .ExecSQL;
    FConexao.Commit;
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      ShowMessage('Erro no TDAOPedidosPagamentos.Delete - ao tentar exclu�r pedido: ' + E.Message);
      Abort;
    end;
  end;
end;

function TDAOPedidosPagamentos.LoopRegistro(Value: Integer): Integer;
begin
  FDataSet.First;
  try
    while not FDataSet.Eof do
    begin
      Value := Value + 1;
      FDataSet.Next;
    end;
  finally
    Result := Value;
  end;
end;

function TDAOPedidosPagamentos.QuantidadeRegistro: Integer;
begin
  Result := LoopRegistro(0);
end;

function TDAOPedidosPagamentos.GenIdAtual: Integer;
begin
  FDataSet := FQuery
                .SQL('SELECT GEN_ID(ID_CODPED, 0) FROM RDB$DATABASE;')
                .Open
                .DataSet;
  Result      :=FDataSet.FieldByName('gen_id').AsInteger;
  FPedidosPagamentos.IdPedido(Result);
  FPedidosPagamentos.CodigoPedido(IntToStr(Result));
  FPedidosPagamentos.CodigoPedido(StringOfChar('0', 5 - Length(FPedidosPagamentos.CodigoPedido)) + FPedidosPagamentos.CodigoPedido);
end;

function TDAOPedidosPagamentos.This: iEntidadePedidosPagamentos<iDAOPedidosPagamentos>;
begin
  Result := FPedidosPagamentos;
end;

end.
