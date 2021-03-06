unit AddPersonUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, PNGImage, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB;

type
  TAddPerson = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Query: TADOQuery;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Image2: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Image3: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    RB1: TRadioButton;
    RB2: TRadioButton;
    Image4: TImage;
    Label9: TLabel;
    procedure Add;
    procedure Edit1Change(Sender: TObject);
    procedure EnableOK;
    procedure Button2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddPerson: TAddPerson;
  Ready: array [1..4] of boolean;

implementation

{$R *.dfm}

uses MenuUnit, EditPersonsUnit;

procedure TAddPerson.Add;
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
RB1.Checked:=false;
RB2.Checked:=false;
Edit1Change(AddPerson);
Edit2Change(AddPerson);
Edit3Change(AddPerson);
RB1Click(AddPerson);
ShowModal;
end;

procedure TAddPerson.Button1Click(Sender: TObject);
var
  Sex:string;
begin

if RB1.Checked then Sex:='1' else Sex:='2';


Query.Active:=false;
with Query.SQL do
  begin
  clear;
  Add('INSERT INTO [����� ������] ([��������� �����], �������, ���, ��������, �����������, ���)');
  Add('VALUES (' + Edit1.Text + ', "' + Edit2.Text + '", "' + Edit3.Text + '", "' + Edit4.Text + '", TRUE, ' + Sex + ');');
  end;

Query.ExecSQL;
EditPersons.TableQuery.Requery;
close;
end;

procedure TAddPerson.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TAddPerson.Edit1Change(Sender: TObject);
var
  N_Records:Integer;
begin
if Edit1.Text='' then
  begin
  Image1.Picture.LoadFromFile('NO.png');
  Label2.Caption:='������� ��������� �����.';
  Label2.Visible:=true;
  Ready[1]:=false;
  EnableOK;
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
  Ready[1]:=false;
  EnableOK;
  Image1.Picture.LoadFromFile('NO.png');
  Label2.Caption:='��������� ����� ��� ������������.';
  Label2.Visible:=true;
  exit;
  end;

Ready[1]:=true;
EnableOK;
Label2.Hide;
Image1.Picture.LoadFromFile('OK.png');
end;

procedure TAddPerson.Edit2Change(Sender: TObject);
begin
if Edit2.Text='' then
  begin
  Image2.Picture.LoadFromFile('NO.png');
  Label4.Caption:='������� �������.';
  Label4.Visible:=true;
  Ready[2]:=false;
  EnableOK;
  exit;
  end;

Ready[2]:=true;
EnableOK;
Label4.Hide;
Image2.Picture.LoadFromFile('OK.png');
end;

procedure TAddPerson.Edit3Change(Sender: TObject);
begin
if Edit3.Text='' then
  begin
  Image3.Picture.LoadFromFile('NO.png');
  Label6.Caption:='������� ���.';
  Label6.Visible:=true;
  Ready[3]:=false;
  EnableOK;
  exit;
  end;

Ready[3]:=true;
EnableOK;
Label6.Hide;
Image3.Picture.LoadFromFile('OK.png');
end;

procedure TAddPerson.EnableOK;
begin
if Ready[1] and Ready[2] and Ready[3] and Ready[4] then
  begin
  Button1.Enabled:=true;
  Button1.Default:=true;
  end
 else
  Button1.Enabled:=false;
end;

procedure TAddPerson.RB1Click(Sender: TObject);
begin
if not (RB1.Checked xor RB2.Checked) then
  begin
  Image4.Picture.LoadFromFile('NO.png');
  Label9.Caption:='�������� ���.';
  Label9.Visible:=true;
  Ready[4]:=false;
  EnableOK;
  exit;
  end;

Ready[4]:=true;
EnableOK;
Label9.Hide;
Image4.Picture.LoadFromFile('OK.png');
end;

end.
