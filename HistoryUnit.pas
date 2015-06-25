unit HistoryUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Data.Win.ADODB, Vcl.ExtCtrls;

type
  THistory = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Query: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource: TDataSource;
    procedure ShowHistory;
    procedure Scale;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  History: THistory;

implementation

{$R *.dfm}

uses MenuUnit;

{ THistory }

procedure THistory.Scale;
var
  I: Integer;
const
  GridColNames: array [0..3] of string = ('���� ������','��������','����','����');
  GridColWith: array [0..3] of integer = (100,70,50,100);
begin
for I := 0 to 3 do
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
  Add('SELECT [����� ������].�������, ��������.[��������] & [�����������]![��������] AS GOT, ������_������.[����� � ��������], �������.����');
  Add('FROM ((�����������');
  Add('  INNER JOIN [����� ������] ON �����������.��� = [����� ������].���)');
  Add('  INNER JOIN (��������');
  Add('    INNER JOIN ������� ON ��������.���_�������� = �������.��������)');
  Add('  ON [����� ������].[��������� �����] = �������.����_������)');
  Add('  INNER JOIN ������_������ ON [����� ������].[��������� �����] = ������_������.����');
  Add('ORDER BY �������.���_��������;');
  end;

  {
  SELECT �������.���_��������, [����� ������].�������, [��������]![��������] & [�����������]![��������] AS GOT, �������.����
  FROM �����������
    INNER JOIN (��������
      INNER JOIN ([����� ������]
        INNER JOIN (�������
          INNER JOIN ������_������ ON ������_������.[�����_�_��������)
          ON [����� ������].[��������� �����] = �������.����_������)
      ON ��������.���_�������� = �������.��������)
    ON �����������.��� = [����� ������].���
  ORDER BY �������.���_��������;
  }

Query.Active:=true;
Scale;
ShowModal;
end;

end.
