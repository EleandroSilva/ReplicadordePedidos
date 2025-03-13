{*******************************************************}
{                    API PDV - JSON                     }
{                      Be More Web                      }
{          Início do projeto 18/03/2024 13:39           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2024                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Conexao.Configuracao.Firebird.Imp;

interface

uses
  System.SysUtils,
  System.IniFiles,

  Vcl.Forms,

  Model.Conexao.Configuracao.Firebird.Interfaces;

type
  TConfiguracaoFirebird = class(TInterfacedObject, iConfiguracaoFirebird)
    private
      FArquivoIni   : TIniFile;
      FDiretorioexe : String;

      function CriarArquivo : TConfiguracaoFirebird;
    public
      constructor Create;
      destructor Destroy; override;
      class function New      : iConfiguracaoFirebird;

      function ServerHost     : String;
      function Port           : String;
      function Database       : String;
      function UserName       : String;
      function Password       : String;
      function DriverName     : String;
      function LibraryName    : String;
      function VendorLib      : String;
      function GetDriveFunc   : String;
      function ConnectionName : String;
  end;

implementation

{ TConfiguracaoMySQL }

constructor TConfiguracaoFirebird.Create;
begin
  FDiretorioexe := (ExtractFilePath(Application.ExeName));
  if not FileExists(ExtractFilePath(Application.ExeName)+'ConfiguracaoFirebird.ini') then
    CriarArquivo;

  FArquivoIni := TIniFile.Create(FDiretorioexe + 'ConfiguracaoFirebird.ini');
end;

class function TConfiguracaoFirebird.New: iConfiguracaoFirebird;
begin
  Result := Self.Create;
end;

destructor TConfiguracaoFirebird.Destroy;
begin
  FreeAndNil(FArquivoIni);
  inherited;
end;

function TConfiguracaoFirebird.ServerHost: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'ServerHost', Result);
end;

function TConfiguracaoFirebird.Port: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'Port', Result);
end;

function TConfiguracaoFirebird.Database: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'Database', Result);
end;


function TConfiguracaoFirebird.UserName: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'UserName', Result);
end;

function TConfiguracaoFirebird.Password: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'Password', Result);
end;

function TConfiguracaoFirebird.DriverName: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'DriverName', Result);
end;

function TConfiguracaoFirebird.LibraryName: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'LibraryName', Result);
end;

function TConfiguracaoFirebird.VendorLib: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'VendorLib', Result);
end;

function TConfiguracaoFirebird.GetDriveFunc: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'GetDriveFunc', Result);
end;

function TConfiguracaoFirebird.ConnectionName: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'CoonectionName', Result);
end;

function TConfiguracaoFirebird.CriarArquivo: TConfiguracaoFirebird;
begin
  Result := Self;
  FDiretorioexe := (ExtractFilePath(Application.ExeName));

  FArquivoIni := TIniFile.Create(FDiretorioexe + 'ConfiguracaoFirebird.ini');
  try
    FArquivoIni.WriteString('ConfiguracaoFirebird', 'ServerHost'     , ServerHost);
    FArquivoIni.WriteString('ConfiguracaoFirebird', 'Port'           , Port);
    FArquivoIni.WriteString('ConfiguracaoFirebird', 'Database'       , Database);
    FArquivoIni.WriteString('ConfiguracaoFirebird', 'UserName'       , UserName);
    FArquivoIni.WriteString('ConfiguracaoFirebird', 'Password'       , Password);
    FArquivoIni.WriteString('ConfiguracaoFirebird', 'DriverName'     , DriverName);
    FArquivoIni.WriteString('ConfiguracaoFirebird', 'LibraryName'    , LibraryName);
    FArquivoIni.WriteString('ConfiguracaoFirebird', 'VendorLib'      , VendorLib);//;FDiretorioexe+'libmysql.dll');
    FArquivoIni.WriteString('ConfiguracaoFirebird', 'GetDriveFunc'   , GetDriveFunc);
    FArquivoIni.WriteString('ConfiguracaoFirebird', 'ConnectionName' , ConnectionName);
  finally
    FreeAndNil(FArquivoIni);
  end;
end;

end.
