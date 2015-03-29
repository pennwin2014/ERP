object FrmAddSupplier: TFrmAddSupplier
  Left = 0
  Top = 0
  Caption = #20379#24212#21830#31649#29702
  ClientHeight = 299
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_main: TPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 299
    Align = alClient
    TabOrder = 0
    object pnlBottom: TPanel
      Left = 1
      Top = 272
      Width = 528
      Height = 26
      Align = alBottom
      TabOrder = 0
      object btn_add: TButton
        Left = 408
        Top = 1
        Width = 86
        Height = 25
        Caption = #28155#21152'/'#20445#23384
        TabOrder = 0
        OnClick = btn_addClick
      end
    end
    object pnlMiddle: TPanel
      Left = 1
      Top = 1
      Width = 528
      Height = 271
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 256
      ExplicitTop = 184
      ExplicitWidth = 185
      ExplicitHeight = 41
      object pgc_supplier_info: TPageControl
        Left = 1
        Top = 1
        Width = 526
        Height = 269
        ActivePage = ts_contacts
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 528
        ExplicitHeight = 256
        object ts_base_info: TTabSheet
          Caption = #22522#26412#20449#24687
          ExplicitWidth = 520
          ExplicitHeight = 228
          object lbl1: TLabel
            Left = 14
            Top = 24
            Width = 60
            Height = 13
            Caption = #20379#24212#21830#20195#30721
          end
          object lbl2: TLabel
            Left = 26
            Top = 182
            Width = 48
            Height = 13
            Caption = #29289#27969#26041#24335
          end
          object Label1: TLabel
            Left = 50
            Top = 64
            Width = 24
            Height = 13
            Caption = #31616#31216
          end
          object Label2: TLabel
            Left = 50
            Top = 103
            Width = 24
            Height = 13
            Caption = #20840#31216
          end
          object Label3: TLabel
            Left = 50
            Top = 143
            Width = 24
            Height = 13
            Caption = #22320#22336
          end
          object Label5: TLabel
            Left = 302
            Top = 24
            Width = 48
            Height = 13
            Caption = #20184#27454#26041#24335
          end
          object Label6: TLabel
            Left = 302
            Top = 143
            Width = 48
            Height = 13
            Caption = #24314#26723#26085#26399
          end
          object Label7: TLabel
            Left = 326
            Top = 103
            Width = 24
            Height = 13
            Caption = #27861#20154
          end
          object Label8: TLabel
            Left = 50
            Top = 222
            Width = 24
            Height = 13
            Caption = #32593#22336
          end
          object Label4: TLabel
            Left = 302
            Top = 64
            Width = 48
            Height = 13
            Caption = #20184#27454#26465#20214
          end
          object edt_supplier_code: TEdit
            Left = 80
            Top = 20
            Width = 121
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 0
            Text = '10002'
          end
          object edt_ship_type: TEdit
            Left = 80
            Top = 178
            Width = 121
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 4
            Text = #39034#39118#24555#36882
          end
          object edt_short_name: TEdit
            Left = 80
            Top = 60
            Width = 121
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 1
            Text = #38613#40527
          end
          object edt_full_name: TEdit
            Left = 80
            Top = 99
            Width = 121
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 2
            Text = #38613#40527#36719#20214#31185#25216#26377#38480#20844#21496
          end
          object edt_address: TEdit
            Left = 80
            Top = 139
            Width = 121
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 3
            Text = #19978#28023#24066
          end
          object edt_pay_type: TEdit
            Left = 368
            Top = 21
            Width = 121
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 6
            Text = #24403#38754#20184#27454
          end
          object dtp_create_time: TDateTimePicker
            Left = 368
            Top = 139
            Width = 121
            Height = 21
            Date = 42033.921893912040000000
            Time = 42033.921893912040000000
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 9
          end
          object edt_legal_person: TEdit
            Left = 368
            Top = 100
            Width = 121
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 8
            Text = #27754#40527
          end
          object edt_url: TEdit
            Left = 80
            Top = 219
            Width = 225
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            MaxLength = 30
            TabOrder = 5
            Text = 'http://www.diaopeng.com/'
          end
          object edt_pay_condition: TEdit
            Left = 368
            Top = 60
            Width = 121
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 7
            Text = #21040#36135
          end
        end
        object ts_bank_info: TTabSheet
          Caption = #36134#25143#20449#24687
          ImageIndex = 1
          ExplicitHeight = 226
          object lbl3: TLabel
            Left = 48
            Top = 43
            Width = 48
            Height = 13
            Caption = #24320#25143#38134#34892
          end
          object lbl4: TLabel
            Left = 48
            Top = 95
            Width = 48
            Height = 13
            Caption = #38134#34892#24080#25143
          end
          object lbl5: TLabel
            Left = 72
            Top = 147
            Width = 24
            Height = 13
            Caption = #31246#21495
          end
          object edt_bank_name: TEdit
            Left = 112
            Top = 40
            Width = 145
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 0
          end
          object edt_bank_account: TEdit
            Left = 112
            Top = 92
            Width = 249
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 1
          end
          object edt_taxno: TEdit
            Left = 112
            Top = 144
            Width = 249
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 2
          end
        end
        object ts_contacts: TTabSheet
          Caption = #32852#31995#20154
          ImageIndex = 2
          ExplicitHeight = 226
          object lv_contacts: TListView
            Left = 0
            Top = 0
            Width = 518
            Height = 241
            Align = alClient
            Columns = <
              item
                Caption = #22995#21517
                Width = 100
              end
              item
                Caption = #30005#35805
                Width = 100
              end
              item
                Caption = #37096#38376
                Width = 70
              end
              item
                Caption = #32844#21153
                Width = 80
              end
              item
                Caption = #37038#31665
                Width = 120
              end
              item
                Caption = #22791#27880
                Width = 150
              end>
            PopupMenu = pm_contacts
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
      end
    end
  end
  object con_db: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=D:\jian' +
      'xie\ERP\fddemo.mdb;Persist Security Info=True'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 77
    Top = 265
  end
  object qry_db: TADOQuery
    Connection = con_db
    Parameters = <>
    Left = 37
    Top = 265
  end
  object pm_contacts: TPopupMenu
    OnPopup = pm_contactsPopup
    Left = 181
    Top = 137
    object mi_add: TMenuItem
      Caption = #28155#21152
      OnClick = mi_addClick
    end
    object mi_modify: TMenuItem
      Caption = #20462#25913
    end
    object mi_delete: TMenuItem
      Caption = #21024#38500
    end
  end
end
