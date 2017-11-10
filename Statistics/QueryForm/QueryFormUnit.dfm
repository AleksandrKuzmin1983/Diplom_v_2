object QueryForm: TQueryForm
  Left = 0
  Top = 0
  Caption = #1047#1072#1087#1088#1086#1089#1099
  ClientHeight = 948
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 512
    Top = 267
    Width = 115
    Height = 25
    Caption = #1053#1072#1079#1072#1076' ('#1055#1086#1082#1072' '#1074#1099#1093#1086#1076')'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 619
    Height = 73
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 104
    Top = 267
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 135
    Width = 619
    Height = 120
    DataSource = DataSource2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 320
    Width = 619
    Height = 120
    DataSource = DataSource3
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid4: TDBGrid
    Left = 8
    Top = 504
    Width = 619
    Height = 120
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Fm\Desktop' +
      '\QueryForm\db\Db.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 200
    Top = 8
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Blood'
    Left = 272
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 328
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 368
    Top = 264
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 440
    Top = 264
  end
  object DataSource3: TDataSource
    Left = 360
    Top = 448
  end
end
