unit ChangeNumberUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TChangeNumber = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Query: TADOQuery;
    InBase: TADOQuery;
    procedure Edit1Change(Sender: TObject);
    procedure ChangeNum(ID: Integer);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangeNumber: TChangeNumber;
  NumberToChange: Integer;

implementation

{$R *.dfm}

uses MenuUnit, EditPersonsUnit;

procedure TChangeNumber.Button1Click(Sender: TObject);
begin
Query.Active:=false;
InBase.Active:=false;
with InBase.SQL do
  begin
  Clear;
  Add('SELECT *');
  Add('FROM [����� ������]');
  Add('WHERE [��������� �����] = ' + IntToStr(NumberToChange));
  end;

InBase.Active:=true;

with Query.SQL do
  begin
  Clear;
  Add('INSERT INTO [����� ������] ([��������� �����], �������, ���, ��������, �����������, ���)');
  Add('VALUES (' + Edit1.Text + ', "' + InBase.FieldByName('�������').AsString + '", "' + InBase.FieldByName('���').AsString +
    '", "' + InBase.FieldByName('��������').AsString + '", ' + InBase.FieldByName('�����������').AsString + ', ' +
    InBase.FieldByName('���').AsString+');');
  end;
//  ShowMessage(Query.SQL.Text);
Query.ExecSQL;

with Query.SQL do
  begin
  Clear;
  Add('UPDATE ������_������');
  Add('SET ���� = ' + Edit1.Text);
  Add('WHERE ���� = ' + IntToStr(NumberToChange));
  end;
Query.ExecSQL;

with Query.SQL do
  begin
  Clear;
  Add('UPDATE �������');
  Add('SET ����_������ = ' + Edit1.Text);
  Add('WHERE ����_������ = ' + IntToStr(NumberToChange));
  end;
Query.ExecSQL;

with Query.SQL do
  begin
  Clear;
  Add('DELETE *');
  Add('FROM [����� ������]');
  Add('WHERE [��������� �����] = ' + IntToStr(NumberToChange));
  end;
Query.ExecSQL;

EditPersons.TableQuery.Requery;
Close;
end;

procedure TChangeNumber.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TChangeNumber.ChangeNum(ID: Integer);
begin
NumberToChange:=ID;
Edit1.Text:='';
Image1.Picture.LoadFromFile('NO.png');
Label2.Caption:='������� ��������� �����.';
Label2.Visible:=true;
Button1.Enabled:=false;
ShowModal;
end;

procedure TChangeNumber.Edit1Change(Sender: TObject);
var
  N_Records:Integer;
begin
if Edit1.Text='' then
  begin
  Image1.Picture.LoadFromFile('NO.png');
  Label2.Caption:='������� ��������� �����.';
  Label2.Visible:=true;
  Button1.Enabled:=false;
  exit;
  end;

Query.Active:=false;
with Query.SQL do
  begin
  Clear;
  Add('SELECT Count(*) AS NRec FROM [����� ������] WHERE [��������� �����] = ' + Edit1.Text + ';');
  end;
Query.Active:=true;

N_Records := Query.FieldByName('NRec').AsInteger;

if N_Records > 0 then
  begin
  Button1.Enabled:=false;
  Image1.Picture.LoadFromFile('NO.png');
  Label2.Caption:='��������� ����� ��� ������������.';
  Label2.Visible:=true;
  exit;
  end;

Button1.Enabled:=true;
Label2.Hide;
Image1.Picture.LoadFromFile('OK.png');
end;

end.
