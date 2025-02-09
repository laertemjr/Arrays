object frmArrays: TfrmArrays
  Left = 0
  Top = 0
  Caption = 
    'ARRAYS - Practically demonstrates arrays of integers with up to ' +
    '3 dimensions'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object lblElements: TLabel
    Left = 8
    Top = 80
    Width = 54
    Height = 15
    Caption = 'Elements :'
  end
  object lblColumns: TLabel
    Left = 8
    Top = 120
    Width = 54
    Height = 15
    Caption = 'Columns :'
  end
  object lblRows: TLabel
    Left = 8
    Top = 160
    Width = 34
    Height = 15
    Caption = 'Rows :'
  end
  object lblTables: TLabel
    Left = 8
    Top = 200
    Width = 38
    Height = 15
    Caption = 'Tables :'
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 422
    Width = 624
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Developed in Delphi 12.1, version 0.2 (2025)'
        Width = 50
      end>
  end
  object rgDim: TRadioGroup
    Left = 8
    Top = 8
    Width = 121
    Height = 49
    Caption = 'Dimensions'
    Columns = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      '1'
      '2'
      '3')
    ParentFont = False
    TabOrder = 1
    OnClick = rgDimClick
  end
  object seElements: TSpinEdit
    Left = 75
    Top = 77
    Width = 54
    Height = 24
    MaxLength = 3
    MaxValue = 100
    MinValue = 1
    TabOrder = 2
    Value = 1
  end
  object btnList: TButton
    Left = 8
    Top = 276
    Width = 75
    Height = 25
    Caption = 'List'
    TabOrder = 3
    OnClick = btnListClick
  end
  object ListBox1: TListBox
    Left = 272
    Top = 8
    Width = 344
    Height = 408
    ItemHeight = 15
    TabOrder = 4
  end
  object seColumns: TSpinEdit
    Left = 75
    Top = 117
    Width = 54
    Height = 24
    MaxLength = 2
    MaxValue = 20
    MinValue = 1
    TabOrder = 5
    Value = 1
  end
  object seRows: TSpinEdit
    Left = 75
    Top = 157
    Width = 54
    Height = 24
    MaxLength = 3
    MaxValue = 100
    MinValue = 1
    TabOrder = 6
    Value = 1
  end
  object seTables: TSpinEdit
    Left = 75
    Top = 197
    Width = 54
    Height = 24
    MaxLength = 2
    MaxValue = 10
    MinValue = 1
    TabOrder = 7
    Value = 1
  end
end
