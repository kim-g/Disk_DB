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
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdminForm: TAdminForm;


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

end.
