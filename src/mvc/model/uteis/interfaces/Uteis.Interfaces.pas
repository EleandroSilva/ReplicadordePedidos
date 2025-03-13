{*******************************************************}
{                      Be More Web                      }
{            Início do projeto 27/05/2023               }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2023                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Uteis.Interfaces;

interface

uses
  Vcl.Forms;

type
  iUteis = interface
    ['{FA49E1BB-F056-4907-AC79-365B5C512A85}']
    function ValidaCnpjCeiCpf (Numero: String; ExibeMsgErro: Boolean=True): Boolean;
    function PegarApenasNumero(Value : String): String;
    function Pesquisar        (Key, Value: string): string;
    function MaskCNPJ         (Value : String)   : String;
    function MaskCPF          (Value : String)   : String;
    function MaskCep          (Value : String)   : String;
    function MaskDDD          (Value : String)   : String;
    function MaskTelefone     (Value : String)   : String;
    function AtualizaDataInicioFim(Value: Tform) : iUteis;
    function IdEmpresa                           : String;
    function NomeEmpresa                         : String;
    function NomeUsuario                         : String;

    function &End : iUteis;
  end;

implementation

end.
