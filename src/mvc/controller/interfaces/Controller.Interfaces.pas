{*******************************************************}
{                      Be More Web                      }
{          Início do projeto 23/04/2025 12:02           }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2025                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Controller.Interfaces;

interface

uses
  Model.Factory.DAO.Interfaces;

type
  iController = Interface
    ['{818AFFBE-F8FD-4E1F-AF87-3B8DF2A308F5}']
    function FactoryDAO : iFactoryDAO;
  End;

implementation

end.
