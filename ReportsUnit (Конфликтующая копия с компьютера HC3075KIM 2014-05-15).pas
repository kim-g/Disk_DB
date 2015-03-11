unit ReportsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet,
  Data.Win.ADODB, frxDesgn, Vcl.StdCtrls, frxPreview;

type
  TReports = class(TForm)
    ReportNum: TfrxReport;
    FRDataSet: TfrxDBDataset;
    QueryNum: TADOQuery;
    Button1: TButton;
    Button2: TButton;
    QuerySP: TADOQuery;
    DataSetSP: TfrxDBDataset;
    ReportSP: TfrxReport;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    QueryMS: TADOQuery;
    DataSetMS: TfrxDBDataset;
    ReportMS: TfrxReport;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Reports: TReports;

implementation

{$R *.dfm}

uses MenuUnit;

procedure TReports.Button1Click(Sender: TObject);
begin
QueryNum.Open;
ReportNum.DesignReport;
ReportNum.ShowReport;         //<frxDBDataset1."��������"> + ' (' + <frxDBDataset1."�����������"> + ')'

end;

procedure TReports.Button2Click(Sender: TObject);
begin
QueryNum.Open;
ReportNum.PrepareReport;
ReportNum.Print;
end;

procedure TReports.Button3Click(Sender: TObject);
begin
QuerySP.Open;
ReportSP.ShowReport;
end;

procedure TReports.Button4Click(Sender: TObject);
begin
QuerySP.Open;
ReportSP.PrepareReport;
ReportSP.Print;
end;

procedure TReports.Button5Click(Sender: TObject);
begin
QueryMS.Open;
ReportMS.ShowReport;
end;

procedure TReports.Button6Click(Sender: TObject);
begin
QueryMS.Open;
ReportMS.PrepareReport;
ReportMS.Print;
end;

end.
