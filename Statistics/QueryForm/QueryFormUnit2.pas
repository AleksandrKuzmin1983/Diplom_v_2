unit QueryFormUnit2;

interface
uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, DB, Grids, DBGrids,
  ADODB;

//Класс подключения к базе
 type
 { TConnection }
  TConnection = class
    private
     ADOConnection2: TADOConnection;
     ADOQuery2: TADOQuery;
    public
     function GetConnect: TADOConnection;
     function GetSourceForADOQuery: TADOQuery;
    published
     constructor create;
  end;


implementation


{ TConnection }

constructor TConnection.create;
begin

  // Используется в DBGrid2
  ADOConnection2:=TADOConnection.Create(nil);
  ADOConnection2.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=Db.mdb;Mode=Share Deny None;Jet OLEDB:System database="";' +
  'Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;' +
  'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";' +
  'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';
  ADOConnection2.LoginPrompt := false;
  ADOConnection2.Connected := true;

  // Используется в DBGrid3
  ADOQuery2:=TADOQuery.Create(nil);
  ADOQuery2.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=Db.mdb;Mode=Share Deny None;Jet OLEDB:System database="";' +
  'Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;' +
  'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";' +
  'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.add('SELECT * FROM db.blood');
  ADOQuery2.Active:=true;
end;
function TConnection.GetConnect: TADOConnection;
begin
  result:=ADOConnection2;
end;

function TConnection.GetSourceForADOQuery: TADOQuery;
begin
  result:=ADOQuery2;
end;

end.

