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

    procedure ShowEditPersona;
    procedure OnlyUpdate(Sender:TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
   procedure UpdateTable;
  public
    { Public declarations }
  end;

var
  EditPersons: TEditPersons;

const
  GridColNames: array [0..5] of string = ('№', 'Фамилия', 'Имя', 'Отчество', 'Д.', 'Пол');
  GridColWith: array [0..5] of word = (80, 150, 150, 150, 60, 40);

implementation

{$R *.dfm}

uses MenuUnit, AddPersonUnit;

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
  DisksGot:array[0..9]of string = ('дисков','диск','диска','диска','диска','дисков','дисков','дисков','дисков','дисков');
begin
Query.Active:=false;
with Query.SQL do
  begin
  Clear;
  Add('SELECT Count(*) As GotDisks');
  Add('FROM Список_дисков');
  Add('WHERE Взят = ' + IntToStr(DBGrid1.DataSource.DataSet.FieldValues['Табельный номер']));
  end;

Query.Active:=true;

GotDisks := Query.FieldByName('GotDisks').AsInteger;

if GotDisks=0 then
  begin
  if MessageDlg('У данного члена труппы не взят ни один диск. Удаление записи возможно. Удалить?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    Query.Active:=false;
    with Query.SQL do
      begin
      clear;
      Add('DELETE *');
      Add('FROM [Члены труппы]');
      Add('WHERE [Табельный номер] = ' + IntToStr(DBGrid1.DataSource.DataSet.FieldValues['Табельный номер']) + ';');
      end;
    Query.ExecSQL;
    ShowMessage('Запись удалена.');
    TableQuery.Requery;
    end;

  end
 else
  begin
  S := 'У указанного члена труппы взят';
  if GotDisks = 1
    then S:=S + ' '
    else if GotDisks < 20
      then S:=S + 'о '
      else if (GotDisks mod 10) = 1
        then S:=S + ' '
        else S:=S + 'о ';
  S := S + IntToStr(GotDisks);
  if GotDisks in [11..19]
    then S:=S + ' дисков'
    else S:=S + ' ' + DisksGot[GotDisks mod 10];

  S := S + '. Необходимо разобраться со взятыми дисками и только после этого удалить профиль.';
  ShowMessage(S);
  end;
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
  Add('SELECT [Табельный номер], Фамилия, Имя, Отчество, Действующий, Пол');
  Add('FROM [Члены труппы]');
  Add('WHERE ([Табельный номер]>-1) AND ([Табельный номер]<999999)');
  if RadioGroup1.ItemIndex=0 then Add('ORDER BY [Табельный номер];') else Add('ORDER BY Фамилия, Имя;');
  end;
TableQuery.Active:=true;

for i := 0 to 5 do
  begin
  DBGrid1.Columns[i].Title.Caption:=GridColNames[i];   // Изменение заголовков
  DBGrid1.Columns[i].Width:=GridColWith[i];            // и размеров.
  DBGrid1.Columns[i].ReadOnly:=false;                  // Запрещаем изменять значения.
  end;


end;

end.
