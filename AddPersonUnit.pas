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
    procedure Add;
    procedure Edit1Change(Sender: TObject);
    procedure CancelOK;
    procedure EnableOK;
    procedure Button2Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddPerson: TAddPerson;

implementation

{$R *.dfm}

uses MenuUnit;

procedure TAddPerson.Add;
begin
Edit1Change(Edit1);
ShowModal;
end;

procedure TAddPerson.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TAddPerson.CancelOK;
begin
Button1.Enabled:=false;
end;

procedure TAddPerson.Edit1Change(Sender: TObject);
begin
if Edit1.Text='' then
  begin
  Image1.Picture.LoadFromFile('NO.png');
  CancelOK;
  exit;
  end;

Query.Active:=false;
with Query.SQL do
  begin
  Clear;
  Add('SELECT Count(*) FROM [����� ������] WHERE [��������� �����] = ' + Edit1.Text);
  end;

EnableOK;
Image1.Picture.LoadFromFile('OK.png');
end;

procedure TAddPerson.EnableOK;
begin
Button1.Enabled:=true;
Button1.Default:=true;
end;

procedure TAddPerson.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  S:string;
begin
if not Key in [$30..$39] then
  begin
  S:=TEdit(Sender).Text;
  S.Remove(S.Length-2);
  TEdit(Sender).Text:=S;
  end;

end;

end.
