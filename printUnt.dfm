object FrmPrint: TFrmPrint
  Left = 0
  Top = 0
  Caption = #25171#21360#39044#35272
  ClientHeight = 446
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 763
    Height = 446
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 376
    ExplicitTop = 224
    ExplicitWidth = 185
    ExplicitHeight = 41
    object img1: TImage
      Left = 1
      Top = 1
      Width = 761
      Height = 444
      Align = alClient
      ExplicitLeft = 328
      ExplicitTop = 184
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
    object chk1: TCheckBox
      Left = 24
      Top = 16
      Width = 97
      Height = 17
      Caption = #25171#21360#39044#35272
      TabOrder = 0
    end
    object btn1: TButton
      Left = 472
      Top = 216
      Width = 75
      Height = 25
      Caption = 'btn1'
      TabOrder = 1
      OnClick = btn1Click
    end
  end
end
