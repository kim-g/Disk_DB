unit ChangeGot;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TGetDisk = class(TForm)
    PersList: TADOQuery;
    Pers: TComboBox;
    SelDisk: TADOQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    RUN_SQL: TADOQuery;

    procedure GetDisk(NDisk:Cardinal);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GetDisk: TGetDisk;
  SQL, TabN:TSTringList;
  NI, DiskN:Cardinal;

const
  SQL_Query_Disk:array[1..9] of String =
    ('SELECT TOP 1 "№ " & Список_дисков.[Номер в каталоге] & " «" & Сюжеты.Название & "»" AS Диск,',
     '  Видеозаписи.Номер_Спектакля, Список_дисков.Взят ',
     '',
     'FROM Сюжеты',
     '  INNER JOIN (Видеозаписи',
     '    INNER JOIN Список_дисков ON Видеозаписи.ID_Видеозаписи = Список_дисков.Видеозапись)',
     'ON Сюжеты.ID_Сюжета = Видеозаписи.Сюжет',
     '',
     'WHERE ID_Диска = ');

implementation

{$R *.dfm}

uses MenuUnit;

{ TForm2 }

procedure TGetDisk.Button1Click(Sender: TObject);
var s:string;
begin
if Pers.ItemIndex<>NI then
  begin
  SQL.Clear;
  SQL.Add('UPDATE Список_дисков');
  SQL.Add('SET Взят = ' + TabN[Pers.ItemIndex]+',');
  if TabN[Pers.ItemIndex]='-1' then
    SQL.Add('    Дата_Взятия = NULL')
   else
    SQL.Add('    Дата_Взятия = DATE()');
  SQL.Add('WHERE ID_Диска = ' + IntToStr(DiskN) + ';');

  RUN_SQL.SQL.Assign(SQL);
  RUN_SQL.ExecSQL;

  {SQL.Clear;
  SQL.Add('INSERT INTO История (Член_труппы, Операция, диск, дата)');
  s:='VALUES ( ' + TabN[Pers.ItemIndex]+',';
  //if TabN[Pers.ItemIndex]='-1' then s:=s+' 1,' else '

  SQL.Add(s);
  if TabN[Pers.ItemIndex]='-1' then
    SQL.Add('    Дата_Взятия = NULL')
   else
    SQL.Add('    Дата_Взятия = DATE()');
  SQL.Add('WHERE ID_Диска = ' + IntToStr(DiskN) + ';');

  RUN_SQL.SQL.Assign(SQL);
  RUN_SQL.ExecSQL;   }
  end;
Close;
end;

procedure TGetDisk.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TGetDisk.FormCreate(Sender: TObject);
begin
SQL:=TStringList.Create;
TabN:=TStringList.Create;
end;

procedure TGetDisk.FormShow(Sender: TObject);
begin
Pers.SetFocus;
end;

procedure TGetDisk.GetDisk(NDisk: Cardinal);
var
  i: Integer;
begin
DiskN:=NDisk;

SQL.Clear;
SQL.Add('SELECT [Табельный номер], Фамилия & " " & Имя AS Взял');
SQL.Add('FROM [Члены труппы]');
SQL.Add('ORDER BY Фамилия;');

PersList.SQL.Assign(SQL);
PersList.Active:=true;

SQL.Clear;
for i := 1 to 9 do
  SQL.Add(SQL_Query_Disk[i]);
SQL[SQL.Count-1]:=SQL[SQL.Count-1]+IntToStr(NDisk)+';';  //Закрываем скобку

SelDisk.SQL.Assign(SQL);
SelDisk.Active:=true;

Label1.Caption:=SelDisk.FieldByName('Диск').AsString;
if SelDisk.FieldByName('Номер_Спектакля').AsString<>'' then
  Label1.Caption:=Label1.Caption + ' (' + SelDisk.FieldByName('Номер_Спектакля').AsString + ')';

Pers.Items.Clear;
TabN.Clear;

i:=0;

with PersList do
    begin
    open;
    while not Eof do
      begin
        Pers.Items.Add(PersList.FieldByName('Взял').AsString );
        TabN.Add(PersList.FieldByName('Табельный номер').AsString);
        if SelDisk.FieldByName('Взят').AsInteger=PersList.FieldByName('Табельный номер').AsInteger then
          NI:=i;
          inc(i);
        next;
      end;
    close;
    end;

Pers.ItemIndex:=NI;

//Pers.SetFocus;

showmodal;
end;

end.
