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
    Button1: TButton;

    procedure ShowEditPersona;
    procedure OnlyUpdate(Sender:TObject);
    procedure Button1Click(Sender: TObject);
  private
   procedure UpdateTable;
  public
    { Public declarations }
  end;

var
  EditPersons: TEditPersons;

const
  GridColNames: array [0..5] of string = ('�', '�������', '���', '��������', '�.', '���');
  GridColWith: array [0..5] of word = (80, 150, 150, 150, 60, 40);

implementation

{$R *.dfm}

uses MenuUnit, AddPersonUnit;

{ TEditPersons }

procedure TEditPersons.Button1Click(Sender: TObject);
begin
AddPerson.Add;
end;

procedure TEditPersons.OnlyUpdate(Sender: TObject);
begin
UpdateTable;
end;

procedure TEditPersons.ShowEditPersona;
begin
UpdateTable;
ShowModal;
end;

procedure TEditPersons.UpdateTable;
var
  i:integer;
begin
TableQuery.Active:=false;
With TableQuery.SQL do
  begin
  Clear;
  Add('SELECT [��������� �����], �������, ���, ��������, �����������, ���');
  Add('FROM [����� ������]');
  Add('WHERE ([��������� �����]>-1) AND ([��������� �����]<999999)');
  if RadioGroup1.ItemIndex=0 then Add('ORDER BY [��������� �����];') else Add('ORDER BY �������, ���;');
  end;
TableQuery.Active:=true;

for i := 0 to 5 do
  begin
  DBGrid1.Columns[i].Title.Caption:=GridColNames[i];   // ��������� ����������
  DBGrid1.Columns[i].Width:=GridColWith[i];            // � ��������.
  DBGrid1.Columns[i].ReadOnly:=false;                  // ��������� �������� ��������.
  end;


end;

end.
