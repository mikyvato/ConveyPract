object FPrincipal: TFPrincipal
  Left = 476
  Top = 204
  Width = 579
  Height = 292
  Caption = 'Animales'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseDown = FormMouseDown
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 32
    Top = 16
    Width = 121
    Height = 41
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object BPerro: TButton
    Left = 32
    Top = 64
    Width = 121
    Height = 49
    Caption = 'Perro'
    TabOrder = 1
    OnClick = BPerroClick
  end
  object BGato: TButton
    Left = 32
    Top = 128
    Width = 121
    Height = 49
    Caption = 'Gato'
    TabOrder = 2
    OnClick = BGatoClick
  end
end
