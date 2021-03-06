unit PersUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB;

type
  TPersons = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    List: TListBox;
    ActivePers: TCheckBox;
    Query: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure ActivePersClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure ListDblClick(Sender: TObject);
  private
    procedure UpdateTable;
    procedure LoadPos;
    procedure SavePos;
  public
    procedure ShowPersons;
  end;

var
  Persons: TPersons;
  ID_List: TSTringList;

implementation

{$R *.dfm}

uses MenuUnit, PersListUnit;

{ TPersons }

procedure TPersons.ActivePersClick(Sender: TObject);
begin
Settings.WriteBool('Forms','Persons-Active',ActivePers.Checked);
UpdateTable;
end;

procedure TPersons.FormClose(Sender: TObject; var Action: TCloseAction);
begin
SavePos;
end;

procedure TPersons.FormCreate(Sender: TObject);
begin
ID_List:=TSTringList.Create;
end;

procedure TPersons.FormResize(Sender: TObject);
begin
SavePos;
end;

procedure TPersons.ListDblClick(Sender: TObject);
begin
PersList.ShowPerson(StrToInt(ID_List[List.ItemIndex]), List.Items[List.ItemIndex]);
end;

procedure TPersons.LoadPos;
begin
Left:=Settings.ReadInteger('Forms','Persons-Left',Left);
Top:=Settings.ReadInteger('Forms','Persons-Top',Top);
Width:=Settings.ReadInteger('Forms','Persons-Width',Width);
Height:=Settings.ReadInteger('Forms','Persons-Height',Height);
if Settings.ReadBool('Forms','Persons-Maximize',false)
  then WindowState:=wsMaximized
  else WindowState:=wsNormal;
end;

procedure TPersons.SavePos;
begin
Settings.WriteInteger('Forms','Persons-Left',Left);
Settings.WriteInteger('Forms','Persons-Top',Top);
Settings.WriteInteger('Forms','Persons-Width',Width);
Settings.WriteInteger('Forms','Persons-Height',Height);
Settings.WriteBool('Forms','Persons-Maximize',WindowState=wsMaximized);
end;

procedure TPersons.ShowPersons;
begin
ActivePers.Checked:=Settings.ReadBool('Forms','Persons-Active',true);

UpdateTable;
LoadPos;
Show;
end;

procedure TPersons.UpdateTable;
begin
with Query do
  begin
  SQL.Clear;
  SQL.Add('SELECT [��������� �����], �������, ���');
  SQL.Add('FROM [����� ������]');
  SQL.Add('WHERE ([��������� �����]<>-1)');
  if ActivePers.Checked then
    SQL.Add('  AND (����������� = TRUE)');
  SQL.Add('ORDER BY [��������� �����];');
  Open;
  List.Items.Clear;
  ID_List.Clear;
  while not EOF do
    begin
    List.Items.Add(FieldByName('�������').AsString + ' ' + FieldByName('���').AsString);
    ID_List.Add(FieldByName('��������� �����').AsString);
    Next;
    end;
  end;
end;

end.
