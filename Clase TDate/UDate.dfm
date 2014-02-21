object FPrincipal: TFPrincipal
  Left = 412
  Top = 264
  Width = 364
  Height = 189
  Caption = 'Dates'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 25
    Height = 13
    Caption = 'Year:'
  end
  object Label2: TLabel
    Left = 16
    Top = 72
    Width = 33
    Height = 13
    Caption = 'Month:'
  end
  object Label3: TLabel
    Left = 16
    Top = 112
    Width = 22
    Height = 13
    Caption = 'Day:'
  end
  object EYear: TEdit
    Left = 64
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'EYear'
  end
  object EMonth: TEdit
    Left = 64
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'EMonth'
  end
  object EDay: TEdit
    Left = 64
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'EDay'
  end
  object Increase: TButton
    Left = 200
    Top = 22
    Width = 113
    Height = 25
    Caption = 'Increase'
    TabOrder = 3
  end
  object Read: TButton
    Left = 200
    Top = 61
    Width = 113
    Height = 25
    Caption = 'Read'
    TabOrder = 4
  end
  object Write: TButton
    Left = 200
    Top = 100
    Width = 113
    Height = 25
    Caption = 'Write'
    TabOrder = 5
  end
end
