{*******************************************************}
{                      Be More Web                      }
{          Início do projeto 23/04/2025 12:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit ReplicarPedidos;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.DBCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Datasnap.DBClient,

  Controller.Interfaces,
  Uteis.Interfaces;

type
  TfrmReplicarPedidos = class(TForm)
    pPrincipal: TPanel;
    dsPedidos: TDataSource;
    DSPedidoItens: TDataSource;
    DSPedidoPagamentos: TDataSource;


    //cdsPedidoItens
    cdsPedidoItens: TClientDataSet;
    cdsPedidoItensitem: TIntegerField;
    cdsPedidoItensidpedido: TStringField;
    cdsPedidoItensidproduto: TIntegerField;
    cdsPedidoItensidtamanho: TIntegerField;
    cdsPedidoItenscodigoproduto: TStringField;
    cdsPedidoItenscodigobarra: TStringField;
    cdsPedidoItenscodigocor: TStringField;
    cdsPedidoItenscodigoacessorio: TStringField;
    cdsPedidoItensnumeropedido: TStringField;
    cdsPedidoItenscodigotamanho: TStringField;
    cdsPedidoItensean13: TStringField;
    cdsPedidoItensean23: TStringField;
    cdsPedidoItenscfop: TStringField;
    cdsPedidoItenscst: TStringField;
    cdsPedidoItenscf: TStringField;
    cdsPedidoItensaliquotacomissao: TCurrencyField;
    cdsPedidoItensaliquotaicms: TCurrencyField;
    cdsPedidoItensaliquotaipi: TCurrencyField;
    cdsPedidoItensaliquotavincicms: TCurrencyField;
    cdsPedidoItensaliquotavinciss: TCurrencyField;
    cdsPedidoItensaliquotadesconto: TCurrencyField;
    cdsPedidoItensaliquotadescontopedido: TCurrencyField;
    cdsPedidoItensvalortabela: TCurrencyField;
    cdsPedidoItensquantidade: TCurrencyField;
    cdsPedidoItensvalorcusto: TCurrencyField;
    cdsPedidoItensvalorproduto: TCurrencyField;
    cdsPedidoItenssubtotalproduto: TCurrencyField;
    cdsPedidoItensvalordescontoproduto: TCurrencyField;
    cdsPedidoItensvalorportabela: TCurrencyField;
    cdsPedidoItensvalortotalportabela: TCurrencyField;
    cdsPedidoItensvalorfinalproduto: TCurrencyField;
    cdsPedidoItenslarguraproduto: TCurrencyField;
    cdsPedidoItenscomprimentoproduto: TCurrencyField;
    cdsPedidoItensespessuraproduto: TCurrencyField;
    cdsPedidoItenspeca: TCurrencyField;
    cdsPedidoItenspesoproduto: TCurrencyField;
    cdsPedidoItenscubicoproduto: TCurrencyField;
    cdsPedidoItenscancelado: TStringField;
    cdsPedidoItenssaiudoestoque: TStringField;
    cdsPedidoItenscoug: TIntegerField;
    cdsPedidoItensproducao: TIntegerField;
    cdsPedidoItensfundopreto: TIntegerField;
    //Final cdsPedidoItens
    //Inicio cdsPedidos
    cdsPedidos: TClientDataSet;
    cdsPedidosid: TIntegerField;
    cdsPedidosCodigoPedido: TStringField;
    cdsPedidosCodigoCliente: TStringField;
    cdsPedidosIdPessoa: TIntegerField;
    cdsPedidosIdRepresentante: TStringField;
    cdsPedidosIdTransporte: TStringField;
    cdsPedidosIdPagamento: TStringField;
    cdsPedidosIdEmpresa: TStringField;
    cdsPedidosNumeroPedido: TStringField;
    cdsPedidosIdRedespacho: TStringField;
    cdsPedidosIdTeleVenda: TIntegerField;
    cdsPedidosDataCadastro: TDateTimeField;
    cdsPedidosHoraCadastro: TTimeField;
    cdsPedidosCFOP: TStringField;
    cdsPedidosMontouCarga: TStringField;
    cdsPedidosSaiudoEstoque: TStringField;
    cdsPedidosFaturado: TStringField;
    cdsPedidosLiberado: TStringField;
    cdsPedidosImpressa: TStringField;
    cdsPedidosTomadaNFe: TStringField;
    cdsPedidosComissao: TStringField;
    cdsPedidosRomaneio: TStringField;
    cdsPedidosEtiqueta: TStringField;
    cdsPedidosLiberouComissao: TStringField;
    cdsPedidosMontouProducao: TStringField;
    cdsPedidosPedidoRemoto: TStringField;
    cdsPedidosConferido: TStringField;
    cdsPedidosEnviar: TStringField;
    cdsPedidosTipoPedido: TStringField;
    cdsPedidosTipoPagamento: TStringField;
    cdsPedidosExcluido: TStringField;
    cdsPedidosidcodigopedido: TIntegerField;
    cdsPedidosnomeusuario: TStringField;
    cdsPedidosdataentrega: TDateTimeField;
    cdsPedidosaliquotacomissao: TCurrencyField;
    cdsPedidosaliquotadesconto: TCurrencyField;
    cdsPedidosaliquotafrete: TCurrencyField;
    cdsPedidosaliquotanfe: TCurrencyField;
    cdsPedidosaliquotaicms: TCurrencyField;
    cdsPedidosaliquotaipi: TCurrencyField;
    cdsPedidosaliquotacomissaotelevendas: TCurrencyField;
    cdsPedidosaliquotaseguro: TCurrencyField;
    cdsPedidosvaloroutrasdespesas: TCurrencyField;
    cdsPedidossubtotal: TCurrencyField;
    cdsPedidostotalpedido: TCurrencyField;
    cdsPedidosvalordesconto: TCurrencyField;
    cdsPedidosvalorimpostos: TCurrencyField;
    cdsPedidosvalorreceber: TCurrencyField;
    cdsPedidospesoliquido: TCurrencyField;
    cdsPedidospesobruto: TCurrencyField;
    cdsPedidosqtdevolume: TIntegerField;
    cdsPedidostotalcubico: TCurrencyField;
    cdsPedidostelevenda: TStringField;
    cdsPedidospagocom: TStringField;
    cdsPedidosaoup: TStringField;
    cdsPedidostabela: TStringField;
    cdsPedidosstatus: TStringField;
    cdsPedidosobs: TStringField;
    cdsPedidosobspedido: TStringField;
    cdsPedidosMunFrete: TIntegerField;
    cdsPedidoslojaatacado: TIntegerField;
    cdsPedidostabelaprecomanual: TIntegerField;
    cdsPedidosfrete: TStringField;
    PPedidos: TPanel;
    dbgPedidos: TDBGrid;
    pPedidoItens: TPanel;
    lPedidoItens: TLabel;
    dbgPedidoItens: TDBGrid;
    pPedidoPagamentos: TPanel;
    Label2: TLabel;
    dbgPedidoPagamento: TDBGrid;
    pRisco: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    dbNavegador: TDBNavigator;
    pPesquisar: TPanel;
    pDigitaConformePesquisa: TPanel;
    Label3: TLabel;
    edtPesquisa: TEdit;
    rgEscolhaTipoFiltro: TRadioGroup;
    Panel6: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DataFinal: TDateTimePicker;
    DataInicial: TDateTimePicker;
    rdOrdemFiltro: TRadioGroup;
    btnConsultar: TBitBtn;
    btnFinalizarPedido: TBitBtn;
    bbSair: TBitBtn;
    Label4: TLabel;
    pRiscoBotoes: TPanel;
    pRiscoNavegador: TPanel;
    pQuantidadeRegistro: TPanel;
    Label7: TLabel;
    lQuantidadeRegistro: TLabel;
    Label8: TLabel;
    Logo: TStatusBar;
    cdsPedidoPagamentos: TClientDataSet;
    cdsPedidoPagamentosIdPedido: TIntegerField;
    cdsPedidoPagamentosIdPed: TIntegerField;
    cdsPedidoPagamentosCodigoPedido: TStringField;
    cdsPedidoPagamentosIdPagamento: TStringField;
    cdsPedidoPagamentosItem: TIntegerField;
    cdsPedidoPagamentosNumeroPagamento: TIntegerField;
    cdsPedidoPagamentosDataVencimento: TDateField;
    cdsPedidoPagamentosParcelaNova: TStringField;
    cdsPedidoPagamentosEmitiuBoleto: TStringField;
    cdsPedidoPagamentosNumeroBanco: TStringField;
    cdsPedidoPagamentosValorTotal: TCurrencyField;
    cdsPedidoPagamentosValorParcela: TCurrencyField;
    cdsPedidoPagamentosQuantidadedeDias: TIntegerField;
    cdsPedidoPagamentosPagouComo: TStringField;
    cdsPedidoPagamentosPagouComissao: TStringField;
    cdsPedidoPagamentosLiberouComissao: TStringField;
    cdsPedidoPagamentosOcorrenciaBanco: TStringField;
    cdsPedidoPagamentosLL: TStringField;
    cdsPedidoPagamentosEnviar: TStringField;
    cdsPedidoPagamentosObsPagamento: TStringField;
    cdsPedidoPagamentosDescontado: TStringField;
    cdsPedidoPagamentosEnviadoParaCartorio: TStringField;
    dsPessoa: TDataSource;
    pNovoCliente_Representante: TPanel;
    Panel2: TPanel;
    btnNovoPagamento: TBitBtn;
    Panel4: TPanel;
    btnNovoCliente: TBitBtn;
    pNovoCliente: TPanel;
    lIdNovoCliente: TLabel;
    lNomeNovoCliente: TLabel;
    lNomeCliente: TLabel;
    edtNovoCliente: TEdit;
    pNovoPagamento: TPanel;
    lIdNovoPagamento: TLabel;
    lNomeNovoPagamento: TLabel;
    lNomePagamento: TLabel;
    edtNovoPagamento: TEdit;
    dsPrazoPagamento: TDataSource;
    lPedidos: TLabel;
    cdsPedidoItensnomeproduto: TStringField;
    cdsPedidoItensnomecor: TStringField;
    cdsPedidoItensnomeacessorio: TStringField;


    procedure FormCreate(Sender: TObject);
    procedure btnFinalizarPedidoClick(Sender: TObject);
    procedure dbgPedidosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgPedidoItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgPedidoPagamentoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure bbSairClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure rgEscolhaTipoFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbNavegadorClick(Sender: TObject; Button: TNavigateBtn);
    procedure edtNovoClienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtNovoPagamentoKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClienteClick(Sender: TObject);
    procedure btnNovoPagamentoClick(Sender: TObject);
    procedure edtNovoPagamentoExit(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure edtNovoClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNovoClienteExit(Sender: TObject);
    procedure edtNovoPagamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FController       : iController;
    FUteis            : iUteis;
    FIdPedido         : String;
    FIdPessoa         : Integer;
    FIdRepresentante  : String;
    FLista            : TStringList;
    FDataSource       : TDataSource;
    FQuantideRegistro : Integer;
    FIdPagamento      : String;
    FNovoIdPagamento  : String;
    FValorTotalPedido : Currency;

    function GetPedido           : Boolean;
    function GetPedidoItens      : Boolean;
    function GetPedidoPagamentos : Boolean;
    function GetPessoa           : Boolean;
    function GetPrazoPagamento   : Boolean;

    //Gerando pedido selecionado.
    procedure IncluirPedido;
    procedure PostPedido;

    procedure FormatarValoresPedido;
    procedure FormatarValoresPedidoItens;
    procedure FormatarValoresPedidoPagametos;
    //Gerando Itens do pedido selecionado.
    procedure IncluiPedidoItens;
    procedure PostPedidoItens;

    //Gerando Parcelas do pedido selecionado.
    procedure IncluiPedidoPagamentos;
    procedure PostPedidoPagamentos;
    //Parcelas

    procedure AbilitaNovaPessoa;
    procedure DesabilitaNovaPessoa;

    procedure AbilitaNovoPagamento;
    procedure DesabilitaNovoPagamento;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReplicarPedidos: TfrmReplicarPedidos;

implementation

uses
  Controller.Imp,
  Uteis,
  View.Entidade.Pesquisar.Pessoa,
  View.Entidade.Pesquisar.Pagamento;

{$R *.dfm}

{ TfrmReplicarPedidos }

procedure TfrmReplicarPedidos.FormatarValoresPedido;
begin
  TNumericField(dsPedidos.DataSet.FieldByName('TotalPedido')).DisplayFormat := '#,##0.00';
  TNumericField(dsPedidos.DataSet.FieldByName('SubTotal')).DisplayFormat := '#,##0.00';
  TNumericField(dsPedidos.DataSet.FieldByName('ValorDesconto')).DisplayFormat := '#,##0.00';
end;

procedure TfrmReplicarPedidos.FormatarValoresPedidoItens;
begin
  TNumericField(DSPedidoItens.DataSet.FieldByName('ValorProduto')).DisplayFormat := '#,##0.00';
  TNumericField(DSPedidoItens.DataSet.FieldByName('SubTotalProduto')).DisplayFormat := '#,##0.00';
  TNumericField(DSPedidoItens.DataSet.FieldByName('Quantidade')).DisplayFormat := '#,##0.00';
end;

procedure TfrmReplicarPedidos.FormatarValoresPedidoPagametos;
begin
  TNumericField(DSPedidoPagamentos.DataSet.FieldByName('ValorTotal')).DisplayFormat := '#,##0.00';
  TNumericField(DSPedidoPagamentos.DataSet.FieldByName('ValorParcela')).DisplayFormat := '#,##0.00';
end;

procedure TfrmReplicarPedidos.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  FUteis      := TUteis.New;
end;

procedure TfrmReplicarPedidos.FormShow(Sender: TObject);
begin
  FUteis
    .AtualizaDataInicioFim(frmReplicarPedidos);

  Logo.Panels[2].Text := FUteis.NomeUsuario;
  Logo.Panels[3].Text := FUteis.IdEmpresa;
  Logo.Panels[4].Text := FUteis.NomeEmpresa;
end;

function TfrmReplicarPedidos.GetPedido: Boolean;
begin
  Result := False;
  if edtPesquisa.Text='' then
    FQuantideRegistro := FController
                           .FactoryDAO
                             .DAOPedidos
                               .This
                                 .TipoOrdemFiltro(rdOrdemFiltro.ItemIndex)
                                 .DataInicialFiltro(DataInicial.DateTime)
                                 .DataFinalFiltro(DataFinal.DateTime)
                                 .Excluido('NAO')
                                 .&End
                               .GetAll
                               .DataSet(dsPedidos)
                               .QuantidadeRegistro
  else
  case rgEscolhaTipoFiltro.ItemIndex of
    0 : FQuantideRegistro := FController
                             .FactoryDAO
                               .DAOPedidos
                                 .This
                                   .TipoOrdemFiltro(rdOrdemFiltro.ItemIndex)
                                   .Excluido('NAO')
                                   .&End
                                 .GetbyId(StrToInt(edtPesquisa.Text))
                                 .DataSet(dsPedidos)
                                 .QuantidadeRegistro;
    1: FQuantideRegistro := FController
                             .FactoryDAO
                               .DAOPedidos
                                 .This
                                   .TipoOrdemFiltro(rdOrdemFiltro.ItemIndex)
                                   .Excluido('NAO')
                                   .&End
                                 .GetbyParams(StrToInt(edtPesquisa.Text))
                                 .DataSet(dsPedidos)
                                 .QuantidadeRegistro;
    2: FQuantideRegistro := FController
                             .FactoryDAO
                               .DAOPedidos
                                 .This
                                   .TipoOrdemFiltro(rdOrdemFiltro.ItemIndex)
                                   .Excluido('NAO')
                                   .&End
                                 .GetbyParams(edtPesquisa.Text)
                                 .DataSet(dsPedidos)
                                 .QuantidadeRegistro;
  end;

  dsPedidos.DataSet.First;
  if not dsPedidos.DataSet.IsEmpty then
  begin
    Result := True;
    lQuantidadeRegistro.Caption := IntToStr(FQuantideRegistro);
    //IncluirPedido;
    GetPedidoItens;
    GetPedidoPagamentos;
  end
  else
    lQuantidadeRegistro.Caption :='0';
end;

function TfrmReplicarPedidos.GetPedidoItens: Boolean;
begin
  FController
      .FactoryDAO
        .DAOPedidosItens
          .DataSet(DSPedidoItens)
          .GetbyId(dsPedidos.DataSet.FieldByName('codigopedido').AsString);
  if not dsPedidoItens.DataSet.IsEmpty then
  begin
    Result := True;
    FormatarValoresPedidoItens;
  end
  else Result := False;
end;

function TfrmReplicarPedidos.GetPedidoPagamentos: Boolean;
begin
  FController
      .FactoryDAO
        .DAOPedidosPagamentos
          .DataSet(DSPedidoPagamentos)
          .GetbyId(dsPedidos.DataSet.FieldByName('codigopedido').AsString);
  if not dsPedidoPagamentos.DataSet.IsEmpty then
  begin
    Result := True;
    FormatarValoresPedidoPagametos;
  end
  else
    Result := False;
end;

function TfrmReplicarPedidos.GetPessoa: Boolean;
begin
  if edtNovoCliente.Text <> '' then
    case rgEscolhaTipoFiltro.ItemIndex  of
      0 : FController
            .FactoryDAO
              .DAOPessoa
                .GetbyId(edtNovoCliente.Text)
                  .DataSet(dsPessoa);
      1 : FController
            .FactoryDAO
              .DAOPessoa
                .GetbyParams(edtNovoCliente.Text)
                  .DataSet(dsPessoa);
    end;

    if not dsPessoa.DataSet.IsEmpty then
      Result := True else Result := False;
end;

function TfrmReplicarPedidos.GetPrazoPagamento: Boolean;
begin
  if edtNovoPagamento.Text <> '' then
    case rgEscolhaTipoFiltro.ItemIndex  of
      0 : FController
            .FactoryDAO
              .DAOPrazoPagamento
                .GetbyId(edtNovoPagamento.Text)
                  .DataSet(dsPrazoPagamento);
      1 : FController
            .FactoryDAO
              .DAOPrazoPagamento
                .GetbyParams(edtNovoPagamento.Text)
                  .DataSet(dsPrazoPagamento);
    end;

    if not dsPrazoPagamento.DataSet.IsEmpty then
      Result := True else Result := False;
end;

procedure TfrmReplicarPedidos.DesabilitaNovaPessoa;
begin
  edtNovoCliente.Clear;
  pNovoCliente.Visible := False;
  FIdPessoa :=0;
  FIdRepresentante := '';
end;

procedure TfrmReplicarPedidos.AbilitaNovaPessoa;
begin
  pNovoCliente.Visible := True;
  edtNovoCliente.Clear;
  edtNovoCliente.SetFocus;
end;

procedure TfrmReplicarPedidos.DesabilitaNovoPagamento;
begin
  edtNovoPagamento.Clear;
  pNovoPagamento.Visible := False;
  FNovoIdPagamento :='';
end;

procedure TfrmReplicarPedidos.AbilitaNovoPagamento;
begin
  pNovoPagamento.Visible := True;
  edtNovoPagamento.Clear;
  edtNovoPagamento.SetFocus;
end;

procedure TfrmReplicarPedidos.bbSairClick(Sender: TObject);
var
  Result: Integer;
begin
  try
    Result := Application.MessageBox('Tem certeza de que deseja sair do sistema?  ', 'FECHAR',
      mb_yesno + mb_defButton2 + mb_iconQuestion);
    if (Result <> IDyes) then
      Abort
    else
    begin
      Application.Terminate;
    end;
  except
    on E: Exception do
      showmessage('Atenção! Sistema não será encerrado!');
  end;
end;

procedure TfrmReplicarPedidos.btnNovoClienteClick(Sender: TObject);
begin
  if not dsPedidos.DataSet.IsEmpty then
    AbilitaNovaPessoa
  else
    DesabilitaNovaPessoa;
end;

procedure TfrmReplicarPedidos.btnNovoPagamentoClick(Sender: TObject);
begin
  if not dsPedidos.DataSet.IsEmpty then
    AbilitaNovoPagamento
  else
    DesabilitaNovoPagamento;
end;

procedure TfrmReplicarPedidos.btnConsultarClick(Sender: TObject);
begin
  if not GetPedido then
  begin
    DesabilitaNovaPessoa;
    DesabilitaNovoPagamento;
    DSPedidoItens.DataSet.Close;
    DSPedidoPagamentos.DataSet.Close;
    DSPedidos.DataSet.Close;
    edtPesquisa.Clear;
  end
  else
    FormatarValoresPedido;
end;

procedure TfrmReplicarPedidos.btnFinalizarPedidoClick(Sender: TObject);
var
  I : Integer;
begin
  if dsPedidos.DataSet.IsEmpty then
  begin
    ShowMessage('Para replicar um pedido, antes encontre o mesmo.');
    Exit;
  end;

  if FQuantideRegistro > 10 then
  begin
    ShowMessage('Replicação(ções) de pedidos não pode ser maior que 10 pedidos, estão selecionados um total de-> '+lQuantidadeRegistro.Caption+'  Pedidos.'+#13+
                'Replicação de pedidos será cancelada, favor informar no máximo 10 pedidos.');
    DesabilitaNovaPessoa;
    DesabilitaNovoPagamento;
    Abort;
  end;

  if MessageBox(handle, 'Deseja realmente fazer replicação do(s) pedido(s) selecionados?', 'Aviso', mb_IconQuestion or mb_Yesno) = mrYes then
  begin
    FLista := TStringList.Create;
    FLista.Clear;
    try
      try
        dsPedidos.DataSet.First;
        while not dsPedidos.DataSet.Eof do
        begin
          FLista.Add(dsPedidos.DataSet.FieldByName('id').AsString);
          dsPedidos.DataSet.Next;
        end;

        for i := 0 to FLista.Count - 1 do
        begin
          FDataSource := TDataSource.Create(Nil);
          try
            FController
                  .FactoryDAO
                    .DAOPedidos
                      .GetbyId(FLista[i])
                .DataSet(FDataSource);

            FIdPedido := FLista[i];
            PostPedido;
          finally
            FreeAndNil(FDataSource);
          end;
        end;
      finally
         FLista.Free;
      end;
      finally
        DesabilitaNovaPessoa;
        DesabilitaNovoPagamento;
        ShowMessage('Replicação(ções), efetuadas com sucesso. Quatidade de pedidos replicados-> '+lQuantidadeRegistro.Caption);
        edtPesquisa.Clear;
      end;
  end
  else
     ShowMessage('A sua escolha foi não fazer replicação. Replicação será cancelada!');
end;

procedure TfrmReplicarPedidos.IncluirPedido;
var
  LDataSource : TDataSource;
begin
  LDataSource := TDataSource.Create(nil);
  try
    FController
            .FactoryDAO
              .DAOPedidos
                .GetAll
            .DataSet(LDataSource);

    FController
       .FactoryDAO
         .DAOPedidos
           .This
             .CriarEstruturaCDS(cdsPedidos);

    LDataSource.DataSet.First;
    while not LDataSource.DataSet.Eof do
    begin
      cdsPedidos.Append;
      cdsPedidos.FieldByName('Id')                        .AsInteger   := LDataSource.DataSet.FieldByName('Id')                        .AsInteger;
      cdsPedidos.FieldByName('IdEmpresa')                 .Asstring    := LDataSource.DataSet.FieldByName('IdEmpresa')                 .AsString;
      cdsPedidos.FieldByName('CodigoPedido')              .Asstring    := LDataSource.DataSet.FieldByName('CodigoPedido')              .AsString;
      cdsPedidos.FieldByName('IdCodigoPedido')            .AsInteger   := LDataSource.DataSet.FieldByName('IdCodigoPedido')            .AsInteger;
      cdsPedidos.FieldByName('IdPessoa')                  .AsInteger   := LDataSource.DataSet.FieldByName('IdPessoa')                  .AsInteger;
      cdsPedidos.FieldByName('CodigoCliente')             .Asstring    := LDataSource.DataSet.FieldByName('CodigoCliente')             .AsString;
      cdsPedidos.FieldByName('IdRepresentante')           .Asstring    := LDataSource.DataSet.FieldByName('IdRepresentante')           .AsString;
      cdsPedidos.FieldByName('IdTransporte')              .Asstring    := LDataSource.DataSet.FieldByName('IdTransporte')              .AsString;
      cdsPedidos.FieldByName('IdRedespacho')              .Asstring    := LDataSource.DataSet.FieldByName('IdRedespacho')              .AsString;
      cdsPedidos.FieldByName('IdPagamento')               .Asstring    := LDataSource.DataSet.FieldByName('IdPagamento')               .AsString;
      cdsPedidos.FieldByName('IdTeleVenda')               .AsInteger   := LDataSource.DataSet.FieldByName('IdTeleVenda')               .AsInteger;
      cdsPedidos.FieldByName('NumeroPedido')              .Asstring    := LDataSource.DataSet.FieldByName('NumeroPedido')              .AsString;
      cdsPedidos.FieldByName('CFOP')                      .Asstring    := LDataSource.DataSet.FieldByName('CFOP')                      .AsString;
      cdsPedidos.FieldByName('DataCadastro')              .AsDateTime  := LDataSource.DataSet.FieldByName('DataCadastro')              .AsDateTime;
      cdsPedidos.FieldByName('DataEntrega')               .AsDateTime  := LDataSource.DataSet.FieldByName('DataEntrega')               .AsDateTime;
      cdsPedidos.FieldByName('MontouCarga')               .AsString    := LDataSource.DataSet.FieldByName('MontouCarga')               .AsString;
      cdsPedidos.FieldByName('SaiudoEstoque')             .AsString    := LDataSource.DataSet.FieldByName('SaiudoEstoque')             .AsString;
      cdsPedidos.FieldByName('Faturado')                  .AsString    := LDataSource.DataSet.FieldByName('Faturado')                  .AsString;
      cdsPedidos.FieldByName('Comissao')                  .AsString    := LDataSource.DataSet.FieldByName('Comissao')                  .AsString;
      cdsPedidos.FieldByName('Liberado')                  .AsString    := LDataSource.DataSet.FieldByName('Liberado')                  .AsString;
      cdsPedidos.FieldByName('Impressa')                  .AsString    := LDataSource.DataSet.FieldByName('Impressa')                  .AsString;
      cdsPedidos.FieldByName('LiberouComissao')           .AsString    := LDataSource.DataSet.FieldByName('LiberouComissao')           .AsString;
      cdsPedidos.FieldByName('Etiqueta')                  .AsString    := LDataSource.DataSet.FieldByName('Etiqueta')                  .AsString;
      cdsPedidos.FieldByName('Romaneio')                  .AsString    := LDataSource.DataSet.FieldByName('Romaneio')                  .AsString;
      cdsPedidos.FieldByName('MontouProducao')            .AsString    := LDataSource.DataSet.FieldByName('MontouProducao')            .AsString;
      cdsPedidos.FieldByName('Excluido')                  .AsString    := LDataSource.DataSet.FieldByName('Excluido')                  .AsString;
      cdsPedidos.FieldByName('Enviar')                    .AsString    := LDataSource.DataSet.FieldByName('Enviar')                    .AsString;
      cdsPedidos.FieldByName('PedidoRemoto')              .AsString    := LDataSource.DataSet.FieldByName('PedidoRemoto')              .AsString;
      cdsPedidos.FieldByName('HoraCadastro')              .AsDateTime  := LDataSource.DataSet.FieldByName('HoraCadastro')              .AsDateTime;
      cdsPedidos.FieldByName('Conferido')                 .AsString    := LDataSource.DataSet.FieldByName('Conferido')                 .AsString;
      cdsPedidos.FieldByName('TipoPedido')                .AsString    := LDataSource.DataSet.FieldByName('TipoPedido')                .AsString;
      cdsPedidos.FieldByName('TipoPagamento')             .AsString    := LDataSource.DataSet.FieldByName('TipoPagamento')             .AsString;
      cdsPedidos.FieldByName('TomadaNFe')                 .AsString    := LDataSource.DataSet.FieldByName('TomadaNFe')                 .AsString;
      cdsPedidos.FieldByName('AliquotaComissao')          .AsCurrency  := LDataSource.DataSet.FieldByName('AliquotaComissao')          .AsCurrency;
      cdsPedidos.FieldByName('AliquotaDesconto')          .AsCurrency  := LDataSource.DataSet.FieldByName('AliquotaDesconto')          .AsCurrency;
      cdsPedidos.FieldByName('AliquotaFrete')             .AsCurrency  := LDataSource.DataSet.FieldByName('AliquotaFrete')             .AsCurrency;
      cdsPedidos.FieldByName('AliquotaNFe')               .AsCurrency  := LDataSource.DataSet.FieldByName('AliquotaNFe')               .AsCurrency;
      cdsPedidos.FieldByName('AliquotaIcms')              .AsCurrency  := LDataSource.DataSet.FieldByName('AliquotaIcms')              .AsCurrency;
      cdsPedidos.FieldByName('AliquotaIpi')               .AsCurrency  := LDataSource.DataSet.FieldByName('AliquotaIpi')               .AsCurrency;
      cdsPedidos.FieldByName('AliquotaComissaoTeleVendas').AsCurrency  := LDataSource.DataSet.FieldByName('AliquotaComissaoTeleVendas').AsCurrency;
      cdsPedidos.FieldByName('AliquotaSeguro')            .AsCurrency  := LDataSource.DataSet.FieldByName('AliquotaSeguro')            .AsCurrency;
      cdsPedidos.FieldByName('ValorOutrasDespesas')       .AsCurrency  := LDataSource.DataSet.FieldByName('ValorOutrasDespesas')       .AsCurrency;
      cdsPedidos.FieldByName('SubTotal')                  .AsCurrency  := LDataSource.DataSet.FieldByName('SubTotal')                  .AsCurrency;
      cdsPedidos.FieldByName('TotalPedido')               .AsCurrency  := LDataSource.DataSet.FieldByName('TotalPedido')               .AsCurrency;
      cdsPedidos.FieldByName('ValorDesconto')              .AsCurrency := LDataSource.DataSet.FieldByName('ValorDesconto')             .AsCurrency;
      cdsPedidos.FieldByName('ValorImpostos')             .AsCurrency  := LDataSource.DataSet.FieldByName('ValorImpostos')             .AsCurrency;
      cdsPedidos.FieldByName('ValorReceber')              .AsCurrency  := LDataSource.DataSet.FieldByName('ValorReceber')              .AsCurrency;
      cdsPedidos.FieldByName('PesoLiquido')               .AsCurrency  := LDataSource.DataSet.FieldByName('PesoLiquido')               .AsCurrency;
      cdsPedidos.FieldByName('PesoBruto')                 .AsCurrency  := LDataSource.DataSet.FieldByName('PesoBruto')                 .AsCurrency;
      cdsPedidos.FieldByName('QtdeVolume')                .AsInteger   := LDataSource.DataSet.FieldByName('QtdeVolume')                .AsInteger;
      cdsPedidos.FieldByName('TotalCubico')               .AsCurrency  := LDataSource.DataSet.FieldByName('TotalCubico')               .AsCurrency;
      cdsPedidos.FieldByName('TeleVenda')                 .AsString    := LDataSource.DataSet.FieldByName('TeleVenda')                 .AsString;
      cdsPedidos.FieldByName('PagoCom')                   .AsString    := LDataSource.DataSet.FieldByName('PagoCom')                   .AsString;
      cdsPedidos.FieldByName('AouP')                      .AsString    := LDataSource.DataSet.FieldByName('AouP')                      .AsString;
      cdsPedidos.FieldByName('Tabela')                    .AsString    := LDataSource.DataSet.FieldByName('Tabela')                    .AsString;
      cdsPedidos.FieldByName('Status')                    .AsString    := LDataSource.DataSet.FieldByName('Status')                    .AsString;
      cdsPedidos.FieldByName('Obs')                       .AsString    := LDataSource.DataSet.FieldByName('Obs')                       .AsString;
      cdsPedidos.FieldByName('ObsPedido')                 .AsString    := LDataSource.DataSet.FieldByName('ObsPedido')                 .AsString;
      cdsPedidos.FieldByName('MunFrete')                  .AsInteger   := LDataSource.DataSet.FieldByName('MunFrete')                  .AsInteger;
      cdsPedidos.FieldByName('LojaAtacado')               .AsInteger   := LDataSource.DataSet.FieldByName('LojaAtacado')               .AsInteger;
      cdsPedidos.FieldByName('TabelaPrecoManual')         .AsInteger   := LDataSource.DataSet.FieldByName('TabelaPrecoManual')         .AsInteger;
      cdsPedidos.FieldByName('Frete')                     .AsString    := LDataSource.DataSet.FieldByName('Frete')                     .AsString;
      cdsPedidos.FieldByName('NomeUsuario')               .AsString    := LDataSource.DataSet.FieldByName('NomeUsuario')               .AsString;
      cdsPedidos.Post;

      LDataSource.DataSet.Next;
    end;
  finally
    cdsPedidos.First;
    FreeAndNil(LDataSource);
  end;
end;

procedure TfrmReplicarPedidos.PostPedido;
var
  lCodigoCliente   : String;
begin
  if FIdPessoa=0 then
    FIdPessoa := FDataSource.DataSet.FieldByName('idpessoa').AsInteger;

  lCodigoCliente := FormatFloat('00000', FIdPessoa);

  if FIdRepresentante='' then
    FIdRepresentante := FDataSource.DataSet.FieldByName('idrepresentante').AsString;

  FValorTotalPedido := FDataSource.DataSet.FieldByName('totalpedido').AsCurrency;
  FIdPagamento      := FDataSource.DataSet.FieldByName('idpagamento').AsString;

  try
    FController
       .FactoryDAO
         .DAOPedidos
           .This
             .Id                        (FDataSource.DataSet.FieldByName('id')                        .AsInteger)
             .IdEmpresa                 (FDataSource.DataSet.FieldByName('idempresa')                 .AsString)
             .CodigoPedido              (FDataSource.DataSet.FieldByName('codigopedido')              .AsString)
             .codigoPedido              (FDataSource.DataSet.FieldByName('idcodigopedido')            .AsString)
             .IdPessoa                  (FIdPessoa)
             .CodigoCliente             (lCodigoCliente)
             .IdRepresentante           (FIdRepresentante)
             .IdTransporte              (FDataSource.DataSet.FieldByName('idtransporte')              .AsString)
             .IdRedespacho              (FDataSource.DataSet.FieldByName('idredespacho')              .AsString)
             .IdPagamento               (FIdPagamento)
             .IdTeleVenda               (FDataSource.DataSet.FieldByName('idtelevenda')               .AsInteger)
             .NumeroPedido              (FDataSource.DataSet.FieldByName('numeropedido')              .AsString)
             .CFOP                      (FDataSource.DataSet.FieldByName('cfop')                      .AsString)
             .Usuario                   (FDataSource.DataSet.FieldByName('nomeusuario')               .AsString)
             .DataCadastro              (Now)
             .DataEntrega               (Now)
             .MontouCarga               ('NAO')
             .SaiudoEstoque             ('NAO')
             .Faturado                  ('NAO')
             .Comissao                  ('NAO')
             .Liberado                  ('NAO')
             .Impressa                  ('NAO')
             .LiberouComissao           ('NAO')
             .Etiqueta                  ('NAO')
             .Romaneio                  ('NAO')
             .MontouProducao            ('NAO')
             .Excluido                  ('NAO')
             .Enviar                    ('SIM')
             .PedidoRemoto              (FDataSource.DataSet.FieldByName('pedidoremoto')              .AsString)
             .HoraCadastro              (Now)
             .Conferido                 ('NAO')
             .TipoPedido                (FDataSource.DataSet.FieldByName('tipopedido')                .AsString)
             .TipoPagamento             (FDataSource.DataSet.FieldByName('tipopagamento')             .AsString)
             .TomadaNFe                 ('NAO')
             .AliquotaComissao          (FDataSource.DataSet.FieldByName('aliquotacomissao')          .AsCurrency)
             .AliquotaDesconto          (FDataSource.DataSet.FieldByName('aliquotadesconto')          .AsCurrency)
             .AliquotaFrete             (FDataSource.DataSet.FieldByName('aliquotafrete')             .AsCurrency)
             .AliquotaNFe               (0)
             .AliquotaICMS              (FDataSource.DataSet.FieldByName('aliquotaicms')              .AsCurrency)
             .AliquotaIPI               (FDataSource.DataSet.FieldByName('aliquotaipi')               .AsCurrency)
             .AliquotaComissaoTeleVendas(FDataSource.DataSet.FieldByName('aliquotacomissaotelevendas').AsCurrency)
             .AliquotaSeguro            (FDataSource.DataSet.FieldByName('aliquotaseguro')            .AsCurrency)
             .ValorOutrasDespesas       (FDataSource.DataSet.FieldByName('valoroutrasdespesas')       .AsCurrency)
             .SubTotal                  (FDataSource.DataSet.FieldByName('subtotal')                  .AsCurrency)
             .ValorTotal                (FDataSource.DataSet.FieldByName('totalpedido')               .AsCurrency)
             .ValorDesconto             (FDataSource.DataSet.FieldByName('valordesconto')             .AsCurrency)
             .ValorImpostos             (FDataSource.DataSet.FieldByName('valorimpostos')             .AsCurrency)
             .ValorAReceber             (FDataSource.DataSet.FieldByName('valorreceber')              .AsCurrency)
             .PesoLiquido               (FDataSource.DataSet.FieldByName('pesoliquido')               .AsCurrency)
             .PesoBruto                 (FDataSource.DataSet.FieldByName('pesobruto')                 .AsCurrency)
             .QtdeVolume                (FDataSource.DataSet.FieldByName('qtdevolume')                .AsInteger)
             .TotalCubico               (FDataSource.DataSet.FieldByName('totalcubico')               .AsCurrency)
             .TeleVenda                 (FDataSource.DataSet.FieldByName('televenda')                 .AsString)
             .PagoCom                   (FDataSource.DataSet.FieldByName('pagocom')                   .AsString)
             .AouP                      ('P')
             .Tabela                    (FDataSource.DataSet.FieldByName('tabela')                    .AsString)
             .Status                    (FDataSource.DataSet.FieldByName('status')                    .AsString)
             .Obs                       (FDataSource.DataSet.FieldByName('obs')                       .AsString)
             .ObsPedido                 (FDataSource.DataSet.FieldByName('obspedido')                 .AsString)
             .MunFrete                  (FDataSource.DataSet.FieldByName('munfrete')                  .AsInteger)
             .LojaAtacado               (FDataSource.DataSet.FieldByName('lojaatacado')               .AsInteger)
             .TabelaPrecoManual         (FDataSource.DataSet.FieldByName('tabelaprecomanual')         .AsInteger)
             .Frete                     (FDataSource.DataSet.FieldByName('frete')                     .AsString)
             .&End
         .Post;
  finally
    IncluiPedidoItens;
    IncluiPedidoPagamentos;
  end;
end;

procedure TfrmReplicarPedidos.IncluiPedidoItens;
var
  LItem       : Integer;
  LDataSource : TDataSource;
begin
  FIdPedido:= StringOfChar('0', 5 - Length(FIdPedido)) + FIdPedido;
  LDataSource := TDataSource.Create(nil);
  try
    FController
            .FactoryDAO
              .DAOPedidosItens
                .GetbyId(FIdPedido)
            .DataSet(LDataSource);

    LItem := 0;

    FController
       .FactoryDAO
         .DAOPedidosItens
           .This
             .CriarEstruturaCDS(cdsPedidoItens);

    LDataSource.DataSet.First;
    while not LDataSource.DataSet.Eof do
    begin
      LItem := LItem +1;
      cdsPedidoItens.Append;
      cdsPedidoItens.FieldByName('IdPedido')              .Asstring    := LDataSource.DataSet.FieldByName('idpedido')              .AsString;
      cdsPedidoItens.FieldByName('Item')                  .AsInteger   := LItem;
      cdsPedidoItens.FieldByName('IdProduto')             .Asstring    := LDataSource.DataSet.FieldByName('idproduto')             .AsString;
      cdsPedidoItens.FieldByName('IdTamanho')             .Asstring    := LDataSource.DataSet.FieldByName('idtamanho')             .AsString;
      cdsPedidoItens.FieldByName('CodigoProduto')         .Asstring    := LDataSource.DataSet.FieldByName('codigoproduto')         .AsString;
      cdsPedidoItens.FieldByName('CodigoBarra')           .Asstring    := LDataSource.DataSet.FieldByName('codigobarra')           .AsString;
      cdsPedidoItens.FieldByName('CodigoCor')             .Asstring    := LDataSource.DataSet.FieldByName('codigocor')             .AsString;
      cdsPedidoItens.FieldByName('CodigoAcessorio')       .Asstring    := LDataSource.DataSet.FieldByName('codigoacessorio')       .AsString;
      cdsPedidoItens.FieldByName('NumeroPedido')          .Asstring    := LDataSource.DataSet.FieldByName('numeropedido')          .AsString;
      cdsPedidoItens.FieldByName('CodigoTamanho')         .Asstring    := LDataSource.DataSet.FieldByName('codigotamanho')         .AsString;
      cdsPedidoItens.FieldByName('Ean13')                 .Asstring    := LDataSource.DataSet.FieldByName('ean13')                 .AsString;
      cdsPedidoItens.FieldByName('Ean23')                 .Asstring    := LDataSource.DataSet.FieldByName('ean23')                 .AsString;
      cdsPedidoItens.FieldByName('CFOP')                  .Asstring    := LDataSource.DataSet.FieldByName('cfop')                  .AsString;
      cdsPedidoItens.FieldByName('CST')                   .Asstring    := LDataSource.DataSet.FieldByName('cst')                   .AsString;
      cdsPedidoItens.FieldByName('CF')                    .Asstring    := LDataSource.DataSet.FieldByName('cf')                    .AsString;
      cdsPedidoItens.FieldByName('AliquotaComissao')      .AsCurrency  := LDataSource.DataSet.FieldByName('aliquotacomissao')      .AsCurrency;
      cdsPedidoItens.FieldByName('AliquotaICMS')          .AsCurrency  := LDataSource.DataSet.FieldByName('aliquotaicms')          .AsCurrency;
      cdsPedidoItens.FieldByName('AliquotaIPI')           .AsCurrency  := LDataSource.DataSet.FieldByName('aliquotaipi')           .AsCurrency;
      cdsPedidoItens.FieldByName('AliquotaVincICMS')      .AsCurrency  := LDataSource.DataSet.FieldByName('aliquotavincicms')      .AsCurrency;
      cdsPedidoItens.FieldByName('AliquotaVincISS')       .AsCurrency  := LDataSource.DataSet.FieldByName('aliquotavinciss')       .AsCurrency;
      cdsPedidoItens.FieldByName('AliquotaDesconto')      .AsCurrency  := LDataSource.DataSet.FieldByName('aliquotadesconto')      .AsCurrency;
      cdsPedidoItens.FieldByName('AliquotaDescontoPedido').AsCurrency  := LDataSource.DataSet.FieldByName('aliquotadescontopedido').AsCurrency;
      cdsPedidoItens.FieldByName('ValorTabela')           .AsCurrency  := LDataSource.DataSet.FieldByName('valortabela')           .AsCurrency;
      cdsPedidoItens.FieldByName('Quantidade')            .AsCurrency  := LDataSource.DataSet.FieldByName('quantidade')            .AsCurrency;
      cdsPedidoItens.FieldByName('ValorCusto')            .AsCurrency  := LDataSource.DataSet.FieldByName('valorcusto')            .AsCurrency;
      cdsPedidoItens.FieldByName('ValorProduto')          .AsCurrency  := LDataSource.DataSet.FieldByName('valorproduto')          .AsCurrency;
      cdsPedidoItens.FieldByName('SubTotalProduto')       .AsCurrency  := LDataSource.DataSet.FieldByName('subtotalproduto')       .AsCurrency;
      cdsPedidoItens.FieldByName('ValorDescontoProduto')  .AsCurrency  := LDataSource.DataSet.FieldByName('valordescontoproduto')  .AsCurrency;
      cdsPedidoItens.FieldByName('ValorPorTabela')        .AsCurrency  := LDataSource.DataSet.FieldByName('valorportabela')        .AsCurrency;
      cdsPedidoItens.FieldByName('ValorTotalPorTabela')   .AsCurrency  := LDataSource.DataSet.FieldByName('valortotalportabela')   .AsCurrency;
      cdsPedidoItens.FieldByName('ValorFinalProduto')     .AsCurrency  := LDataSource.DataSet.FieldByName('valorfinalproduto')     .AsCurrency;
      cdsPedidoItens.FieldByName('LarguraProduto')        .AsCurrency  := LDataSource.DataSet.FieldByName('larguraproduto')        .AsCurrency;
      cdsPedidoItens.FieldByName('ComprimentoProduto')    .AsCurrency  := LDataSource.DataSet.FieldByName('comprimentoproduto')    .AsCurrency;
      cdsPedidoItens.FieldByName('EspessuraProduto')      .AsCurrency  := LDataSource.DataSet.FieldByName('espessuraproduto')      .AsCurrency;
      cdsPedidoItens.FieldByName('Peca')                  .AsCurrency  := LDataSource.DataSet.FieldByName('peca')                  .AsCurrency;
      cdsPedidoItens.FieldByName('PesoProduto')           .AsCurrency  := LDataSource.DataSet.FieldByName('pesoproduto')           .AsCurrency;
      cdsPedidoItens.FieldByName('CubicoProduto')         .AsCurrency  := LDataSource.DataSet.FieldByName('cubicoproduto')         .AsCurrency;
      cdsPedidoItens.FieldByName('Cancelado')             .Asstring    := LDataSource.DataSet.FieldByName('cancelado')             .AsString;
      cdsPedidoItens.FieldByName('SaiudoEstoque')         .Asstring    := LDataSource.DataSet.FieldByName('saiudoestoque')         .AsString;
      cdsPedidoItens.FieldByName('CouG')                  .AsInteger   := LDataSource.DataSet.FieldByName('coug')                  .AsInteger;
      cdsPedidoItens.FieldByName('Producao')              .AsInteger   := LDataSource.DataSet.FieldByName('producao')              .AsInteger;
      cdsPedidoItens.FieldByName('FundoPreto')            .AsInteger   := LDataSource.DataSet.FieldByName('fundopreto')            .AsInteger;

      LDataSource.DataSet.Next;
    end;
  finally
    PostPedidoItens;
    FreeAndNil(LDataSource);
  end;
end;

procedure TfrmReplicarPedidos.PostPedidoItens;
begin
  cdsPedidoItens.First;
  while not cdsPedidoItens.Eof do
  begin
    FController
      .FactoryDAO
        .DAOPedidosItens
          .This
            .IdPedido              (cdsPedidoItens.FieldByName('idpedido')              .AsString)
            .Item                  (cdsPedidoItens.FieldByName('item')                  .AsInteger)
            .IdProduto             (cdsPedidoItens.FieldByName('idproduto')             .AsInteger)
            .IdTamanho             (cdsPedidoItens.FieldByName('idtamanho')             .AsInteger)
            .CodigoProduto         (cdsPedidoItens.FieldByName('codigoproduto')         .AsString)
            .CodigoBarra           (cdsPedidoItens.FieldByName('codigobarra')           .AsString)
            .CodigoCor             (cdsPedidoItens.FieldByName('codigocor')             .AsString)
            .CodigoAcessorio       (cdsPedidoItens.FieldByName('codigoacessorio')       .AsString)
            .NumeroPedido          (cdsPedidoItens.FieldByName('numeropedido')          .AsString)
            .CodigoTamanho         (cdsPedidoItens.FieldByName('codigotamanho')         .AsString)
            .Ean13                 (cdsPedidoItens.FieldByName('ean13')                 .AsString)
            .Ean23                 (cdsPedidoItens.FieldByName('ean23')                 .AsString)
            .CFOP                  (cdsPedidoItens.FieldByName('cfop')                  .AsString)
            .CST                   (cdsPedidoItens.FieldByName('cst')                   .AsString)
            .CF                    (cdsPedidoItens.FieldByName('cf')                    .AsString)
            .AliquotaComissao      (cdsPedidoItens.FieldByName('aliquotacomissao')      .AsCurrency)
            .AliquotaICMS          (cdsPedidoItens.FieldByName('aliquotaicms')          .AsCurrency)
            .AliquotaIPI           (cdsPedidoItens.FieldByName('aliquotaipi')           .AsCurrency)
            .AliquotaVincICMS      (cdsPedidoItens.FieldByName('aliquotavincicms')      .AsCurrency)
            .AliquotaVincISS       (cdsPedidoItens.FieldByName('aliquotavinciss')       .AsCurrency)
            .AliquotaDesconto      (cdsPedidoItens.FieldByName('aliquotadesconto')      .AsCurrency)
            .AliquotaDescontoPedido(cdsPedidoItens.FieldByName('aliquotadescontopedido').AsCurrency)
            .ValorTabela           (cdsPedidoItens.FieldByName('valortabela')           .AsCurrency)
            .Quantidade            (cdsPedidoItens.FieldByName('quantidade')            .AsCurrency)
            .ValorCusto            (cdsPedidoItens.FieldByName('valorcusto')            .AsCurrency)
            .ValorProduto          (cdsPedidoItens.FieldByName('valorproduto')          .AsCurrency)
            .SubTotalProduto       (cdsPedidoItens.FieldByName('subtotalproduto')       .AsCurrency)
            .ValorDescontoProduto  (cdsPedidoItens.FieldByName('valordescontoproduto')  .AsCurrency)
            .ValorPorTabela        (cdsPedidoItens.FieldByName('valorportabela')        .AsCurrency)
            .ValorTotalPorTabela   (cdsPedidoItens.FieldByName('valortotalportabela')   .AsCurrency)
            .ValorFinalProduto     (cdsPedidoItens.FieldByName('valorfinalproduto')     .AsCurrency)
            .LarguraProduto        (cdsPedidoItens.FieldByName('larguraproduto')        .AsCurrency)
            .ComprimentoProduto    (cdsPedidoItens.FieldByName('comprimentoproduto')    .AsCurrency)
            .EspessuraProduto      (cdsPedidoItens.FieldByName('espessuraproduto')      .AsCurrency)
            .Peca                  (cdsPedidoItens.FieldByName('peca')                  .AsCurrency)
            .PesoProduto           (cdsPedidoItens.FieldByName('pesoproduto')           .AsCurrency)
            .CubicoProduto         (cdsPedidoItens.FieldByName('cubicoproduto')         .AsCurrency)
            .Cancelado             (cdsPedidoItens.FieldByName('cancelado')             .AsString)
            .SaiudoEstoque         (cdsPedidoItens.FieldByName('saiudoestoque')         .AsString)
            .CouG                  (cdsPedidoItens.FieldByName('coug')                  .AsInteger)
            .Producao              (cdsPedidoItens.FieldByName('producao')              .AsInteger)
            .FundoPreto            (cdsPedidoItens.FieldByName('fundopreto')            .AsInteger)
            .&End
          .Post;
    cdsPedidoItens.Next;
  end;
end;

procedure TfrmReplicarPedidos.IncluiPedidoPagamentos;
var
  LItem       : Integer;
  LDataSource : TDataSource;
  LValorParcela   : Currency;
begin
  LDataSource := TDataSource.Create(nil);
  FIdPedido:= StringOfChar('0', 5 - Length(FIdPedido)) + FIdPedido;
  try
    if FNovoIdPagamento='' then
      FNovoIdPagamento := FIdPagamento;

    FController
        .FactoryDAO
          .DAOPrazoPagamentoItens
            .This
              .Id(FNovoIdPagamento)
              .&End
            .GetbyIdDataCalculada
            .DataSet(lDataSource);

    LItem := 0;
    LDataSource.DataSet.First;
    while not LDataSource.DataSet.Eof do
    begin
      LItem := LItem +1;
      LValorParcela:=  FController
                         .FactoryDAO
                           .DAOCalcularValorParcela
                             .This
                               .ValorTotalPedido(FValorTotalPedido)
                                 .PrazoPagamentoItens
                                   .Id(FNovoIdPagamento)
                                   .NumeroPagamento(LDataSource.DataSet.FieldByName('NumeroPagamento').AsInteger)
                                   .&End
                                 .&End
                             .CalcularValorParcela
                             .This
                             .ValorParcela;

      cdsPedidoPagamentos.Append;
      cdsPedidoPagamentos.FieldByName('IdPedido')           .AsInteger   := StrToInt(FIdPedido);
      cdsPedidoPagamentos.FieldByName('IdPed')              .AsInteger   := StrToInt(FIdPedido);
      cdsPedidoPagamentos.FieldByName('CodigoPedido')       .Asstring    := FIdPedido;
      cdsPedidoPagamentos.FieldByName('IdPagamento')        .Asstring    := FIdPagamento;
      cdsPedidoPagamentos.FieldByName('Item')               .AsInteger   := LItem;
      cdsPedidoPagamentos.FieldByName('NumeroPagamento')    .AsInteger   := LDataSource.DataSet.FieldByName('NumeroPagamento') .AsInteger;
      cdsPedidoPagamentos.FieldByName('DataVencimento')     .AsDateTime  := LDataSource.DataSet.FieldByName('DataVencimento') .AsDateTime;
      cdsPedidoPagamentos.FieldByName('ParcelaNova')        .AsString    := 'NAO';
      cdsPedidoPagamentos.FieldByName('EmitiuBoleto')       .Asstring    := 'NAO';
      cdsPedidoPagamentos.FieldByName('NumeroBanco')        .Asstring    := '999';
      cdsPedidoPagamentos.FieldByName('ValorTotal')         .AsCurrency  := FValorTotalPedido;
      cdsPedidoPagamentos.FieldByName('ValorParcela')       .AsCurrency  := LValorParcela;
      cdsPedidoPagamentos.FieldByName('QuantidadedeDias')   .AsInteger   := LDataSource.DataSet.FieldByName('QuantidadedeDias').AsInteger;
      cdsPedidoPagamentos.FieldByName('PagouComo')          .Asstring    := 'B';
      cdsPedidoPagamentos.FieldByName('PagouComissao')      .Asstring    := 'NAO';
      cdsPedidoPagamentos.FieldByName('LiberouComissao')    .Asstring    := 'NAO';
      cdsPedidoPagamentos.FieldByName('OcorrenciaBanco')    .Asstring    := '01';
      cdsPedidoPagamentos.FieldByName('LL')                 .Asstring    := 'P';
      cdsPedidoPagamentos.FieldByName('Enviar')             .Asstring    := 'SIM';
      cdsPedidoPagamentos.FieldByName('ObsPagamento')       .Asstring    := '';
      cdsPedidoPagamentos.FieldByName('Descontado')         .Asstring    := 'NAO';
      cdsPedidoPagamentos.FieldByName('EnviadoParaCartorio').Asstring    := 'NAO';

      LDataSource.DataSet.Next;
    end;
  finally
    PostPedidoPagamentos;
    FreeAndNil(LDataSource);
  end;
end;

procedure TfrmReplicarPedidos.PostPedidoPagamentos;
begin
  cdsPedidoPagamentos.First;
  try
    while not cdsPedidoPagamentos.Eof do
    begin
      FController
        .FactoryDAO
          .DAOPedidosPagamentos
            .This
              .IdPedido           (cdsPedidoPagamentos.FieldByName('IdPedido')           .AsInteger)
              .IdPed              (cdsPedidoPagamentos.FieldByName('IdPed')              .AsInteger)
              .CodigoPedido       (cdsPedidoPagamentos.FieldByName('CodigoPedido')       .AsString)
              .IdPagamento        (cdsPedidoPagamentos.FieldByName('IdPagamento')        .AsString)
              .Item               (cdsPedidoPagamentos.FieldByName('Item')               .AsInteger)
              .NumeroPagamento    (cdsPedidoPagamentos.FieldByName('NumeroPagamento')    .AsInteger)
              .DataVencimento     (cdsPedidoPagamentos.FieldByName('DataVencimento')     .AsDateTime)
              .ParcelaNova        (cdsPedidoPagamentos.FieldByName('ParcelaNova')        .AsString)
              .EmitiuBoleto       (cdsPedidoPagamentos.FieldByName('EmitiuBoleto')       .AsString)
              .NumeroBanco        (cdsPedidoPagamentos.FieldByName('NumeroBanco')        .AsString)
              .ValorTotal         (cdsPedidoPagamentos.FieldByName('ValorTotal')         .AsCurrency)
              .ValorParcela       (cdsPedidoPagamentos.FieldByName('ValorParcela')       .AsCurrency)
              .QuantidadedeDias   (cdsPedidoPagamentos.FieldByName('QuantidadedeDias')   .AsInteger)
              .PagoCom            (cdsPedidoPagamentos.FieldByName('PagouComo')          .AsString)
              .PagouComissao      (cdsPedidoPagamentos.FieldByName('PagouComissao')      .AsString)
              .LiberouComissao    (cdsPedidoPagamentos.FieldByName('LiberouComissao')    .AsString)
              .OcorrenciaBanco    (cdsPedidoPagamentos.FieldByName('OcorrenciaBanco')    .AsString)
              .LL                 (cdsPedidoPagamentos.FieldByName('LL')                 .AsString)
              .Enviar             (cdsPedidoPagamentos.FieldByName('Enviar')             .AsString)
              .ObsPagamento       (cdsPedidoPagamentos.FieldByName('ObsPagamento')       .AsString)
              .Descontado         (cdsPedidoPagamentos.FieldByName('Descontado')         .AsString)
              .EnviadoParaCartorio(cdsPedidoPagamentos.FieldByName('EnviadoParaCartorio').AsString)
              .&End
            .Post;

      cdsPedidoPagamentos.Next;
    end;
  finally
    //
  end;
end;

procedure TfrmReplicarPedidos.rgEscolhaTipoFiltroClick(Sender: TObject);
begin
  edtPesquisa.Clear;
end;

procedure TfrmReplicarPedidos.dbgPedidoItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) then
    TDBGrid(Sender).Canvas.Brush.Color := $00939393
  else
    TDBGrid(Sender).Canvas.Brush.Color := $00B4B4B4;

  if (State = [GdSelected]) or (State = [GdFocused]) or
    (State = [GdSelected, GdFocused]) then
  begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  end;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmReplicarPedidos.dbgPedidoPagamentoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) then
    TDBGrid(Sender).Canvas.Brush.Color := $007777FF
  else
    TDBGrid(Sender).Canvas.Brush.Color := $00A4A4FF;

  if (State = [GdSelected]) or (State = [GdFocused]) or
    (State = [GdSelected, GdFocused]) then
  begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  end;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmReplicarPedidos.dbgPedidosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) then
    TDBGrid(Sender).Canvas.Brush.Color := clSkyBlue
  else
    TDBGrid(Sender).Canvas.Brush.Color := clWhite;

  if (State = [GdSelected]) or (State = [GdFocused]) or
    (State = [GdSelected, GdFocused]) then
  begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  end;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmReplicarPedidos.dbNavegadorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if not dsPedidos.DataSet.IsEmpty then
  begin
    GetPedidoItens;
    GetPedidoPagamentos;
  end;
end;

procedure TfrmReplicarPedidos.edtNovoPagamentoExit(Sender: TObject);
begin
  if not dsPedidos.DataSet.IsEmpty then
    if GetPrazoPagamento then
    begin
      edtNovoPagamento.Text := StringOfChar('0', 5 - Length(edtNovoPagamento.Text)) + edtNovoPagamento.Text;
      FNovoIdPagamento := edtNovoPagamento.Text;
      lNomeNovoPagamento.Caption := dsPrazoPagamento.DataSet.FieldByName('descricao').AsString;
    end
    else
      ShowMessage('Registro não encontrado. Tecla F1 busca pesquisar clientes!');
end;

procedure TfrmReplicarPedidos.edtNovoPagamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F1:
    begin
      Application.CreateForm(TfrmViewPesquisarPagamento, frmViewPesquisarPagamento);
      try
        frmViewPesquisarPagamento.ShowModal;
      finally
        frmViewPesquisarPagamento.Release;
        frmViewPesquisarPagamento := nil;
      end;
    end;
  end;
end;

procedure TfrmReplicarPedidos.edtNovoPagamentoKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in ['0'..'9', Chr(8), Chr(6)]) then Key := #0;
end;

procedure TfrmReplicarPedidos.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((rgEscolhaTipoFiltro.ItemIndex =0) or (rgEscolhaTipoFiltro.ItemIndex=1)) then
    if not (Key in ['0'..'9', Chr(8), Chr(6)]) then Key := #0;
end;

procedure TfrmReplicarPedidos.edtNovoClienteExit(Sender: TObject);
begin
  if not dsPedidos.DataSet.IsEmpty then
    if GetPessoa then
    begin
      FIdPessoa        := dsPessoa.DataSet.FieldByName('Id').AsInteger;
      FIdRepresentante := dsPessoa.DataSet.FieldByName('IdRepresentante').AsString;
    end
    else
      ShowMessage('Registro não encontrado. Tecla F1 busca pesquisar clientes!');
end;

procedure TfrmReplicarPedidos.edtNovoClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F1:
    begin
      Application.CreateForm(TfrmViewPesquisarPessoa, frmViewPesquisarPessoa);
      try
        frmViewPesquisarPessoa.ShowModal;
      finally
        frmViewPesquisarPessoa.Release;
        frmViewPesquisarPessoa := nil;
      end;
    end;
  end;
end;

procedure TfrmReplicarPedidos.edtNovoClienteKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in ['0'..'9', Chr(8), Chr(6)]) then Key := #0;
end;

end.
