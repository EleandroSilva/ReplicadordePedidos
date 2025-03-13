{*******************************************************}
{                      Be More Web                      }
{          Início do projeto 23/04/2025 12:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.DAO.Pedidos.Imp;

interface

uses
  Data.DB,
  Winapi.Windows,
  Vcl.Dialogs,
  System.SysUtils,

  Model.DAO.Pedidos.Interfaces,
  Model.Entidade.Pedidos.Interfaces,
  Model.Conexao.Firedac.Interfaces,
  Model.Conexao.Query.Interfaces,
  Uteis.Interfaces;

type
  TDAOPedidos = class(TInterfacedObject, iDAOPedidos)
    private
      FPedidos    : iEntidadePedidos<iDAOPedidos>;
      FConexao    : iConexao;
      FDataSet    : TDataSet;
      FQuery      : iQuery;
      FUteis      : iUteis;
      FWhere      : String;
      FOrdem      : String;
      const
      FSQL=('select '+
            'p.id, '+
            'p.cod_emp           as idempresa, '+
            'p.cod_ped           as codigopedido, '+
            'p.id_cod_ped        as idcodigopedido, '+
            'p.idpessoa          as idpessoa, '+
            'c.razao_social      as nomepessoa, '+
            'p.cod_cli           as codigocliente, '+
            'p.cod_rep           as idrepresentante, '+
            'r.nome              as nomerepresentante, '+
            'p.cod_transp        as idtransporte, '+
            't.nome              as nometransporte, '+
            'p.cod_transp_red    as idredespacho, '+
            'p.cod_pgto          as idpagamento, '+
            'p.id_tv             as idtelevenda, '+
            'p.pedido            as numeropedido, '+
            'p.cfop, '+
            'p.usuario           as nomeusuario, '+
            'p.dt_cadastro       as datacadastro, '+
            'p.dt_entrega        as dataentrega, '+
            'p.carga             as montoucarga, '+
            'p.estoque           as saiudoestoque, '+
            'p.faturado, '+
            'p.comissao, '+
            'p.liberado, '+
            'p.impressa, '+
            'p.lib_com           as liberoucomissao, '+
            'p.etiqueta, '+
            'p.romaneio, '+
            'p.producao          as montouproducao, '+
            'p.excluido, '+
            'p.enviar, '+
            'p.remoto            as pedidoremoto, '+
            'p.hr_cadastro       as horacadastro, '+
            'p.conferido, '+
            'p.tipo              as tipopedido, '+
            'p.tipo_pgto         as tipopagamento, '+
            'case p.tipo_pgto '+
            'when  0 then ''D'' '+
            'when  1 then ''C'' '+
            'when  2 then ''B'' '+
            'when  3 then ''F'' '+
            'when  4 then ''V'' '+
            'when  5 then ''1'' '+
            'when  6 then ''3'' '+
            'when  7 then ''4'' '+
            'when  8 then ''5'' '+
            'when  9 then ''6'' '+
            'when 10 then ''7'' '+
            'when 11 then ''8'' '+
            'when 12 then ''P'' '+
            'when 13 then ''9'' '+
            'end as PagoCom, '+
            'p.tomada            as tomadanfe, '+
            'p.perc_com          as aliquotacomissao, '+
            'p.perc_desc         as aliquotadesconto, '+
            'p.perc_frete        as aliquotafrete, '+
            'p.perc_tab          as aliquotanfe, '+
            'p.perc_icms         as aliquotaicms, '+
            'p.perc_ipi          as aliquotaipi, '+
            'p.perc_com_tv       as aliquotacomissaotelevendas, '+
            'p.perc_seg          as aliquotaseguro, '+
            'p.out_desp          as valoroutrasdespesas, '+
            'p.sub_total         as subtotal, '+
            'p.total             as totalpedido, '+
            'p.vl_desconto       as valordesconto, '+
            'p.vl_impostos       as valorimpostos, '+
            'p.vl_receber        as valorreceber, '+
            'p.peso_liq          as pesoliquido, '+
            'p.peso              as pesobruto, '+
            'p.volume            as qtdevolume, '+
            'p.tt_cubico         as totalcubico, '+
            'p.tele_venda        as televenda, '+
            'p.pg_com            as pagocom, '+
            'p.a_p               as aoup, '+
            'p.Tabela, '+
            'p.Status, '+
            'p.obs, '+
            'p.obs_ped          as obspedido, '+
            'p.Mun_Frete        as munfrete, '+
            'p.Loj_Atacado      as lojaatacado, '+
            'p.Tab_Preco_Manual as tabelaprecomanual, '+
            'p.frete '+
            'from cad_ped p '+
            'inner join cad_cli    c on c.id_cli     = p.idpessoa '+
            'inner join cad_transp t on t.cod_transp = p.cod_transp '+
            'inner join cad_rep    r on r.cod_rep    = p.cod_rep '
           );

      function LoopRegistro(Value : Integer): Integer;
      function NovoGenId                             : Integer;
      procedure SalvarNovoGenId;
      function OrderBy : String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDAOPedidos;

      function DataSet    (DataSource : TDataSource) : iDAOPedidos; overload;
      function DataSet                               : TDataSet;    overload;
      function GetAll                                : iDAOPedidos;
      function GetbyId    (Id : Variant)             : iDAOPedidos;
      function GetbyParams                           : iDAOPedidos; overload;
      function GetbyParams(IdUsuario : Variant)      : iDAOPedidos; overload;
      function GetbyParams(IdPessoa : Integer)       : iDAOPedidos; overload;
      function GetbyParams(NomePessoa : String)      : iDAOPedidos; overload;
      function Post                                  : iDAOPedidos;
      function Put                                   : iDAOPedidos; overload;
      function Put(Id : Variant)                     : iDAOPedidos; overload;
      function Delete                                : iDAOPedidos;

      function QuantidadeRegistro : Integer;
      function This : iEntidadePedidos<iDAOPedidos>;
  end;

implementation

uses
  Model.Entidade.Pedidos.Imp,
  Model.Conexao.Firedac.Firebird.Imp,
  Model.Conexao.Query.Imp,
  Uteis;

{ TDAOPedidos }

constructor TDAOPedidos.Create;
begin
  FPedidos := TEntidadePedidos<iDAOPedidos>.New(Self);
  FConexao := TModelConexaoFiredacFirebird.New;
  FQuery   := TQuery.New;
  FUteis   := TUteis.New;
end;

destructor TDAOPedidos.Destroy;
begin
  inherited;
end;

class function TDAOPedidos.New: iDAOPedidos;
begin
  Result := Self.Create;
end;

function TDAOPedidos.DataSet(DataSource: TDataSource): iDAOPedidos;
begin
  Result := Self;
  if not Assigned(FDataset) then
    DataSource.DataSet := FQuery.DataSet
  else
    DataSource.DataSet := FDataSet;
end;

function TDAOPedidos.DataSet: TDataSet;
begin
  Result := FDataSet;
end;

function TDAOPedidos.GetAll: iDAOPedidos;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                  .Add('where p.dt_cadastro between :datainicialfiltro and :datafinalfiltro')
                  .Add('and   p.excluido=:excluido')
                  .Add(OrderBy)
                  .Params('datainicialfiltro', FormatDateTime('dd.mm.yyyy',FPedidos.DataInicialFiltro))
                  .Params('datafinalfiltro'  , FormatDateTime('dd.mm.yyyy',FPedidos.DataFinalFiltro))
                  .Params('excluido'         , FPedidos.Excluido)
                  .Open
                  .DataSet;

  if not FDataSet.IsEmpty then
  begin
    FPedidos.Id(FDataSet.FieldByName('id').AsInteger);
    QuantidadeRegistro;
  end
  else
    ShowMessage('Registro não encontrado!');
  except
    on E: Exception do
    begin
      FPedidos.Id(0);
      Abort;
    end;
  end;
end;

function TDAOPedidos.GetbyId(Id: Variant): iDAOPedidos;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                    .Add('where p.Id=:Id')
                    .Add('and p.excluido=:excluido')
                    .Params('Id', Id)
                    .params('excluido', FPedidos.Excluido)
                  .Open
                  .DataSet;
  if not FDataSet.IsEmpty then
    FPedidos.Id(FDataSet.FieldByName('id').AsInteger)
    else
    ShowMessage('Registro não encontrado!');
  except
    on E: Exception do
    begin
      FPedidos.Id(0);
      Abort;
    end;
  end;
end;

function TDAOPedidos.GetbyParams(IdPessoa: Integer): iDAOPedidos;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                    .Add('where p.Idpessoa=:Idpessoa')
                    .Add('and p.excluido=:excluido')
                    .Params('Idpessoa', IdPessoa)
                    .params('excluido', FPedidos.Excluido)
                  .Open
                  .DataSet;
  if not FDataSet.IsEmpty then
    FPedidos.Id(FDataSet.FieldByName('id').AsInteger)
    else
    ShowMessage('Registro não encontrado!');
  except
    on E: Exception do
    begin
      FPedidos.Id(0);
      Abort;
    end;
  end;
end;

function TDAOPedidos.GetbyParams: iDAOPedidos;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                    .Add('where pp.cpfcnpj=:cpfcnpj')
                    .Add('and p.excluido=:excluido')
                    .params('excluido', FPedidos.Excluido)
                  .Open
                  .DataSet;
  if not FDataSet.IsEmpty then
  begin
    FPedidos.Id(FDataSet.FieldByName('id').AsInteger);
    QuantidadeRegistro;
  end
  else
    ShowMessage('Registro não encontrado!');
  except
    on E: Exception do
    begin
      ShowMessage('Erro no TDAOPedidos.GetbyParams - ao tentar encontrar pedido por cpfcnpj: ' + E.Message);
      Abort;
    end;
  end;
    FPedidos.Id(0);
end;

function TDAOPedidos.GetbyParams(IdUsuario: Variant): iDAOPedidos;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                    .Add('where p.usuario=:usuario')
                    .Add('and p.excluido=:excluido')
                    .Params('usuario', FPedidos.Usuario)
                    .params('excluido',  FPedidos.Excluido)
                  .Open
                  .DataSet;
  if not FDataSet.IsEmpty then
  begin
    FPedidos.Id(FDataSet.FieldByName('id').AsInteger);
    QuantidadeRegistro;
  end
  else
    ShowMessage('Registro não encontrado!');
  except
    on E: Exception do
    begin
      FPedidos.Id(0);
      ShowMessage('Erro no TDAOPedidos.GetbyParams - ao tentar encontrar pedido por idusuario: ' + E.Message);
      Abort;
    end;
  end;

end;

function TDAOPedidos.GetbyParams(NomePessoa: String): iDAOPedidos;
begin
  Result := Self;
  try
    FDataSet := FQuery
                  .SQL(FSQL)
                  .Add('where upper(c.razao_social) like :nomepessoa')
                  .Add('and p.excluido=:excluido')
                  .Params('nomepessoa', '%' + UpperCase(NomePessoa) + '%')
                  .Params('excluido', FPedidos.Excluido)
                  .Open
                  .DataSet;

  if not FDataSet.IsEmpty then
  begin
    FPedidos.Id(FDataSet.FieldByName('id').AsInteger);
    QuantidadeRegistro;
  end
  else
    ShowMessage('Registro não encontrado!');
  except
    on E: Exception do
    begin
      FPedidos.Id(0);
      ShowMessage('Erro no TDAOPedidos.GetbyParams - ao tentar encontrar pedido por nomepessoa: ' + E.Message);
      Abort;
    end;
  end;
end;

function TDAOPedidos.Post: iDAOPedidos;
const
  LSQL=('insert into cad_ped( '+
                             'id, '+
                             'cod_emp, '+
                             'cod_ped, ' +
                             'id_cod_ped, '+
                             'idpessoa, '+
                             'cod_cli, '+
                             'cod_rep, '+
                             'cod_transp, '+
                             'cod_transp_red, '+
                             'cod_pgto, '+
                             'id_tv, '+
                             'pedido, '+
                             'cfop, '+
                             'usuario, '+
                             'dt_cadastro, '+
                             'dt_entrega, '+
                             'carga, '+
                             'estoque, '+
                             'faturado, '+
                             'comissao, '+
                             'liberado, '+
                             'impressa, '+
                             'lib_com, '+
                             'etiqueta, '+
                             'romaneio, '+
                             'producao, '+
                             'excluido, '+
                             'enviar, '+
                             'remoto, '+
                             'hr_cadastro, '+
                             'conferido, '+
                             'tipo, '+
                             'tipo_pgto, '+
                             'tomada, '+
                             'perc_com, '+
                             'perc_desc, '+
                             'perc_frete, '+
                             'perc_tab, '+
                             'perc_icms,'+
                             'perc_ipi, '+
                             'perc_com_tv, '+
                             'perc_seg, '+
                             'out_desp, '+
                             'sub_total, '+
                             'total, '+
                             'vl_desconto, '+
                             'vl_impostos, '+
                             'vl_receber, '+
                             'peso_liq, '+
                             'peso, '+
                             'volume, '+
                             'tt_cubico, '+
                             'tele_venda, '+
                             'pg_com, '+
                             'a_p, '+
                             'Tabela, '+
                             'Status, '+
                             'obs, '+
                             'obs_ped, '+
                             'Mun_Frete,'+
                             'Loj_Atacado, '+
                             'Tab_Preco_Manual, '+
                             'frete '+
                           ')'+
                             ' values '+
                           '('+
                             ':id,'+
                             ':idempresa, '+
                             ':codigopedido, ' +
                             ':idcodigopedido, '+
                             ':idpessoa, '+
                             ':codigocliente, '+
                             ':idrepresentante, '+
                             ':idtransporte, '+
                             ':idredespacho, '+
                             ':idpagamento, '+
                             ':idtelevenda, '+
                             ':numeropedido, '+
                             ':cfop, '+
                             ':nomeusuario, '+
                             ':datacadastro, '+
                             ':dataentrega, '+
                             ':montoucarga, '+
                             ':saiudoestoque, '+
                             ':faturado, '+
                             ':comissao, '+
                             ':liberado, '+
                             ':impressa, '+
                             ':liberoucomissao, '+
                             ':etiqueta, '+
                             ':romaneio, '+
                             ':montouproducao, '+
                             ':excluido, '+
                             ':enviar, '+
                             ':pedidoremoto, '+
                             ':horacadastro, '+
                             ':conferido, '+
                             ':tipopedido, '+
                             ':tipopagamento, '+
                             ':tomadanfe, '+
                             ':aliquotacomissao, '+
                             ':aliquotadesconto, '+
                             ':aliquotafrete, '+
                             ':aliquotanfe, '+
                             ':aliquotaicms, '+
                             ':aliquotaipi, '+
                             ':aliquotacomissaotelevendas, '+
                             ':aliquotaseguro, '+
                             ':valoroutrasdespesas, '+
                             ':subtotal, '+
                             ':totalpedido, '+
                             ':valordesconto, '+
                             ':valorimpostos, '+
                             ':valorreceber, '+
                             ':pesoliquido, '+
                             ':pesobruto, '+
                             ':qtdevolume, '+
                             ':totalcubico, '+
                             ':televenda, '+
                             ':pagocom, '+
                             ':aoup, '+
                             ':Tabela, '+
                             ':Status, '+
                             ':obs, '+
                             ':obspedido, '+
                             ':MunFrete,'+
                             ':LojaAtacado, '+
                             ':TabelaPrecoManual, '+
                             ':frete '+
                            ')'
       );
begin
  Result := Self;
  FConexao.StartTransaction;
  try
    NovoGenId;
    FQuery
      .SQL(LSQL)
      .Params('id'                         , FPedidos.Id)
      .Params('idempresa'                  , FPedidos.IdEmpresa)
      .Params('codigopedido'               , FPedidos.CodigoPedido)
      .Params('idcodigopedido'             , FPedidos.Id)
      .Params('idpessoa'                   , FPedidos.IdPessoa)
      .Params('codigocliente'              , FPedidos.CodigoCliente)
      .Params('idrepresentante'            , FPedidos.IdRepresentante)
      .Params('idtransporte'               , FPedidos.IdTransporte)
      .Params('idredespacho'               , FPedidos.IdRedespacho)
      .Params('idpagamento'                , FPedidos.IdPagamento)
      .Params('idtelevenda'                , FPedidos.IdTeleVenda)
      .Params('numeropedido'               , FPedidos.NumeroPedido)
      .Params('cfop'                       , FPedidos.CFOP)
      .Params('nomeusuario'                , FUteis.NomeUsuario)
      .Params('datacadastro'               , FPedidos.DataCadastro)
      .Params('dataentrega'                , FPedidos.DataEntrega)
      .Params('montoucarga'                , FPedidos.MontouCarga)
      .Params('saiudoestoque'              , FPedidos.SaiudoEstoque)
      .Params('faturado'                   , FPedidos.Faturado)
      .Params('comissao'                   , FPedidos.Comissao)
      .Params('liberado'                   , FPedidos.Liberado)
      .Params('impressa'                   , FPedidos.Impressa)
      .Params('liberoucomissao'            , FPedidos.LiberouComissao)
      .Params('etiqueta'                   , FPedidos.Etiqueta)
      .Params('romaneio'                   , FPedidos.Romaneio)
      .Params('montouproducao'             , FPedidos.MontouProducao)
      .Params('excluido'                   , FPedidos.Excluido)
      .Params('enviar'                     , FPedidos.Enviar)
      .Params('pedidoremoto'               , FPedidos.PedidoRemoto)
      .Params('horacadastro'               , FPedidos.HoraCadastro)
      .Params('conferido'                  , FPedidos.Conferido)
      .Params('tipopedido'                 , FPedidos.TipoPedido)
      .Params('tipopagamento'              , FPedidos.TipoPagamento)
      .Params('tomadanfe'                  , FPedidos.TomadaNFe)
      .Params('aliquotacomissao'           , FPedidos.AliquotaComissao)
      .Params('aliquotadesconto'           , FPedidos.AliquotaDesconto)
      .Params('aliquotafrete'              , FPedidos.aliquotaFrete)
      .Params('aliquotanfe'                , FPedidos.AliquotaNFe)
      .Params('aliquotaicms'               , FPedidos.AliquotaICMS)
      .Params('aliquotaipi'                , FPedidos.AliquotaIPI)
      .Params('aliquotacomissaotelevendas' , FPedidos.AliquotaComissaoTeleVendas)
      .Params('aliquotaseguro'             , FPedidos.AliquotaSeguro)
      .Params('valoroutrasdespesas'        , FPedidos.ValorOutrasDespesas)
      .Params('subtotal'                   , FPedidos.SubTotal)
      .Params('totalpedido'                , FPedidos.ValorTotal)
      .Params('valordesconto'              , FPedidos.ValorDesconto)
      .Params('valorimpostos'              , FPedidos.ValorImpostos)
      .Params('valorreceber'               , FPedidos.ValorAReceber)
      .Params('pesoliquido'                , FPedidos.PesoLiquido)
      .Params('pesobruto'                  , FPedidos.PesoBruto)
      .Params('qtdevolume'                 , FPedidos.QtdeVolume)
      .Params('totalcubico'                , FPedidos.TotalCubico)
      .Params('televenda'                  , FPedidos.TeleVenda)
      .Params('pagocom'                    , FPedidos.PagoCom)
      .Params('aoup'                       , FPedidos.AouP)
      .Params('tabela'                     , FPedidos.Tabela)
      .Params('status'                     , FPedidos.Status)
      .Params('obs'                        , FPedidos.Obs)
      .Params('obspedido'                  , FPedidos.ObsPedido)
      .Params('MunFrete'                   , FPedidos.MunFrete)
      .Params('lojaatacado'                , FPedidos.LojaAtacado)
      .Params('tabelaprecomanual'          , FPedidos.TabelaPrecoManual)
      .Params('frete'                      , FPedidos.Frete)
      .ExecSQL;

      FConexao.Commit;
      SalvarNovoGenId;
      //ShowMessage('Registro replicado com ID: ' + IntToStr(FPedidos.Id));
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      ShowMessage('Erro ao replicar pedido: ' + E.Message);
      Abort;
    end;
  end;
end;


//Put para atualizar valor pedido
function TDAOPedidos.Put(Id: Variant): iDAOPedidos;
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
        .Params('valorproduto'      , FPedidos.SubTotal)
        .Params('valordescontoitem' , FPedidos.ValorDesconto)
        .Params('valorreceber'      , FPedidos.ValorAReceber)
      .ExecSQL;

    FConexao.Commit;
    ShowMessage('Registro alterado com sucesso!');
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      ShowMessage('Erro no TDAOPedidos.Put - ao tentar alterar apenas valores do pedido: ' + E.Message);
      Abort;
    end;
  end;
end;

function TDAOPedidos.Put: iDAOPedidos;
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
        .Params('id'                  , FPedidos.Id)
        .Params('idempresa'           , FPedidos.IdEmpresa)
        .Params('idpessoa'            , FPedidos.IdPessoa)
        .Params('subtotal'            , FPedidos.SubTotal)
        .Params('valordesconto'       , FPedidos.ValorDesconto)
        .Params('valorreceber'        , FPedidos.ValorAReceber)
        .Params('status'              , FPedidos.Status)
        .Params('excluido'            , FPedidos.Excluido)
      .ExecSQL;
    FConexao.Commit;
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      ShowMessage('Erro no TDAOPedidos.Put - ao tentar alterar pedido: ' + E.Message);
      Abort;
    end;
  end;
end;


function TDAOPedidos.Delete: iDAOPedidos;
const
  LSQL=('delete from pedido');
begin
  Result := self;
  FConexao.StartTransaction;
  try
    FQuery.SQL(LSQL)
               .Add('id=:id')
                 .Params('id', FPedidos.Id)
               .ExecSQL;
    FConexao.Commit;
  except
    on E: Exception do
    begin
      FConexao.Rollback;
      ShowMessage('Erro no TDAOPedidos.Delete - ao tentar excluír pedido: ' + E.Message);
      Abort;
    end;
  end;
end;

function TDAOPedidos.LoopRegistro(Value: Integer): Integer;
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

function TDAOPedidos.QuantidadeRegistro: Integer;
begin
  Result := LoopRegistro(0);
end;

function TDAOPedidos.NovoGenId: Integer;
begin
  FDataSet := FQuery
                .SQL('SELECT GEN_ID(ID_CODPED, 0) FROM RDB$DATABASE;')
                .Open
                .DataSet;
  Result      :=FDataSet.FieldByName('gen_id').AsInteger;
  FPedidos.Id(Result+1);
  FPedidos.CodigoPedido(IntToStr(Result+1));
end;

procedure TDAOPedidos.SalvarNovoGenId;
begin
  FQuery
      .SQL('SET GENERATOR ID_CODPED TO ' + IntToStr(FPedidos.Id))
      .ExecSQL;
end;

function TDAOPedidos.OrderBy: String;
begin
  case FPedidos.TipoOrdemFiltro of
    0 : Result := 'order by p.id asc';//idpedido
    1 : Result := 'order by p.cod_cli';//idcliente
    2 : Result := 'order by c.razao_social';//nome cliente
  end;
end;

function TDAOPedidos.This: iEntidadePedidos<iDAOPedidos>;
begin
  Result := FPedidos;
end;

end.
