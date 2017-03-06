unit PersListUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Data.SqlExpr;

type
  TPersList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Query: TSQLQuery;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowPerson(ID:Integer; Person: string);
  end;

var
  PersList: TPersList;

const
  ListWidth: array [0..4] of integer = (0, 47, 440, 33, 111);
  ListName:  array [0..4] of string  = ('','№','Название','n','Дата');

implementation

{$R *.dfm}

uses MenuUnit, ChangeGot;

{ TPersList }

procedure TPersList.DBGrid1DblClick(Sender: TObject);
var
  N:Cardinal;
begin
N:=DBGrid1.DataSource.DataSet.FieldValues['ID_Диска'];
GetDisk.GetDisk(N);
Query.Refresh;
end;

procedure TPersList.ShowPerson(ID: Integer; Person: string);
var
  s:string;
  I: Integer;
begin
Panel2.Caption:=Person;
with Query do
  begin
  SQL.Clear;
  SQL.Add('SELECT ID_Диска, [Номер в каталоге], Сюжеты.Название, Видеозаписи.Номер_Спектакля, Дата_Взятия');
  SQL.Add('FROM Список_Дисков');
  SQL.Add('  INNER JOIN (Видеозаписи');
  SQL.Add('    INNER JOIN Сюжеты');
  SQL.Add('    ON Видеозаписи.Сюжет = Сюжеты.ID_Сюжета)');
  SQL.Add('  ON Список_Дисков.Видеозапись = Видеозаписи.ID_Видеозаписи');
  SQL.Add('WHERE Список_Дисков.Взят = ' + IntToStr(ID));
  Open;
  end;
for I := 0 to 4 do
  begin
  DBGrid1.Columns[i].Width:=ListWidth[i];
  DBGrid1.Columns[i].Title.Caption:=ListName[i];
  DBGrid1.Columns[i].ReadOnly:=true;
  end;
ShowModal;
end;

end.
