unit AddTitle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB;

type
  TAddTitleForm = class(TForm)
    Query: TADOQuery;
    List: TListBox;
    Edit1: TEdit;
    Button1: TButton;
    Bevel1: TBevel;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    function AddDisk_AddTitle:boolean;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListUpdate;
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddTitleForm: TAddTitleForm;
  Stoped:boolean;
  ID:TStringList;

implementation

{$R *.dfm}

uses MenuUnit;

function TAddTitleForm.AddDisk_AddTitle: boolean;
begin
Stoped:=true;

Edit1.Text:='';
ListUpdate;

ShowModal;
AddDisk_AddTitle:=not Stoped;
end;

procedure TAddTitleForm.Button1Click(Sender: TObject);
begin
if List.Items.IndexOf(Edit1.Text)=-1 then
  begin
  with Query do
    begin
    SQL.Clear;
    SQL.Add('INSERT INTO ������ (��������)');
    SQL.Add('VALUES ("' + Edit1.Text + '");');
    ExecSQL;
    end;
  ListUpdate;
  end;

end;

procedure TAddTitleForm.Button2Click(Sender: TObject);
begin
if List.ItemIndex=-1 then
  begin
  ShowMessage('�������� �������� � ������.');
  exit;
  end;
NewDisk.Title:=StrToInt(ID[List.ItemIndex]);
NewDisk.Title_Text:=List.Items[List.ItemIndex];
stoped:=false;
Close;
end;

procedure TAddTitleForm.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TAddTitleForm.Edit1Change(Sender: TObject);
begin
ListUpdate;
end;

procedure TAddTitleForm.FormCreate(Sender: TObject);
begin
ID:=TStringList.Create;
end;

procedure TAddTitleForm.ListUpdate;
begin
List.Items.Clear;
ID.Clear;
with Query do
    begin
    SQL.Clear;
    SQL.Add('SELECT ID_������, ��������');
    SQL.Add('FROM ������');
    if Edit1.Text<>'' then SQL.Add('WHERE �������� LIKE ''%' + Edit1.Text+'%'' ');
    SQL.Add('ORDER BY ��������;');
    open;
    while not Eof do
      begin
        List.Items.Add(FieldByName('��������').AsString );
        ID.Add(FieldByName('ID_������').AsString);
        next;
      end;
    close;
    end;
if List.Items.Count>0 then
  List.ItemIndex:=0;
end;

end.
