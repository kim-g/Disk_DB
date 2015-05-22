unit EditPersonsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.FMTBcd,
  Data.SqlExpr, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB;

type
  TEditPersons = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TableQuery: TADOQuery;
    TableDataSource: TDataSource;
    DBGrid1: TDBGrid;
    RadioGroup1: TRadioGroup;

    procedure ShowEditPersona;
  private
   procedure UpdateTable;
  public
    { Public declarations }
  end;

var
  EditPersons: TEditPersons;

implementation

{$R *.dfm}

uses MenuUnit;

{ TEditPersons }

procedure TEditPersons.ShowEditPersona;
begin
UpdateTable;
ShowModal;
end;

procedure TEditPersons.UpdateTable;
begin
TableQuery.Active:=false;
With TableQuery.SQL do
  begin
  Clear;
  Add('SELECT [��������� �����], �������, ���, ��������, �����������, ���');
  Add('FROM [����� ������]');
  if RadioGroup1.ItemIndex=0 then Add('ORDER BY [��������� �����];') else Add('ORDER BY �������, ���;');
  end;
TableQuery.Active:=true;
end;

end.
