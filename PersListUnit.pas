unit PersListUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TPersList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Query: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowPerson(ID:Integer; Person: string);
  end;

var
  PersList: TPersList;

const
  ListWidth: array [0..4] of integer = (0, 47, 440, 33, 111);
  ListName:  array [0..4] of string  = ('','�','��������','n','����');

implementation

{$R *.dfm}

uses MenuUnit, ChangeGot;

{ TPersList }

procedure TPersList.DBGrid1DblClick(Sender: TObject);
var
  N:Cardinal;
begin
N:=DBGrid1.DataSource.DataSet.FieldValues['ID_�����'];
GetDisk.GetDisk(N);
Query.Requery;
end;

procedure TPersList.ShowPerson(ID: Integer; Person: string);
var
  s:string;
  I: Integer;
begin
Panel2.Caption:=Person;
with Query do
  begin
  SQL.Clear;
  SQL.Add('SELECT ID_�����, [����� � ��������], ������.��������, �����������.�����_���������, ����_������');
  SQL.Add('FROM ������_������');
  SQL.Add('  INNER JOIN (�����������');
  SQL.Add('    INNER JOIN ������');
  SQL.Add('    ON �����������.����� = ������.ID_������)');
  SQL.Add('  ON ������_������.����������� = �����������.ID_�����������');
  SQL.Add('WHERE ������_������.���� = ' + IntToStr(ID));
  Open;
  end;
for I := 0 to 4 do
  begin
  DBGrid1.Columns[i].Width:=ListWidth[i];
  DBGrid1.Columns[i].Title.Caption:=ListName[i];
  DBGrid1.Columns[i].ReadOnly:=true;
  end;
ShowModal;
end;

end.
