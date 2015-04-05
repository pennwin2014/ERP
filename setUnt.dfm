object FrmSet: TFrmSet
  Left = 0
  Top = 0
  Caption = #31995#32479#35774#32622
  ClientHeight = 280
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgcSet: TPageControl
    Left = 0
    Top = 0
    Width = 482
    Height = 280
    ActivePage = tsSetUnit
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 8
    ExplicitWidth = 289
    ExplicitHeight = 193
    object tsSetUnit: TTabSheet
      Caption = #21333#20301#35774#32622
      ExplicitLeft = 8
      ExplicitTop = 28
      object lvProductUnit: TListView
        Left = 24
        Top = 32
        Width = 97
        Height = 150
        Columns = <
          item
            Caption = #21333#20301#21517#31216
            Width = 80
          end>
        Items.ItemData = {
          05AC0000000600000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
          0001EA5300000000FFFFFFFFFFFFFFFF00000000FFFFFFFF00000000012A4E00
          000000FFFFFFFFFFFFFFFF00000000FFFFFFFF00000000037000630073000000
          0000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000000001616700000000FFFFFF
          FFFFFFFFFF00000000FFFFFFFF0000000001205F00000000FFFFFFFFFFFFFFFF
          00000000FFFFFFFF0000000001737C}
        RowSelect = True
        PopupMenu = pmProductUnit
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
    object tsOthers: TTabSheet
      Caption = #20854#20182#35774#32622
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 165
    end
  end
  object pmProductUnit: TPopupMenu
    Left = 380
    Top = 152
    object mi_delete: TMenuItem
      Caption = #21024#38500
    end
    object mi_add: TMenuItem
      Caption = #22686#21152
    end
    object mi_edit: TMenuItem
      Caption = #20462#25913
    end
  end
end
