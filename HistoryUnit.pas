unit HistoryUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  THistory = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Query: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    CB: TComboBox;
    procedure ShowHistory;
    procedure Scale;
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure GetData;
  public
    { Public declarations }
  end;

var
  History: THistory;
  CBS:TStringList;

implementation

{$R *.dfm}

uses MenuUnit;

{ THistory }

procedure THistory.Edit1Change(Sender: TObject);
begin
GetData;
end;

procedure THistory.FormCreate(Sender: TObject);
begin
CBS:=TStringList.Create;
end;

procedure THistory.FormDestroy(Sender: TObject);
begin
CBS.Free;
end;

procedure THistory.GetData;
begin
Query.Active:=false;

with Query.SQL do
  begin
  Clear;
  Add('SELECT Hist.���_��������, Hist.�������, Hist.GOT, ������_������.[����� � ��������], �������.����');
  Add('FROM ������_������');
  Add('  INNER JOIN');
  Add('');
  Add('    (SELECT �������.���_��������, [����� ������].[��������� �����] AS TN, [����� ������].�������, [��������]![��������] & [�����������]![��������] AS GOT, �������.����, �������.����');
  Add('     FROM �����������');
  Add('       INNER JOIN (��������');
  Add('         INNER JOIN ([����� ������]');
  Add('           INNER JOIN �������');
  Add('           ON [����� ������].[��������� �����] = �������.����_������)');
  Add('         ON ��������.���_�������� = �������.��������)');
  Add('       ON �����������.��� = [����� ������].���) AS Hist');
  Add('');
  Add('  ON ������_������.ID_����� = Hist.����');
  end;

if (Edit1.Text<>'') AND (CBS[CB.ItemIndex]='ALL') then Query.SQL.Add('WHERE ������_������.[����� � ��������] = '+ Edit1.Text);
if (Edit1.Text<>'') AND (CBS[CB.ItemIndex]<>'ALL') then Query.SQL.Add('WHERE (������_������.[����� � ��������] = '+ Edit1.Text + ')' +
                                                                      'AND (Hist.TN = ' + CBS[CB.ItemIndex]+ ')');
if (Edit1.Text='') AND (CBS[CB.ItemIndex]<>'ALL') then Query.SQL.Add('WHERE Hist.TN = ' + CBS[CB.ItemIndex]);


Query.SQL.Add('ORDER BY �������.���_��������;');

Query.Active:=true;
Scale;
end;

procedure THistory.Scale;
var
  I: Integer;
const
  NRow = 5;
  GridColNames: array [0..NRow-1] of string = ('','���� ������','��������','����','����');
  GridColWith: array [0..NRow-1] of integer = (0,200,140,80,200);
begin
for I := 0 to NRow-1 do
  begin
  DBGrid1.Columns[i].Title.Caption:=GridColNames[i];   // ��������� ����������
  DBGrid1.Columns[i].Width:=GridColWith[i];            // � ��������.
  DBGrid1.Columns[i].ReadOnly:=true;                   // ��������� �������� �������� ��� ����.
  end;
end;

procedure THistory.ShowHistory;
begin
Query.Active:=false;

with Query.SQL do
  begin
  Clear;
  Add('SELECT * FROM [����� ������] WHERE (����������� = TRUE) AND ([��������� �����] > -1)');
  end;

Query.Open;

CB.Items.Clear;
CBS.Clear;

CB.Items.Add('-- ��� --');
CBS.Add('ALL');
while not Query.Eof do
    begin
    CB.Items.Add(Query.FieldByName('�������').AsString + ' ' + Query.FieldByName('���').AsString);
    CBS.Add(Query.FieldByName('��������� �����').AsString);
    Query.next;
    end;
  Query.Close;
CB.ItemIndex:=0;
GetData;
ShowModal;
end;

end.
