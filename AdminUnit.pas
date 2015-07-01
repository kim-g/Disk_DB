unit AdminUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB, Vcl.ExtCtrls;

type
  TAdminForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Query: TADOQuery;
    DataSource: TDataSource;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    RunQuery: TADOQuery;
    Button4: TButton;
    OD: TOpenDialog;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdminForm: TAdminForm;
  SQLFile:TStringList;


implementation

{$R *.dfm}

uses MenuUnit;

procedure TAdminForm.Button1Click(Sender: TObject);
var
  i: Integer;
begin
SQL_History.AddList(Memo1.Lines);

QUERY.SQL.Assign(Memo1.Lines);
QUERY.Open;
end;

procedure TAdminForm.Button2Click(Sender: TObject);
var
  i: Integer;
begin
SQL_History.AddList(Memo1.Lines);

RunQuery.SQL.Assign(Memo1.Lines);
RunQuery.ExecSQL;
end;

procedure TAdminForm.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TAdminForm.Button4Click(Sender: TObject);
var
  S,S1:String;
  SemPos:cardinal;
  FEnd:Boolean;
begin
if not OD.Execute then Exit;

SQLFile:=TStringList.Create;

SQLFile.LoadFromFile(OD.FileName);

S:=SQLFile.Text;

Fend:=false;
repeat
SemPos:=pos(';',S);
if SemPos=0 then Fend:=true;

if SemPos = 0 then S1:=S else S1:=S.Remove(SemPos);

if trim(S1)='' then break;


ShowMessage('Выполняется запрос:' + #13#10 + #13#10 + Trim(S1));

RunQuery.SQL.Text:=Trim(S1);
RunQuery.ExecSQL;

S:=S.Remove(0,SemPos);

until FEnd;

SQLFile.Free;
end;

end.
