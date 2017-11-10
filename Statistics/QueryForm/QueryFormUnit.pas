unit QueryFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, QueryFormUnit2, ExtCtrls, DBCtrls, DB, Grids, DBGrids,
  ADODB;

type
  TQueryForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    Connection: TConnection;
    ADOQuery2: TConnection;
    DBGrid3: TDBGrid;
    DataSource3: TDataSource;
    DBGrid4: TDBGrid;
    procedure Button1Click(Sender: TObject);
    Constructor create(AOwner: TComponent); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QueryForm: TQueryForm;

implementation

{$R *.dfm}

procedure TQueryForm.Button1Click(Sender: TObject);
begin
  Close;
end;



constructor TQueryForm.create(AOwner: TComponent);
begin
  inherited;
  Connection:=TConnection.create;
  ADOQuery1.Connection:=Connection.GetConnect;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.add('SELECT * FROM db.Plasma');
  ADOQuery1.Active:=true;

  //подключаем ADOQuery
  ADOQuery2:=TConnection.create;
  DataSource3.DataSet:=ADOQuery2.GetSourceForADOQuery;

end;

end.
