unit AddDisk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB;

type
  TAddDiskForm = class(TForm)
    Label1: TLabel;
    NDisk: TEdit;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Got: TComboBox;
    Bevel1: TBevel;
    Button1: TButton;
    Button2: TButton;
    Query: TADOQuery;
    procedure Button1Click(Sender: TObject);
    function AddDisk_AddDisk:boolean;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure Prepare;
  public
    { Public declarations }
  end;

var
  AddDiskForm: TAddDiskForm;
  Cont:boolean=false;
  ID_Got:TStringList;

implementation

{$R *.dfm}

uses MenuUnit;

function TAddDiskForm.AddDisk_AddDisk: boolean;
begin
Label2.Caption:=NewDisk.Video_Text;
Cont:=false;

with Query do
  begin
  SQL.Clear;
  SQL.Add('SELECT MAX([����� � ��������]) AS NDisk');
  SQL.Add('FROM ������_������');
  Open;
  NDisk.Text:=IntToStr(FieldByName('NDisk').AsInteger+1);
  Close;

  SQL.Clear;
  SQL.Add('SELECT [��������� �����], ������� & " " & ��� AS �������');
  SQL.Add('FROM [����� ������]');
  SQL.Add('WHERE ����������� = TRUE;');

  Open;
  Got.Items.Clear;
  ID_Got.Clear;
  while not Eof do
    begin
    Got.Items.Add(FieldByName('�������').AsString);
    ID_Got.Add(FieldByName('��������� �����').AsString);
    next;
    end;
  close;
  end;
Got.ItemIndex:=0;
ShowModal;
Result:=Cont;

end;

procedure TAddDiskForm.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TAddDiskForm.Button2Click(Sender: TObject);
var
  s:string;
begin
with Query do
  begin
  SQL.Clear;
  SQL.Add('SELECT COUNT([����� � ��������]) AS NDisk');
  SQL.Add('FROM ������_������');
  SQL.Add('WHERE [����� � ��������]='+NDisk.Text+';');
  Open;
  if FieldByName('NDisk').AsInteger > 0 then
    begin
    ShowMessage('������!'#13#10'����� ����� ����� ��� ����! ����������, �������� ������������ ��� �������.');
    exit;
    end;
  Close;
  SQL.Clear;
  SQL.Add('INSERT INTO ������_������ ([����� � ��������], �����������, ����, ����_������)');
  if Got.ItemIndex=0 then s:='NULL' else s:='DATE()';

  SQL.Add('VALUES ('+NDisk.Text+', '+IntToStr(NewDisk.Video)+', '+ID_Got[Got.ItemIndex]+', '+s+');');
  ExecSQL;
  

  end;
Cont:=true;
Close;
end;

procedure TAddDiskForm.FormCreate(Sender: TObject);
begin
ID_Got:=TStringList.Create;
end;

procedure TAddDiskForm.Prepare;
begin

end;

end.
