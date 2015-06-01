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
    Button2: TButton;
    Query: TADOQuery;
    Button3: TButton;

    procedure ShowEditPersona;
    procedure OnlyUpdate(Sender:TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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

uses MenuUnit, AddPersonUnit, ChangeNumberUnit;

{ TEditPersons }

procedure TEditPersons.Button1Click(Sender: TObject);
begin
AddPerson.Add;
end;

procedure TEditPersons.Button2Click(Sender: TObject);
var
  GotDisks:Integer;
  S:String;

const
  DisksGot:array[0..9]of string = ('������','����','�����','�����','�����','������','������','������','������','������');
begin
Query.Active:=false;
with Query.SQL do
  begin
  Clear;
  Add('SELECT Count(*) As GotDisks');
  Add('FROM ������_������');
  Add('WHERE ���� = ' + IntToStr(DBGrid1.DataSource.DataSet.FieldValues['��������� �����']));
  end;

Query.Active:=true;

GotDisks := Query.FieldByName('GotDisks').AsInteger;

if GotDisks=0 then
  begin
  if MessageDlg('� ������� ����� ������ �� ���� �� ���� ����. �������� ������ ��������. �������?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    Query.Active:=false;
    with Query.SQL do
      begin
      clear;
      Add('DELETE *');
      Add('FROM [����� ������]');
      Add('WHERE [��������� �����] = ' + IntToStr(DBGrid1.DataSource.DataSet.FieldValues['��������� �����']) + ';');
      end;
    Query.ExecSQL;
    ShowMessage('������ �������.');
    TableQuery.Requery;
    end;

  end
 else
  begin
  S := '� ���������� ����� ������ ����';
  if GotDisks = 1
    then S:=S + ' '
    else if GotDisks < 20
      then S:=S + '� '
      else if (GotDisks mod 10) = 1
        then S:=S + ' '
        else S:=S + '� ';
  S := S + IntToStr(GotDisks);
  if GotDisks in [11..19]
    then S:=S + ' ������'
    else S:=S + ' ' + DisksGot[GotDisks mod 10];

  S := S + '. ���������� ����������� �� ������� ������� � ������ ����� ����� ������� �������.';
  ShowMessage(S);
  end;
end;

procedure TEditPersons.Button3Click(Sender: TObject);
begin
ChangeNumber.ChangeNum(DBGrid1.DataSource.DataSet.FieldValues['��������� �����']);
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
  DBGrid1.Columns[i].ReadOnly:=i=0;                    // ��������� �������� �������� ��� ���� ����� 0-��.
  end;


end;

end.
