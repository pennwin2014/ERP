object FrmMain: TFrmMain
  Left = 0
  Top = 0
  ClientHeight = 493
  ClientWidth = 847
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 847
    Height = 493
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 769
    object page_main: TPageControl
      Left = 0
      Top = 0
      Width = 847
      Height = 493
      ActivePage = ts_products_p
      Align = alClient
      TabOrder = 0
      OnChange = page_mainChange
      ExplicitWidth = 769
      object TabSheet13: TTabSheet
        Caption = #30446#24405
        ImageIndex = 14
        ExplicitWidth = 761
        object TreeView1: TTreeView
          Left = 64
          Top = 32
          Width = 225
          Height = 105
          Indent = 19
          TabOrder = 0
          Items.NodeData = {
            0304000000240000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            000000000001039B4F945E4655260000000000000000000000FFFFFFFFFFFFFF
            FF000000000000000000000000010400952E55FB7CDF7E220000000000000000
            000000FFFFFFFFFFFFFFFF0000000000000000000000000102935E585B220000
            000000000000000000FFFFFFFFFFFFFFFF000000000000000000000000010222
            8DA152}
        end
      end
      object ts_provider: TTabSheet
        Caption = #20379#24212#21830#36164#26009
        ExplicitWidth = 761
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 839
          Height = 465
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 761
          object edt_search_provider: TEdit
            Left = 24
            Top = 56
            Width = 225
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 0
            Text = #25628#32034#65306#20379#24212#21830#20195#30721#12289#31616#31216#12289#20840#21517
            OnEnter = edt_search_providerEnter
            OnExit = edt_search_providerExit
          end
          object btn_search_supplierInfo: TButton
            Left = 270
            Top = 52
            Width = 75
            Height = 25
            Caption = #26597#35810
            TabOrder = 1
            OnClick = btn_search_supplierInfoClick
          end
          object lv_supplier_info: TListView
            Left = 24
            Top = 83
            Width = 697
            Height = 302
            Columns = <
              item
                Caption = #20379#24212#21830#20195#30721
                Width = 80
              end
              item
                Caption = #31616#31216
                Width = 60
              end
              item
                Caption = #20840#21517
                Width = 160
              end
              item
                Caption = #22320#22336
                Width = 100
              end
              item
                Caption = #29289#27969#26041#24335
                Width = 90
              end
              item
                Caption = #20184#27454#26465#20214
                Width = 100
              end
              item
                Caption = #20184#27454#26041#24335
                Width = 100
              end
              item
                Caption = #24314#26723#26085#26399
                Width = 80
              end
              item
                Caption = #27861#20154
              end
              item
                Caption = #32593#22336
                Width = 150
              end>
            GridLines = True
            ReadOnly = True
            RowSelect = True
            PopupMenu = pm_supplier
            TabOrder = 2
            ViewStyle = vsReport
            OnDblClick = lv_supplier_infoDblClick
          end
        end
      end
      object ts_products_p: TTabSheet
        Caption = #20379#24212#21830#20135#21697#20449#24687
        ImageIndex = 1
        ExplicitWidth = 761
        object pnl1: TPanel
          Left = 0
          Top = 0
          Width = 839
          Height = 465
          Align = alClient
          Caption = 'pnl1'
          TabOrder = 0
          ExplicitWidth = 761
          object lv_supplier_product: TListView
            Left = 16
            Top = 56
            Width = 721
            Height = 326
            Columns = <
              item
                Caption = #24207#21495
              end
              item
                Caption = #21697#21517
              end
              item
                Caption = #35268#26684#22411#21495
                Width = 80
              end
              item
                Caption = #26009#21495
              end
              item
                Caption = #21333#20301
              end
              item
                Caption = #37319#36141#21608#26399
                Width = 80
              end
              item
                Caption = #26368#23567#35746#36141#37327
                Width = 100
              end
              item
                Caption = #21253#35013#25968#37327
                Width = 100
              end
              item
                Caption = #21333#20215
              end
              item
                Caption = #26356#26032#26085#26399
                Width = 100
              end>
            RowSelect = True
            PopupMenu = pm_supplier
            TabOrder = 0
            ViewStyle = vsReport
          end
          object cbb_supplier_code: TComboBox
            Left = 16
            Top = 29
            Width = 105
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 1
            OnChange = cbb_supplier_codeChange
            Items.Strings = (
              '')
          end
          object cbb_name: TComboBox
            Left = 127
            Top = 29
            Width = 98
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 2
          end
          object btn_search_product: TButton
            Left = 248
            Top = 25
            Width = 75
            Height = 25
            Caption = #26597#35810
            TabOrder = 3
            OnClick = btn_search_productClick
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = #37319#36141#35746#21333'('#25171#21360')'
        ImageIndex = 2
        ExplicitWidth = 761
        object pnl3: TPanel
          Left = 0
          Top = 0
          Width = 839
          Height = 465
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 761
          object pnl4: TPanel
            Left = 1
            Top = 288
            Width = 837
            Height = 176
            Align = alBottom
            Caption = 'pnl4'
            TabOrder = 0
            ExplicitWidth = 759
            object dbgrd_purchase_order: TDBGrid
              Left = 1
              Top = 1
              Width = 835
              Height = 174
              Align = alClient
              DataSource = ds1
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbgrd_purchase_orderDrawColumnCell
            end
          end
          object pnl5: TPanel
            Left = 1
            Top = 1
            Width = 837
            Height = 287
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 759
            object lbl4: TLabel
              Left = 353
              Top = 73
              Width = 48
              Height = 13
              Caption = #35746#21333#32534#21495
            end
            object lbl5: TLabel
              Left = 530
              Top = 73
              Width = 24
              Height = 13
              Caption = #26085#26399
            end
            object lbl6: TLabel
              Left = 31
              Top = 112
              Width = 60
              Height = 13
              Caption = #20379#24212#21830#21517#31216
            end
            object Label1: TLabel
              Left = 31
              Top = 139
              Width = 24
              Height = 13
              Caption = #22320#22336
            end
            object Label2: TLabel
              Left = 31
              Top = 166
              Width = 36
              Height = 13
              Caption = #32852#31995#20154
            end
            object Label3: TLabel
              Left = 31
              Top = 193
              Width = 24
              Height = 13
              Caption = #30005#35805
            end
            object Label4: TLabel
              Left = 31
              Top = 220
              Width = 24
              Height = 13
              Caption = #20256#30495
            end
            object Label5: TLabel
              Left = 31
              Top = 247
              Width = 24
              Height = 13
              Caption = #37038#31665
            end
            object Label6: TLabel
              Left = 341
              Top = 112
              Width = 24
              Height = 13
              Caption = #22320#22336
            end
            object Label7: TLabel
              Left = 341
              Top = 139
              Width = 36
              Height = 13
              Caption = #32852#31995#20154
            end
            object Label8: TLabel
              Left = 341
              Top = 166
              Width = 24
              Height = 13
              Caption = #30005#35805
            end
            object Label9: TLabel
              Left = 341
              Top = 193
              Width = 24
              Height = 13
              Caption = #20256#30495
            end
            object Label10: TLabel
              Left = 341
              Top = 220
              Width = 24
              Height = 13
              Caption = #37038#31665
            end
            object Label11: TLabel
              Left = 341
              Top = 247
              Width = 24
              Height = 13
              Caption = #36135#24065
            end
            object img1: TImage
              Left = 560
              Top = 97
              Width = 105
              Height = 81
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000740000
                007401030000006E54846400000006504C5445FFFFFF00000055C2D37E000000
                B44944415478DAE5D4CB11C5200805D04B05DC0EECBF2C3A800A7C6032F392A5
                649145DC38C705231F15DC977CCF1308D0353776EC842BA3B69E35A01932B7B6
                6B3DF1F0E83B13A978D7FC76BCEA99D7B9D577C38FFB2F3303F9809FF1370D75
                51D360A6D3F1042D0F8FCAB42CEAB40143CB959068CC75A18EEB88C61A888EAB
                9F0331AFFDDDF19A27AAD1D173BDA7C817456F3BBF83A8905D8F988C731EB7BD
                FE13634D65C7554885B8CAFF3DEEF8EDFFFB55FF0003BB58845053539C000000
                0049454E44AE426082}
              Stretch = True
            end
            object memo1: TMemo
              Left = 10
              Top = 30
              Width = 185
              Height = 62
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              Lines.Strings = (
                'mmo1'
                'ddfggfhghjhhl'
                'jhjhkj')
              TabOrder = 0
            end
            object btn_preview: TButton
              Left = 590
              Top = 210
              Width = 75
              Height = 25
              Caption = #25171#21360#39044#35272
              TabOrder = 1
              OnClick = btn_previewClick
            end
            object btn_print: TButton
              Left = 591
              Top = 241
              Width = 75
              Height = 25
              Caption = #25171#21360
              TabOrder = 2
              OnClick = btn_printClick
            end
            object btn2: TButton
              Left = 591
              Top = 179
              Width = 75
              Height = 25
              Caption = #26597#35810
              TabOrder = 3
              OnClick = btn2Click
            end
            object edt_title: TEdit
              Left = 248
              Top = 40
              Width = 217
              Height = 27
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
              Text = #26118#23665#24314#21327#30005#23376#22609#33014#26377#38480#20844#21496
            end
            object edt_purchase_order_no: TEdit
              Left = 407
              Top = 70
              Width = 90
              Height = 21
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 5
              Text = '00001'
            end
            object dtp_purchase_order: TDateTimePicker
              Left = 560
              Top = 70
              Width = 106
              Height = 21
              Date = 42032.910242476850000000
              Time = 42032.910242476850000000
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 6
            end
            object edt_supplier_name: TEdit
              Left = 97
              Top = 109
              Width = 121
              Height = 21
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 7
              Text = #20379#24212#21830#30002
            end
            object edt_addr: TEdit
              Left = 97
              Top = 136
              Width = 121
              Height = 21
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 8
              Text = #34903#36947'1'
            end
            object Edit1: TEdit
              Left = 97
              Top = 163
              Width = 121
              Height = 21
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 9
              Text = #27754#40527
            end
            object Edit2: TEdit
              Left = 97
              Top = 190
              Width = 121
              Height = 21
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 10
              Text = '13305786268'
            end
            object Edit3: TEdit
              Left = 97
              Top = 217
              Width = 121
              Height = 21
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 11
              Text = '078-12345678'
            end
            object Edit4: TEdit
              Left = 97
              Top = 244
              Width = 121
              Height = 21
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 12
              Text = 'pennwin@126.com'
            end
            object Edit5: TEdit
              Left = 407
              Top = 109
              Width = 121
              Height = 21
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 13
              Text = #34903#36947'1'
            end
            object Edit6: TEdit
              Left = 407
              Top = 136
              Width = 121
              Height = 21
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 14
              Text = #27754#40527
            end
            object Edit7: TEdit
              Left = 407
              Top = 163
              Width = 121
              Height = 21
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 15
              Text = '13305786268'
            end
            object Edit8: TEdit
              Left = 407
              Top = 190
              Width = 121
              Height = 21
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 16
              Text = '078-12345678'
            end
            object Edit9: TEdit
              Left = 407
              Top = 217
              Width = 121
              Height = 21
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 17
              Text = 'pennwin@126.com'
            end
            object Edit10: TEdit
              Left = 407
              Top = 244
              Width = 121
              Height = 21
              ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
              TabOrder = 18
              Text = #20154#27665#24065
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = #20837#24211#26126#32454
        ImageIndex = 3
        ExplicitWidth = 761
        object lbl2: TLabel
          Left = 48
          Top = 72
          Width = 48
          Height = 13
          Caption = #35746#21333#32534#21495
        end
        object pnl2: TPanel
          Left = 336
          Top = 56
          Width = 241
          Height = 313
          Caption = 'pnl2'
          TabOrder = 0
          object lbl1: TLabel
            Left = 40
            Top = 8
            Width = 24
            Height = 13
            Caption = '[1/3]'
          end
          object lbl3: TLabel
            Left = 32
            Top = 96
            Width = 48
            Height = 13
            Caption = #20837#24211#25968#37327
          end
          object ud1: TUpDown
            Left = 80
            Top = 8
            Width = 41
            Height = 25
            Orientation = udHorizontal
            TabOrder = 0
          end
          object edt2: TEdit
            Left = 86
            Top = 93
            Width = 121
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 1
            Text = 'edt2'
          end
        end
        object edt1: TEdit
          Left = 112
          Top = 61
          Width = 121
          Height = 21
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 1
          Text = '10001'
        end
      end
      object TabSheet5: TTabSheet
        Caption = #23458#25143#36164#26009
        ImageIndex = 4
        ExplicitWidth = 761
        object pnl6: TPanel
          Left = 0
          Top = 0
          Width = 839
          Height = 465
          Align = alClient
          Caption = 'pnl6'
          TabOrder = 0
          ExplicitWidth = 761
          object btn1: TButton
            Left = 376
            Top = 399
            Width = 113
            Height = 25
            Caption = #28155#21152#23458#25143#20449#24687
            TabOrder = 0
          end
          object btn_search_clientInfo: TButton
            Left = 278
            Top = 60
            Width = 75
            Height = 25
            Caption = #26597#35810
            TabOrder = 1
            OnClick = btn_search_clientInfoClick
          end
          object edt_search_client: TEdit
            Left = 32
            Top = 64
            Width = 225
            Height = 21
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            TabOrder = 2
            Text = #25628#32034#65306#23458#25143#20195#30721#12289#31616#31216#12289#20840#21517
            OnEnter = edt_search_clientEnter
            OnExit = edt_search_clientExit
          end
          object lv_client_info: TListView
            Left = 32
            Top = 91
            Width = 321
            Height = 302
            Columns = <
              item
                Caption = #23458#25143#20195#30721
                Width = 80
              end
              item
                Caption = #31616#31216
                Width = 60
              end
              item
                Caption = #20840#21517
                Width = 160
              end>
            GridLines = True
            ReadOnly = True
            RowSelect = True
            PopupMenu = pm_supplier
            TabOrder = 3
            ViewStyle = vsReport
            OnDblClick = lv_client_infoDblClick
          end
          object memo_clientInfo: TMemo
            Left = 376
            Top = 64
            Width = 329
            Height = 329
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            ScrollBars = ssVertical
            TabOrder = 4
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = #23458#25143#37319#36141#20135#21697#20449#24687
        ImageIndex = 5
        ExplicitWidth = 761
      end
      object TabSheet7: TTabSheet
        Caption = #38144#21806#25253#20215
        ImageIndex = 6
        ExplicitWidth = 761
      end
      object TabSheet8: TTabSheet
        Caption = #38144#21806#35746#21333
        ImageIndex = 7
        ExplicitWidth = 761
      end
      object TabSheet1: TTabSheet
        Caption = #20986#24211#21333#65288#25171#21360#65289
        ImageIndex = 8
        ExplicitWidth = 761
      end
      object TabSheet2: TTabSheet
        Caption = #24211#23384#26126#32454
        ImageIndex = 9
        ExplicitWidth = 761
      end
      object TabSheet9: TTabSheet
        Caption = #22791#26009#21333'('#25171#21360')'
        ImageIndex = 10
        ExplicitWidth = 761
      end
      object TabSheet10: TTabSheet
        Caption = #38656#24320#31080#26126#32454
        ImageIndex = 11
        ExplicitWidth = 761
      end
      object TabSheet11: TTabSheet
        Caption = #24212#25910#26126#32454
        ImageIndex = 12
        ExplicitWidth = 761
      end
      object TabSheet12: TTabSheet
        Caption = #24212#20184#26126#32454
        ImageIndex = 13
        ExplicitWidth = 761
      end
    end
  end
  object TrayIcon1: TTrayIcon
    Icon.Data = {
      0000010001004848000001002000885400001600000028000000480000009000
      0000010020000000000000510000130B0000130B000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000282C2B002A2E2D1E2022
      21610E110F44171A19311113121F0B1110182D353314454C490A3F4342061F22
      210609090906010101090000000C0000000F0000001100000013000000150000
      001700000019000000190000001A0000001A0000001A00000019000000180000
      00160000001400000013000000100000000E0000000C00000009000000070000
      0005000000030000000200000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000200000004000000050F1111411414
      14EC4E504EF1555655E64A4B4AD83F4040D0202221CB0F1210B70E100FA90B0D
      0C9B090A0A8E0D0F0F78050505610000006300000065000000680000006A0000
      006C0000006E000000700000007000000071000000700000006F0000006E0000
      006B0000006900000065000000610000005C00000057000000510000004B0000
      00440000003C000000350000002D000000240000001D00000016000000100000
      000A000000060000000300000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020000
      00050000000B000000130000001C0000002600000030000000380506066D2323
      23F5D3D4D4FFF3F3F3FFEBEBEBFFE1E1E1FFBFBFBFFF9B9C9BFF8D8D8DFF8080
      80FF6B6B6BFF737474F5828382E6737473E3666766DF676869DC434443D82324
      23D5171717D1131313CE0F100FCB0E0E0EC9060606C7040504C3010201C00102
      02BD020202B9060707B70D0D0DB6090A0AB1030303AB000000A40000009E0101
      01970000008F000101870000007E000000750000006B00000060000000540000
      00480000003C0000002F00000023000000180000000F00000008000000040000
      0002000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000100000007000000100000001C0000
      002800000035000000410000004E0000005B0000006800000074030303A23131
      32FBE9E9E9FFF4F4F4FFD2D2D2FFE5E5E5FFDADADAFFFBFBFBFFF5F5F5FFE5E5
      E5FFE9E9E9FFFAFAFAFFFAFAFAFFF5F5F5FFF2F2F2FFF5F4F4FFE6E5E5FFD5D4
      D4FFC9C8C8FFC0C0C0FFB8B8B8FFAEAEAEFE9A9A9AFE949494FC868686FB8787
      87F9898989F79C9C9CF7B2B3B3F8B2B2B2F6999999F37B7B7BEE3C3C3CEB2728
      28E5212222DF1C1D1ED91A1B1BCF0F1110C6090A0ABC0A0B0AB1080909A50707
      07920000007C0000006F00000061000000510000004100000031000000220000
      00160000000D0000000700000003000000010000000000000000000000000000
      0000000000000000000000000005000000110000001F0000002D0000003B0000
      004800000056000000650000007400000083000000900000009B000000BF5454
      53FDFBFBFBFFC7C7C7FF2F2F2FFF434343FF6D6D6DFFF9F9F9FF9A9A9AFF3434
      34FF707070FFF3F3F3FFBCBCBCFF565656FF646464FFE4E4E4FFFBFBFBFFB6B6
      B6FF929292FFD1D1D1FFFFFFFFFFEDEDEDFFD1D1D1FFDFDFDFFFC7C7C7FFEEEE
      EEFFF2F2F2FFC9C9C9FFD5D5D5FFF8F8F8FFFFFFFFFFF6F6F6FFC9C9C9FFBCBC
      BCFFC9C9C9FFB6B6B6FF979A95FF676C64FF595C57FE858884FC515250FC0E0F
      0DDB000000A100000096000000890000007B0000006D0000005D0000004B0000
      0039000000270000001A000000110000000A0000000400000000000000000000
      000000000000000000020000000E0000001E0000002C0000003A000000470000
      005700000068000000770000008600000094000000A1000000AB000000CA7374
      72FDFFFFFFFFBDBDBDFF161616FF171717FF7D7D7DFFFFFFFFFF7D7D7DFF1313
      13FF808080FFFCFCFCFF8F8F8FFF222222FF979797FFF2F2F2FFB0B0B0FF2525
      25FF3E3E3EFF363636FFDFDFDFFFC2C2C2FF252525FF353535FF2F2F2FFFDFDF
      DFFFB6B6B6FF1E1E1EFF333333FF7B7B7BFFFCFCFCFFC5C5C5FF343434FF5454
      54FFDEDEDEFFD5D5D5FF434442FF434442FF9A9B9AFFFDFDFCFFBDC0BBFF1A1E
      19E5000000B3000000A70000009C0000008F0000008000000072000000610000
      00500000003D000000290000001D000000150000000E00000006000000010000
      0000000000000000000100000009000000170000002600000034000000420000
      0053000000650000007500000084000000910000009E000000A8030303C88081
      7DFDFFFFFFFFB5B5B5FF1A1A1AFF262626FF656565FFFDFDFDFF757575FF1313
      13FF7D7D7DFFFDFDFDFF848384FF404040FFF4F4F4FFFFFFFFFF909090FF2828
      28FF808080FF1F1F1FFFCACACAFFEAEAEAFF393939FF212121FF676767FFFFFF
      FFFFA2A2A2FF2F2F2FFF767676FF2C2C2CFFE9E9E9FFB2B2B2FF101010FF5E5E
      5EFFEEEEEEFFBFBFBFFF1F1F1FFF5E5E5EFF2B2B2BFFDCDBDCFFD5D8D3FF3A40
      37E5000000B3000000A80000009C0000008F0000008000000072000000610000
      00500000003D0000002C000000220000001A000000130000000A000000030000
      0000000000000000000000000001000000050000000E0000001A000000280000
      00380000004B0000005C0000006C0000007A0000008800000093010100B96D6E
      6CFDF1F2F1FFE7E7E7FFA1A1A0FFA2A3A2FFE2E2E2FFFFFFFFFFB1B1B1FF7172
      71FFA4A4A4FFFCFCFCFFAAAAAAFF848483FFF1F2F0FFF1F1F0FFD8D8D6FF5A5B
      5AFF353535FF828282FFF6F6F6FFFFFFFFFF797979FF232323FFBEBDBDFFFFFF
      FFFF9FA09FFF191919FF2D2E2DFF6C6C6CFFFCFCFCFFA9A9A9FF121212FF5B5B
      5BFFEEEEEEFFB8B8B8FF1B1B1BFF4D4D4DFF2F2F2FFFE0E0E0FFD6D9D3FF484D
      44DF000000A200000096000000890000007B0000006C0000005C0000004B0000
      003C00000030000000270000001F000000180000001000000008000000010000
      0000000000000000000000000000000000000000000000000002000000070000
      000F0000001B0000002B0000003C0000004C0000005B000000680405048A4B4C
      4BC4878887D3868886EF878986FF9A9B9AFF848584FF747574FF6D6E6CFF6A6B
      69FF8A8A89FF959595FFA2A2A2FFA9A9A9FFAFB0AEFFC6C7C4FFD4D5D2FFD8D9
      D7FFACADABFFA0A19EFFB0B0AEFFBABAB8FFBCBCBAFFA5A5A4FFC6C7C5FFD6D7
      D5FFC4C5C4FF8E8E8DFF7C7C7CFFA7A7A7FFC2C2C2FF9B9B9AFF2E2E2CFF5858
      57FFD5D5D5FFD0D0D0FF727272FF6F6F6FFFBCBCBCFFFFFFFFFFC4C6C2FF3B3E
      37D20000007C0000006F0000006100000054000000480000003D000000330000
      002B000000240000001D000000150000000E0000000700000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000300000009000000110000001D00000029010101330101
      014C0101019E0B0B0BEC202020FF1A1A1AFF070807FF030202FF020101FF0101
      01FF070806FF0C0C0BFF060606FF060706FF0D0D0CFF141413FF222321FF4B50
      48FF4A4D49FF5B5C5AFF7A7B79FF242423FF171716FF161615FF141413FF191A
      19FF222322FF232422FF121212FF0A0A0AFF0C0C0CFF0F100FFF070706FF1212
      12FF353534FF8B8B8BFFA6A6A5FFBBBBBAFFD2D2D2FFB3B3B2FF565755FB2223
      21B40000004B000000420000003A000000340000002D00000027000000200000
      0019000000120000000C00000006000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001000000010909092A0808
      08A3151515F5212121FF101010FF090909FF1A1A1AFF292D28FF62685EFF8185
      80FFA4A6A2FF949492FF121211FF000000FF090909FF555555FF7D7F7CFFB6B9
      B3FFE5E6E3FFF9F9F9FFE7E7E6FF2A2A2AFF000000FF030303FF000000FF2124
      20FF666963FF919190FF9D9D9CFF979897FF929391FF6C6E69FF40413EFF3A3B
      38FF10110EFF151514FF212121FF171817FF232423FF2C2D2CFE171818CB1313
      135700000027000000240000001F00000019000000140000000E000000090000
      0005000000020000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000012121200232323010D0D0D3B0D0D0DC21D1D
      1DFE1D1D1DFF080808FF111211FF2E2D2DFF4D4E50FF434745FFABB2A5FFF0F4
      EFFFFFFFFFFFE7E7E7FF565656FF393939FF5B5B5BFFE9E9E9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE8E8E8FF2C2C2CFF000000FF000000FF000000FF6062
      5FFFF4F6F3FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF5F5F4FFEEEFEDFFE8E8
      E6FF666864FF1B1C19FF363635FF272727FF070707FF0A0A0AFF1A1A1AF91010
      10AF010101300000000600000005000000030000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000141414001D1D1D021111114D101010D8202020FF1616
      16FF080808FF1B1B1BFF434242FF9B9A9BFFA5A7A4FF363934FF91948DFFFBFD
      FBFFFDFDFDFFFDFDFDFFF2F2F2FFF1F1F1FFF5F5F5FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFEEEEEEFF5F5F5FFF373737FF2E2E2EFF101011FF6D6D
      6DFFFFFFFFFFFFFFFFFFEBEBEAFFABACA9FFCECFCDFFFDFDFCFFFFFFFFFFFFFF
      FFFF999B9AFF231F17FF41331FFF3D3A35FF333333FF131313FF060606FF1919
      19FE151515C00303033325252500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000151515001B1B1B0216161655141414E1222222FF111111FF0A0A
      0AFF222222FF5F5F60FFC9C8C8FFFDFDFDFFCFD1CDFF575955FF484A48FFE9EB
      E9FFFFFFFFFFFFFFFFFFFDFEFDFFF5F5F5FFF9F9F9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFDFFF3F3F3FFF0F0F0FFEAEAEAFFC2C2C2FFB3B3
      B3FFFEFEFEFFFFFFFFFFD2D2D2FF181918FF3C3C3BFFEAEAEAFFFFFFFFFFFFFF
      FFFFA9A9A9FF534D40FFA79881FFA7A294FF686A6BFF393A3BFF1D1D1DFF0404
      04FF161616FF171717CC05050538232323000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      080000000A0000000D0100000600000001000000000000000000000000000000
      0000161616000F0F0F011C1C1C4F171717E2232323FF0F0F0FFF0D0D0DFF2627
      27FF727578FFD9DBDAFFDEDFDAFFFAFBF9FFECECEBFF8D908AFF151714FF9294
      8FFFFFFFFFFFFFFFFFFFEAEAE9FF6D6E6BFFC9C9C8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FDFFFFFFFFFFFFFFFFFFEFEFEFFF959595FFAFAFAFFFFAFAFAFFFFFFFFFFF6F6
      F6FF6B6B6BFF6C6759FF948265FF9A8A74FFA4998DFF5F5C4FFF353432FF2424
      24FF040404FF151515FF171717CC030303340C0C0C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      090000000B0100000E0500000700000002000000000000000000000000000D0D
      0D003F3F3F00212121401C1C1CDA232323FF0F0F0FFF0E0D0DFF262727FF7C7F
      82FFECEEEEFFD6D9D2FFCED0CAFFEFF0EEFFEDEEEDFFB5B8B2FF2E312EFF5455
      54FFF9F9F9FFFFFFFFFFF6F6F6FF777A75FFD5D6D3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF5F6F5FFC3C4C2FFDEDEDEFFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FF7A7A
      7AFF0B0B0AFF787B79FFC3BDB3FF91816DFFA4937DFFB5A990FF6C6355FF3939
      39FF252525FF040404FF151515FF151515C00101012505050500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101003030
      300026262628222222C8242424FF121212FF0C0C0BFF262728FF75787BFFE2E4
      E2FFF2F3F1FFCBCEC7FFD8DAD3FFD6D8D2FFDDDEDBFFC5C7C1FF7E817DFF3435
      33FFDDDDDDFFFFFFFFFFFEFEFEFFCCCDCBFFF1F2F0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE9E9E8FF333333FF3B3C3BFFE8E8E8FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF4F5F4FFC1C1C0FFDDDDDDFFFFFFFFFFFDFDFDFFA3A3
      A3FF090A09FF727470FFD2D1CBFF978A72FF9B886AFFC6BFB2FFEBECE8FF9B9F
      A1FF414345FF242424FF040404FF181818FF121212A800000014020202000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000262626002525
      25112A2A2AA5262626FF181818FF090909FF212222FF75787CFFE1E3E3FFE6E7
      E4FFEDEEEBFFCBCEC7FFD4D6CFFFC6C8C1FFDADBD8FFCACCC6FFA9ABA8FF1E20
      1FFFB0B0B0FFFFFFFFFFFFFFFFFFFDFDFDFFFEFEFEFFFFFFFFFFFAFAFAFFFCFC
      FCFFFFFFFFFFFFFFFFFFEFEFEFFF6A6A6AFF707170FFF1F1F1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE2E2E2FF353535FF868686FFFFFFFFFFFFFFFFFFE8E8
      E8FF2D2D2DFF6E6E6AFFD8D3CCFFB6AE9CFF6B532FFF806B4BFFE1E0D5FFCECA
      BBFF61594DFF353535FF1E1E1EFF050505FF1A1A1AFA0D0D0D80000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151500000000023131
      31712B2B2BF8202020FF070707FF1C1D1DFF5F6266FFD2D4D4FFEEEFECFFDCDD
      DAFFECEDEBFFCFD1CCFFC7CBC4FFC4C8C1FFDCDFDAFFC6C8C2FFC6C8C4FF4041
      40FF696969FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7FFEBEB
      EBFFFFFFFFFFFFFFFFFFFEFEFEFFF9F9F9FFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7F7F7FFCBCBCBFFE6E6E6FFFEFEFEFFFFFFFFFFE4E4
      E4FF2B2B2BFF5F5F5CFFCDC1B1FFC9C4B8FF97866BFF6C4F20FFB8AC95FFB4A6
      8DFF593A17FF362A1EFF363737FF141414FF0A0A0AFF1A1A1AEA0707074C1515
      1500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060040404000323232363333
      33DE282828FF0A0A0AFF151515FF44464BFFCFD1D4FFE2E3E0FFE8E8E6FFD3D5
      D0FFEDEDECFFD7D9D5FFC4CBC3FFC5CCC4FFDBDFD9FFC8CAC4FFB1B4AEFF3537
      34FF2A2A29FFDBDCDAFFFFFFFFFFFFFFFFFFFFFFFFFFF3F4F3FF797978FFE3E3
      E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCFFF5F6F4FFDDDD
      DCFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCFFDADBD7FF7475
      72FF1F201FFF90918DFFE3DBD2FFB3AA97FFE0E0DAFF9B8B6EFF836F49FFCAC0
      B3FF826B55FF553718FF3C3227FF343535FF090909FF121212FF161616C10000
      001C020202000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000222222001F1F1F0B393939A33232
      32FF141414FF0C0C0CFF2B2C2FFFA6A9AEFFEAEAEAFFE1E2DFFFDEDEDBFFCCCD
      C9FFE6E6E5FFD7DAD5FFC6CCC5FFC6CDC6FFD7DCD5FFC9CCC5FFBFC1BAFF5B5D
      5AFF0C0C0BFF676865FFA9AAA9FFAFB0AFFFAFB0AFFF858685FF343434FFC5C5
      C5FFDEDEDEFFDADBDBFFDBDBDBFFCFD0CEFFB4B8B2FF91958DFF5B5D59FF4D4C
      4DFF9F9F9FFF9FA0A0FF9D9D9DFF9D9D9DFF989998FF757672FF363933FF080A
      07FF515454FFE8E7E5FFF5EFE9FFC1B9A6FFD8D8D2FFDFE0DBFFC2B7A6FFA69C
      8BFFD2CFC7FFAD9D86FF796345FF363430FF292929FF040404FF191919FC0D0D
      0D7B000000020000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030300606060003939394F3B3B3BF02525
      25FF060606FF1C1D1DFF73767CFFE5E5E7FFE6E6E6FFDFE0DDFFD5D6D3FFCDCE
      C9FFDFE0DBFFD1D3CDFFC6CCC5FFC6CDC5FFD1D5CEFFCFD2CBFFC9CBC4FFA3A6
      A0FF4A4C49FF2B2923FF2F2820FF473C33FF3D3833FF35322DFF413D38FF5653
      4FFF64605AFF625D55FF3B3B37FF232624FF1A1D1AFF111210FF050605FF1B19
      16FF1F1F1AFF101710FF151A13FF292923FF141813FF101712FF20241EFF4844
      3CFF313B36FFC4C6C4FFF5F1EDFFD2CDBDFFC4C1B0FF9A8974FFA99B8FFFC3BA
      ACFFC4B79FFFA69374FF765F35FF43351FFF353536FF151515FF0C0C0CFF1919
      19DB0202022E0404040000000000000000000000000000000000000000000000
      0000000000000000000000000000292929002424240F414141B1373737FF0F0F
      0FFF101010FF3D3F44FFD0D1D5FFF1F1F1FFEDEDEDFFE8E9E6FFDFE0DDFFD6D8
      D3FFD6D9D2FFCBCEC7FFCAD0C9FFC6CDC6FFC9CDC6FFD1D4CDFFD0D3CCFFBFC2
      BBFFB6B9B3FF81705EFF89725BFFC5B1A1FFC5BBACFFC0BDB0FFEEE7D8FFB8B2
      A7FFE1D6C9FFE8DACAFF787767FF16271DFF30362CFF383429FF131E15FF2329
      1FFF414337FF18291EFF223129FF59584BFF3E4538FF24372EFF3A443AFF9A8D
      7EFF7B796EFFA4A5A3FFAEA08FFF705C3FFF8E7F69FF917F6BFF583A16FF6A4C
      23FF6D4E23FF64431AFF5B3A15FF4E3214FF302925FF313232FF050505FF1717
      17FF0F0F0F8A0000000300000000000000000000000000000000000000000000
      0000000000000000000001010100565656003A3A3A4C434343F1262626FF0606
      06FF1F2021FF8D8F96FFF2F3F3FFF1F1F1FFF0F1F0FFEDEEEDFFE4E4E3FFDEDF
      DBFFD1D4CDFFD2D5CFFFD5DBD4FFC6CDC6FFC6CBC4FFC8CBC4FFD8DAD4FFD0D2
      CEFFC1C3BEFF7C7161FFBAAB97FFECEAE1FFE7E1D4FFBCBDB4FFFCFDF4FFDCDB
      D2FFD7D0C6FFFBEADDFFBAB09FFF26352AFF5F6354FF8B8574FF1A2A20FF192F
      26FF5B635DFF46544DFF283A35FF63675CFFACA99EFFB7B9ADFFCDC3B3FFE3D1
      BFFFE7CEBAFFD4CAC6FF897962FF685335FF7F705AFFA29682FF765D3AFF5C3E
      19FF543513FF513111FF503011FF513312FF3D2917FF343435FF191919FF0B0B
      0BFF181818DB0000002B03030300000000000000000000000000000000000000
      000000000000000000001A1A1A000C0C0C07434343A13E3E3EFF111111FF0F0E
      0EFF444549FFDEDEE1FFF6F6F5FFF4F4F4FFF3F3F3FFF1F1F1FFEAEAEAFFE5E6
      E3FFD9DCD5FFCED2CBFFCBD1CAFFC6CDC5FFC6CAC3FFC3C6BFFFC4C7C0FFD8D9
      D6FFE2E3E0FF8D8C88FF737064FFDCDED3FFEFEADEFFA8A6A0FFE6E8E3FFF8F8
      F2FFE7E4DAFFF5ECE0FFE3DACFFF646C64FF88897EFFD6CEC0FF5C6259FF434C
      47FF797B77FFC4C4BEFFC1C2BBFFEAEAE0FFFBFAF1FFFEFDF5FFFDFBF4FFF9F5
      EDFFF4E8DAFFD9CFC4FFA3937AFF745E3BFFCFCCC3FFC9C3BBFF86715AFF6044
      27FF4C3011FF503212FF573815FF573916FF4A2E12FF312A24FF313232FF0505
      05FF181818FD0D0D0D77BCBCBC00000000000000000000000000000000000000
      000000000000000000003B3B3B003232322F474747E1303030FF060606FF1B1B
      1CFF8A8C90FFF8F8F8FFF5F5F5FFF4F4F4FFF3F3F3FFF2F2F2FFF0F0F0FFE5E7
      E3FFD0D2CBFFCACEC7FFC8CDC6FFC6CBC4FFC4C8C1FFC2C5BEFFBFC1BBFFBEC0
      BBFFD5D6D3FFCFD0D0FF2E322FFF394944FF6C7C7DFF617379FF76898BFF8B9B
      98FF87918BFFDCD8D0FFFBEEE3FFBCB6ACFFA39688FFDBC5B3FFDBC7B5FFDDCD
      C0FFE7D8CDFFF2E3D7FFF6EEE0FFF9F8EEFFFCFAF2FFFCF9F0FFFCF9F1FFFCF9
      F0FFF2EBE1FFCEC9BDFFA0937BFF7F6947FFD7D5CBFFDBDAD1FF9E8F78FF6A50
      2DFF5B401AFF5D4019FF5E421AFF513111FF4A2B0EFF3F301CFF373738FF1313
      13FF0F0F0FFF161616C300000015000000000000000000000000000000000000
      0000000000000A0A0A00A2A2A2003C3C3C6F464646FD1D1D1DFF090909FF3334
      36FFCECFD2FFF6F6F6FFF4F4F4FFF3F3F3FFF2F2F2FFF0F0F0FFEAEAEAFFDDDE
      DBFFCDD0C8FFC9CCC5FFC6C9C2FFC6C9C2FFC5C7C0FFC2C5BEFFC0C2BBFFBEC0
      BAFFDEDEDCFFFAFAFBFF898C8CFF1A2820FF2C4347FF3B5863FF385862FF2B47
      44FF1F312AFF7C7E71FF9F9283FF5C564CFF322F26FF414035FF63685DFF948F
      85FFCEC0AEFFEEDFCEFFEEE2D2FFF8F2E7FFFCF9F1FFFCF9F1FFFDF9F0FFFEFB
      F1FFE7E2D8FFCAC9C3FF9A8E76FF836F4FFFBCB2A2FF776141FF776241FF664F
      28FF593D16FF5C3E16FF5D411FFF604932FF857762FF999283FF494B4DFF2828
      28FF050505FF1A1A1AF106060647070707000000000000000000000000000000
      0000000000001D1D1D001313130A424242B0414141FF0D0D0DFF131313FF3F40
      45FFCACACCFFF4F4F4FFF2F2F2FFF1F1F1FFF0F0F0FFEEEEEEFFE9E9E9FFD1D3
      CFFFC9CBC4FFC6C9C2FFC8CAC3FFC8CAC3FFC2C5BEFFC1C3BCFFBFC1BAFFC4C6
      C0FFEFF0EDFFFEFEFEFFD1D3D6FF3E4848FF263B38FF2D4748FF273F3FFF1930
      29FF233633FF4C5457FF3C4040FF090B09FF191919FF1A1C1AFF373E41FF7F8C
      95FF767D7BFF939287FFD8D5C5FFFDFAEEFFFFFCF4FFFFFDF5FFFDFAF1FFDCD8
      D0FFA9AAA4FFCCCECCFF98886FFF5B431BFF948971FF96856DFF5E4422FF6F5B
      3AFF847258FF9A8A75FFA19789FF939088FF73736CFF51554FFF282E31FF3636
      37FF080808FF161616FF0F0F0F86000000010000000000000000000000000000
      000000000000313131002A2A2A29454545DE353535FF060606FF1C1C1DFF474A
      4FFF757576FFC5C5C5FFF1F1F1FFEFEFEFFFECECECFFEBEBEBFFEAEAEAFFE0E2
      DEFFC8CBC4FFC5C7C0FFCCCFC8FFCED1CAFFC8CAC3FFCACDC6FFD0D2CBFFE3E2
      DEFFF8F6F3FFE1E2E3FF9DA1AFFF6D7180FF2A3C3CFF293C3BFF22322BFF3141
      3FFF7D8B99FF959CA9FF303234FF111210FF474848FF474847FF1D1E1DFFA1A5
      B6FFCAD2E6FF9AA2AFFF767A77FFBCBAAFFFCAC5BDFFA5A59CFF7B8579FF414E
      47FF959C99FFE8EAE6FFA59984FF634E29FF736040FFBEB6A5FFC8C0B5FFB4B0
      A8FF8E8D89FF666762FF44483FFF353833FF282923FF2F3430FF1E2425FF3435
      38FF151515FF0F0F0FFF161616BF000000110101010000000000000000000000
      0000000000004444440032323252474747F7262626FF070707FF2C2D2FFF9FA1
      A4FF717171FF5A5A5AFFADADADFFEAEAEBFFECECEDFFEDEDEDFFEEEEEEFFEEEE
      EDFFE4E5E2FFE8EAE7FFF3F4F1FFF6F7F4FFF6F7F4FFF9FAF6FFFBFCF9FFF8F9
      F9FFDADADBFF9CA0A7FF929BAEFF8E95A2FF2E3A38FF1B2B27FF26352FFF828D
      99FFBBC6DCFFADB4C5FF3E3F43FF3D3F41FF818589FF6F7274FF414444FFBBC1
      D4FFDAE2F6FFDBE3F5FFBFC6D8FF5B6667FF2C3A31FF1B2B21FF192C22FF3040
      41FF969DA5FFE8EEEDFFE3E7DDFFD2D1C3FFC3C0B9FF91908BFF535550FF2323
      21FF1A1B19FF2A2F28FF424847FF575B5FFF4B4E4DFF3C4541FF4F575BFF3B3D
      42FF252525FF070707FF191919E40202022F0303030000000000000000000000
      000006060600FFFFFF0033333380464646FF181818FF0C0B0BFF444648FFE4E5
      E6FFD0D0D0FF6A6B68FF434342FF959594FFD5D6D4FFC9C8C8FFC5C4C3FFBCBC
      BAFFBBBBB8FFB0AFACFFA8A9A6FFABAFABFFAFB2B0FFB6B7B8FFADAEB2FF8E91
      95FF757981FFA4AABAFFB9C3D8FF9EA2AFFF958F85FF676B5DFF57605BFFB9C0
      D7FFC9D1EAFFBFC7DBFF5A5D65FF57595EFFBEC2C7FF979A9EFF7C8286FFDCE7
      F9FFE0E8F8FFEAF4FBFFEEF6FFFFAFB7C3FF2B3933FF202F27FF253631FF7984
      8FFF9DA6BAFF7F898EFFA8B0B0FF7B7F7CFF29302DFF171912FF191A13FF1616
      11FF2F2F2AFF3E4343FF555C62FF596062FF383D31FF313425FF575C5FFF454A
      52FF313131FF050505FF191919F8080808550A0A0A0000000000000000000000
      00001010100000000005363636A5434343FF0E0E0EFF101010FF616466FEF4F4
      F5FFF0F0F0FF9FA19CFF3D3F3AFF30312EFF3B3C38FF35332FFF37362EFF2525
      19FF1E1F12FF1A1B0EFF1D1E13FF373A37FF6B6E77FF696C78FF53575DFF545A
      5FFFB2BAC5FFDDE6F6FFE0E8F9FFA9AEBAFFB4A398FFF0DDCEFFC2BFC1FFCAD3
      EBFFD6DEF5FFCED8EDFF484D54FF1A1A1AFF5F5F62FF303031FF484D4FFFDAE7
      F1FFEDF6FEFFF3FDFFFFF5FFFFFFE5F0F4FF586564FF172619FF2E423DFFA7B2
      C1FFCCD6EFFF9CA3B7FF60656EFF404643FF1D2A1CFF272C21FF2B2D27FF2728
      1DFF28291EFF373E3BFF3C423EFF505555FF3C4036FF33341EFF282D1BFF3237
      3AFF3A3A3BFF080808FF171717FF0E0E0E7A4A4A4A0000000000000000000000
      00001D1D1D0017171713353535C43F3F3FFF090909FF171717FF484B4EFE8686
      86FF6E6E6EFF494A45FF3C3E36FF30312BFF1F1F1EFF22211BFF232319FF2122
      14FF1B1C10FF1E2017FF393E41FF646A78FF9A9EB2FF7B818FFF697279FFA6AF
      B8FFE0EEF7FFE4F0FBFFE8F2FEFF9BA3ADFF7D6D5FFFE1C8B4FFDAD8E0FFD7E5
      F8FFDAE7F7FFE1ECFBFF969AA4FF21201FFF191917FF151513FF8B9198FFDEEB
      F8FFEFFAFEFFF4FEFEFFF4FEFDFFEFFCFDFF8A9599FF1D2B1DFF374845FFBDC6
      D9FFDDE8FCFFB1B7C9FF595E64FF70757EFF4D5848FF35392DFF444442FF3135
      2CFF1F2E2BFF354C54FF2C3E42FF324446FF2A352AFF30331DFF2C2F1EFF3D41
      45FF3D3E40FF0E0E0EFF141414FF1111119D0000000400000000000000000000
      0000222222001C1C1C20363636D93A3A3AFF060606FF1A1A1BFF3E4143FE5253
      51FF414543FF45473FFF545346FF56544AFF3A3B35FF181817FF12140FFF191B
      10FF242223FF282A31FF343A4AFF636B7BFF8E92A4FF888D9DFFBBC5D3FFDEEB
      F9FFE0EFF9FFECF6FCFFEBF5FCFF6D727CFF655A51FFD8C7B8FFD7DAE7FFE2EB
      FBFFE7F1FCFFD4DCE5FF717379FFA8ABAAFFC4C7C6FF5C5F5FFFBCC5CAFFE9F9
      FFFFF4FEFDFFF6FEFEFFF4FEFEFFF0FDFFFF9FA7B0FF20281EFF39453EFFCAD3
      E1FFE9F4FEFFDBE5EEFF83878FFF5C5F65FF3E453AFF272B1BFF3F3F39FF3F42
      3EFF2F4548FF395763FF35525FFF3B5963FF394D4FFF333522FF41361DFF4B3D
      2EFF3E3D3EFF141414FF101010FF141414B40000000A01010100000000000000
      0000202020001A1A1A2B353535E4353535FF060505FF1C1D1EFF424446FE4E50
      4DFF3D423FFF45483EFF585648FF555449FF41433CFF30322DFF111110FF0D0B
      09FF121011FF171A1CFF1B1D21FF2D2F34FF676973FF838998FFB5BED4FFD6E1
      F6FFF0F7FDFFFBFFFEFFDAE0E5FF3C3F45FF7A736EFFD3C9BFFFC5CADAFFE1EB
      F8FFE9F3FCFF8E949CFF84878AFFF7F9F9FFFFFFFFFFA8AAAAFF6C7273FFECF9
      F9FFF1FCFDFFEBF5FDFFE8F2FCFFE4EDFAFFA0A7B5FF273432FF3E4B47FFCFD5
      E1FFE1EAFAFFDBE4F4FFC0C9DCFF70757DFF3C423BFF474A47FF464847FF4747
      46FF2D3F3FFF38515AFF34494BFF3B433EFF4E442EFF684A23FF6C491EFF5337
      1AFF403E3EFF1A1A1AFF0D0D0DFF171717C40000001101010100000000000000
      0000202020001A1A1A33333333EA323232FF060606FF1D1D1EFF3C3F3FFE4949
      44FF3E3F3AFF424239FF454236FF49473CFF5B5C53FF606256FF2E2E27FF110E
      0DFF080505FF070606FF090908FF0E110AFF363832FF5B5E67FF878FA4FFBDC5
      DAFFE9F0F9FFF5FCFFFFB2B6BEFF2B2C2FFF928F8EFFD0CDC7FFA8B1C2FFBDC6
      D8FF969CA8FF6D7074FFDDE3E7FFF2F8FDFFF5FEFFFFE7EBEEFF6A6F71FFC9D1
      D1FFF4FCFFFFE2E9FAFFC6CEE3FFB0BACDFF9199A7FF3B5052FF404C4FFFBFC5
      D7FFCAD4EAFFB7C1D8FFA4ADC0FF848A99FF575B61FF4B4E4EFF515458FF3F41
      3FFF475046FF494531FF49361AFF573A16FF6B491DFF714E20FF6C4A1EFF5438
      1AFF424040FF1E1E1EFF0C0C0CFF181818D00000001902020200000000000000
      0000232323001C1C1C39323232ED313131FF060606FF1C1C1DFF343635FF4644
      3DFF585042FF5A5744FF5E5949FF5C5446FF5F5D50FF5B5B50FF4C4B41FF1F1E
      17FF100F09FF0E0D06FF070A04FF040603FF121208FF25251BFF434744FF6A71
      79FF9AA0AEFFA2AAB4FF535759FF1D1C1CFF68625EFF9B928BFF9DA4ACFFA2A8
      ADFF4B4E53FFA2A9B4FFDDE7F7FFCDDAEAFFDBE4ECFFF2F6FBFFACB4B9FF969F
      A1FFF5FCFFFFEDF7FDFFE1EBF6FFB8C2D3FF717883FF293834FF293131FF888F
      9DFF99A3B4FF919BABFF868D9BFF7A808EFF6D7380FF43494AFF3A3D39FF9091
      8AFFD1CDBEFF786143FF5B3915FF6C4B1EFF704E20FF735022FF6F4D20FF5538
      19FF444241FF202020FF0B0B0BFF181818D60000001D00000000000000000000
      0000212121001A1A1A3A2F2F2FEE313131FF060606FF1B1B1CFF343635FF5757
      4FFF78725EFF9C927DFF887E6CFF6D6A63FF64645FFF52514BFF313227FF2221
      14FF1D1B0EFF1A1B0CFF1E1F14FF070804FF030402FF070704FF0E0F06FF181A
      12FF242420FF22231CFF0B0C07FF0A0C09FF282419FF4D4534FF3E423DFF3334
      31FF3E3E3EFF7B818CFF8A92A3FFA9B2C0FFABB3C2FFD6E0EBFFB6C3D0FF727C
      83FFD8E0E6FFE8F3FBFFBEC4D7FF787E8AFF373D3CFF10150DFF181A16FF5156
      5BFF606970FF646C73FF626870FF5B6068FF4E555BFF2D3530FF5B5D56FFD2CE
      CBFFE1E0DBFF7F7762FF543E19FF6A4D25FF73582FFF7A5F33FF735327FF593A
      1BFF474443FF202020FF0B0B0BFF181818D60000001D00000000000000000000
      00001B1B1B00151515352A2A2AEB333333FF050505FF1D1D1EFF4A4C51FFC1C5
      C4FFCFCEC6FFC6C4BBFFBCB8ADFFBABCBEFF999DA2FF6E7176FF515557FF4A4B
      4AFF3D3D34FF2B2B1CFF1A1911FF0A0A06FF0F120BFF090A07FF000002FF0101
      00FF010100FF010000FF000000FF010001FF060403FF14140EFF1A1B15FF1D1E
      1BFF474847FF4F5251FF4F5052FF53585DFF676D77FFAEB5C5FFC6D3E8FF858C
      98FF999EA9FFBCC7D8FF737885FF424444FF171C15FF0F110CFF111210FF2D2E
      2BFF3B3D3AFF313330FF262823FF1D201BFF10120EFF060705FF141412FF2A2A
      28FF464644FF22241EFF0C0C05FF19130EFF292317FF382E1AFF443318FF4731
      1BFF474648FF1D1D1DFF0C0C0CFF181818D20000001A02020200000000000000
      0000171717001111112E252525E5363636FF050505FF1F2021FF595C64FFD7DA
      DDFFFDFCFAFFFAFAF9FFF7F8F7FFEEEFEFFFD6D7D8FFBEC0C3FFABADB4FF9B9D
      A6FF90949CFF7A7E85FF454A4CFF161715FF383836FF292B26FF11120FFF0909
      09FF020201FF010101FF010101FF000001FF000001FF000100FF010201FF1314
      12FF373A34FF40443FFF4C504FFF595D60FF454A4BFF5D6264FFC5CFDFFFB5BF
      CFFF72777EFF888F9BFF424547FF1C1A17FF080704FF050503FF060604FF0606
      02FF090803FF070602FF040401FF020200FF010200FF030402FF050604FF0304
      01FF020200FF0D0D0BFF1C1B19FF161412FF131311FF10100FFF0C0B0AFF0E0F
      12FF3D4147FF191918FF0F0F0FFF171717C70000001302020200000000000000
      00001616160010101023202020DC393939FF060606FF19191AFF4A5156FFCED2
      D2FFE6E3DBFFEBE5D8FFF3EEE9FFF9F8F5FFFEFEFDFFFCFEFCFFF6F9F3FFF2EE
      E7FFE6E3DCFFD6D4D0FFC0C1C1FFABACABFFA2A1A4FFB0AFB0FF8A8D86FF6D6E
      69FF454641FF1B1A16FF090703FF080505FF010001FF000000FF000000FF0000
      00FF1A1B17FF4D5054FF77808BFFA1A8B6FF969FACFF575B5FFF7E8389FFC9D3
      E7FF6B7079FF2E3135FF060708FF030201FF070703FF090A05FF12100EFF0B0D
      08FF060804FF060803FF030402FF020202FF030301FF0A0905FF13130BFF1112
      09FF13140AFF16160DFF191911FF1D1D18FF252824FF2B302CFF30332FFF2B2F
      33FF424549FF131312FF121212FF141414B80000000C02020200000000000000
      00001616160011111117181818CA3A3A3AFF0A0A0AFF131414FF61656CFFC7C7
      C8FFACABA1FF9B8657FFA6875BFFB49D78FFC5BA9FFFD1C9B3FFDACFB7FFE4DC
      C6FFEAE5D4FFF1EDE0FFF9F9F8FFFDFDFDFFFAFAFBFFFCFCFCFFFAFAF6FFF2F0
      E8FFE3DFDBFF6E6D66FF0F1208FF484B4AFF828383FF626363FF424243FF2222
      22FF343638FF66676FFF544B47FF71665FFF818083FF848C9CFF616871FF8D94
      A3FF3D3E45FF010000FF040401FF0A0F0FFF142528FF0F1813FF1E211CFF272A
      26FF1E211BFF11130DFF040602FF020401FF040401FF0D0A06FF14130BFF1414
      0CFF16150DFF15140CFF131307FF090802FF040301FF070704FF0B0B08FF1C21
      26FF414346FF0C0C0CFF161616FF111111A40000000601010100000000000000
      00000F0F0F0010101008121212AD383838FF111111FF0F0F0FFF4E5158FFC6C6
      C6FFBBBDB9FF998562FF8F682DFF917034FF90753DFF91743CFF8B6A35FF8D71
      3CFF927C48FFA6966DFFC1C3BCFFCED0CCFFDADBD9FFEAEBE9FFF6F6F5FFF8F3
      EFFFF9F6F0FFC6C6C2FF384F53FF375F70FFAFC3CBFFF4F7F7FFF1F1F1FF9E9E
      A1FF70727EFF706C73FF4D433CFF655A53FF7B7774FFA7AEBFFF9EA7BAFF5F65
      6AFF2B2E2CFF272726FF2B2D2BFF223B3FFF1D4C59FF306270FF343835FF3C40
      3CFF373A36FF262927FF1C1F1BFF252825FF1A1B1AFF2A2A28FF272924FF1E1D
      18FF181711FF15150EFF12140AFF090803FF050101FF060201FF030200FF1D24
      2AFF3C3D3FFF070707FF191919FF0D0D0D830000000000000000000000000000
      000006060600555555000C0C0C8A303030FF1D1D1DFF0A0A09FF34373CFFB2B6
      B6FFC9CCCBFFB2ACA0FF96743EFF956D31FF8F6C30FF906D30FF8D6A2EFF8B68
      2CFF8B672AFFA38659FFBAB9B0FFA9AEA8FFA8AAA4FFADADAAFFB6B8B5FFC6C2
      BCFFBAAD93FFDDD7C7FFB0C2C4FF233B41FF2D393AFFC5CACAFFF4F6F5FF878B
      92FF9DA5B9FFAAAEBFFF777883FF7C7F8AFFBCC4D0FFD5E1F3FFC8D4EAFF949B
      AAFF9CA1A3FF9FA4A3FF4D4D4CFF13130DFF243636FF668595FF757984FF6970
      77FF6F7579FF5D6060FF484948FF4A4A4BFF494A4CFF525556FF66696AFF5E5F
      62FF595B5AFF383B37FF2A2E25FF1D1F1AFF110E0BFF0D0A07FF080806FF2C32
      39FF323232FF060606FF1B1B1BFB0707075E0A0A0A0000000000000000000000
      0000010101000F0F0F000B0B0B5D232323FA2B2B2BFF050505FF222427FF979B
      A0FFCFD0D0FFBCB4A9FF9E7B44FF966F30FF937031FF947030FF957030FF936F
      30FF906D2EFF95723AFFAD9B77FFC0C1AFFFB9BCB5FFADAEABFFADB0ABFFA59A
      84FF765C2BFF8F7B4EFFDDD7CAFF7C7A76FF1F2016FF474744FFA5A7A7FF888C
      9AFFC8D4E7FFBAC4D4FF9194A6FFA9B4C1FFAEBAC5FFEAF6FCFFDEEBF8FFAEBA
      CFFFBDC4CEFFB8BCBCFF262821FF16170BFF858789FFD4D7DEFFD1D3DBFFCACC
      D6FFCCD1DCFFC5CBD6FFBEC2CBFF979CA1FF6D7273FF373B3AFF646666FF5455
      55FF555753FF282C26FF262B20FF262C1EFF1E2014FF1B1A0EFF20241DFF3E43
      48FF212121FF0A0A0AFF1A1A1AEA010101380303030000000000000000000000
      000000000000111111000B0B0B32161616E7363636FF060606FF161718FF6F75
      7DFFBFB9ACFFA58653FF9C7333FF9A7232FF9A7232FF9B7432FF9B7332FF9872
      31FF957131FF947030FF936D2FFFA08651FFBCB99DFFC3C8C0FFAFA88FFF836C
      3AFF775D29FF7B6537FFD4CEBFFFEDEBE5FF6C6F66FF11150CFF2C302CFF8D8E
      99FFCBCDD5FFC4CDDCFFACB6C8FFD6E3EFFFCBD6E1FFECECEEFFDEDBE1FFB9BD
      CBFF9AA2ADFF3D4240FF14180BFF858782FFF2F1F3FFFEFEFEFFFDFDFCFFFDFC
      FCFFFAFAFAFFF0F0F1FFF3F3F3FFE7E6E8FFBFBFBEFFABAFB2FFAFB2B4FFA0A4
      A4FF787E7FFF565B5CFF7D8282FF6C7271FF494D4CFF1E1B16FF252929FF4043
      46FF111110FF131313FF151515CA000000170202020000000000000000000000
      0000000000000F0F0F00101010100C0C0CBD353535FF111111FF0E0E0EFF4041
      43FFA48857FFA67935FFA07634FF9C7533FF9E7734FF9E7935FF9E7834FF9A76
      33FF997634FF987634FF9C7834FF9A7E3EFFAB9F7AFFADA485FF8C733AFF8163
      2AFF7C602EFF766035FFA19576FFEFEEE4FFE1E3DFFF656762FF2E312DFF6061
      61FF5C5043FF86868BFFACB7CAFFD2DCE8FFADB0BDFF81736FFF83736EFFB2B3
      BEFF959CABFF494D4DFF42423BFFDEDDDEFFFDFCFEFFFAFAFAFFF6F6F6FFF7F7
      F7FFF8F8F8FFECECECFFEBE8E4FFD6D2CCFFDCDAD6FFD3D3CBFFD4D4CDFFDADD
      DBFFC3C6C5FF9E9D93FF8C846FFF8A826EFF78746BFF525356FF535B62FF3637
      38FF070707FF1A1A1AFF0D0D0D95000000030101010000000000000000000000
      00000000000009090900FFFFFF0008080880262626FF262626FF060606FF2221
      22FF856F47FFA98542FFA47E39FFA27E38FFA27B35FFA27C36FF9F7A35FF9C7A
      35FF9D7B36FF9D7A37FFA37F3EFFA48748FFA9915AFFAA9565FFA48F67FFA493
      74FF99907AFF939182FF807356FFC6BFACFFF8FAF7FF92938FFF22231BFF3437
      33FF393A31FF414643FF5A5F62FF6E7279FF52575AFF484C49FF3D3E39FF5B5F
      68FF6D717CFF58595CFF95979AFFF3F5F7FFF7FAFBFFF5F8F7FFF2F5F5FFF3F5
      F4FFF7F9F8FFEAEBE6FFC3BFB1FFD1CABFFFD7D1CBFFC2BEB0FFC1BBABFFB4AD
      9DFFB9B4AAFFACA99CFF93886AFF938766FF95876AFF827E6BFF505355FF2121
      21FF080808FF1C1C1CF704040456060606000000000000000000000000000000
      000000000000000000000D0D0D000909093D131313EB353535FF060606FF1516
      17FF575043FFAB8646FFA4813EFFA68444FFA78545FFA27D37FFA17C36FF9F7C
      35FFA8925BFFBCB295FFC3BCA3FFD3CEBBFFD3D1C2FFD1D1C6FFC4C9C0FFB8BD
      B5FFADAFA5FF9B9C8CFF8E8978FF988B6EFFE0DCD1FF585B53FF0C0C05FF1A19
      15FF252520FF1A1D14FF282D1FFF32372AFF1C1E17FF201F1DFF2C2925FF191B
      16FF23241DFF272A26FF9EA7ABFFF0F5F5FFF1F6F6FFF2F7F7FFF6FAFAFFF0F5
      F4FFE6E9E2FFBDBBA8FFBDB9A4FFC6C1B2FFBFB9ABFFC0B9A7FFB2A791FF9F92
      79FF9C9782FFADAEA5FF96937BFF8B805DFF96896DFF757266FF3C3E3FFF0E0E
      0EFF141414FF151515D20000001F020202000000000000000000000000000000
      000000000000000000000F0F0F001010100E080808B42F2F2FFF191919FF0A0A
      0AFF292829FF9E947EFFC5BDA2FFC7C1AFFFBFB8A2FFA58546FFA17B35FFA37F
      38FFBDAC8CFFCBCDC7FFC7CBC5FFC8CCC3FFC4CBC0FFBFC6BCFFB8BBB0FFB7B7
      AAFFADAB99FF998E6EFF958C76FF8E876DFFA39985FF34362DFF0C110DFF171D
      1CFF18201BFF1F271AFF293124FF2E362AFF353D34FF3F4540FF4E5551FF4B54
      4FFF333E37FF191C19FF828289FFE4E6E5FFF1F3F0FFEDEFEBFFF0F2EEFFF1F2
      F0FFD1CDC2FFC3BEB1FFCBC8B7FFB2AE9AFFACA791FFACA28CFFAEA38FFFB1AC
      9FFFB8B9B3FFB2B8B5FFA5A899FF8C8160FF928A74FF575859FF272728FF0606
      06FF1D1D1DFF0B0B0B8C00000002020202000000000000000000000000000000
      00000000000000000000000000000505050007070761191919F8323232FF0504
      04FF171719FF676D74FFCED3CDFFCED1CBFFCACDC6FFB5A47CFFA37D37FFA884
      41FFC1BBA3FFC9CBC7FFC9CBC5FFC8CBC4FFC4C7C0FFBDC2BAFFAEAC9AFFABA5
      8FFFA49A75FF98834FFF866F40FF998F74FF847D68FF252720FF121515FF1E26
      26FF344340FF485E58FF738A84FF94ACA5FFA5BFB7FFAAC3BBFF8CA49CFF7487
      80FF596A67FF232C2BFF525355FFD3D0CBFFF2F3EEFFE2E3DCFFDBDDD3FFD1D1
      C3FFCFCBC5FFDAD6CFFFB9B6A7FFB8B5A5FFB6B2A1FFB8B5A6FFC2C2BAFFBBC0
      BCFFC0C5C2FFBFC4C1FFB5B8B2FF9B957EFF75726AFF393B3EFF111111FF1010
      10FF191919E80101013B04040400000000000000000000000000000000000000
      00000000000000000000000000000F0F0F000E0E0E19090909C6313131FF1717
      17FF0A0A09FF292C31FFA3A9A9FFCFD1CAFFCCCEC9FFC3C4B6FFA88E51FFAA8C
      50FFC2C5B7FFC8CDC7FFCACDC6FFC8CAC3FFC4C4BBFFBDBFB2FFAEA98FFFA396
      6EFF9F8C5EFF8F773EFF86672BFF8B7A52FF828378FF151815FF0B0C0CFF161C
      1AFF2B3836FF3C4F4BFF546864FF6B7F79FF5F716CFF425350FF2C3C39FF232E
      2BFF1C2422FF272D2CFF222F30FFABAEABFFF1F1EBFFD9D4C7FFD3D2C1FFCECB
      B3FFE3E2DFFFCECFCBFFBDC3BAFFB9C0B7FFBBBFB8FFC1C4BFFFB7BEB8FFB4BA
      B6FFB3B8B4FFB8BBB8FFC0C3C2FFADAEA8FF4C4E50FF242424FF070707FF1D1D
      1DFF0D0D0DA20000000902020200000000000000000000000000000000000000
      00000000000000000000000000000A0A0A000000000007070767171717F83333
      33FF050505FF141415FF4F545AFFC2C6C2FFCBCEC7FFC7CEC7FFBCB18FFFB19A
      6BFFC6CBC2FFC9CDC6FFC8CCC5FFC4C4BCFFBFC0B3FFB8B7A0FFB5AB83FFA793
      58FF94753AFF89672DFF80642CFF765E30FF39372FFF18100BFF22170CFF2419
      0DFF292217FF27231FFF212323FF262F2CFF1F1C1DFF201A14FF221B11FF251C
      13FF372E25FF443B32FF222321FF778486FFDCD9CAFFDCD7C5FFCEC8B0FFD6D3
      C0FFCECFC9FFBFC3BDFFC3C9C2FFB7BDB6FFB5BBB4FFB6BCB5FFB6BDB5FFB5B8
      B4FFB3B5B2FFB1B2AFFFB2B4B2FF797E85FF2F3032FF0E0E0EFF131313FF1919
      19EA020202410505050000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D0D0D000D0D0D16070707BC2C2C
      2CFF1F1F1FFF060606FF1D1F21FF7A8084FFC9CDC6FFC7CCC5FFC3C5BBFFC1BC
      A7FFC5CBC3FFC5CAC1FFC2C4B5FFC3C1AEFFC0BCA4FFADA17AFFA48B51FFA081
      3DFF927232FF896B30FF826B35FF6E5E32FF2D322CFF1B1915FF161612FF1D1C
      16FF2C271FFF41352CFF312A23FF1A1714FF2B1C13FF2E2317FF28211AFF2724
      20FF3A3735FF585552FF424341FF708889FFE3E4D9FFD7D2BFFFD2CFBEFFC6C2
      B8FFC2C2BBFFBBC1B9FFBEC5BDFFBAC1B9FFB7BEB6FFB4BBB3FFB4BAB3FFB4B6
      B2FFB3B4B1FFB3B4B1FF909497FF373A3FFF1B1B1BFF080808FF1E1E1EFF0B0B
      0B97000000070505050000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050500060606000808084E0F0F
      0FED363636FF0D0D0DFF0D0D0DFF2B2E33FF9BA1A2FFCBCFC5FFC6CDC5FFC7CD
      C6FFC2C8C3FFC1C3BBFFC2BEA6FFC3BC9DFFBCB38EFF947F49FF906D30FF9D7A
      36FF9A7835FF9A7E3AFF897039FF7E6A3BFF434131FF282722FF424038FF494A
      46FF47494AFF454344FF2A241BFF1A110AFF2A2722FF3C3A39FF474544FF6764
      60FF96907FFF585449FF6A6A69FFCBCFCBFFE2DFCEFFCECAB9FFC7C7BBFFAEA7
      93FFBBBDB4FFBABEB6FFB9C0B8FFBAC1BAFFB6BDB6FFB4BAB3FFB2B9B2FFB2B6
      B0FFB2B5B0FFA1A7A6FF444A50FF232323FF080808FF1A1A1AFF151515D70202
      022E050505000505050000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0E0E00121212080606
      06901C1C1CFE303030FF050505FF131313FF3C4046FFB3B8B7FFCFD2CAFFC7CB
      C3FFC0C5BDFFC2BFACFFC2BA9CFFC1B691FFAE965DFF997433FF9C7332FF9874
      33FF906F30FF9D7E3AFF917639FF90743AFF62502EFF31291FFF745D4CFF9884
      73FF958777FF56534DFF28251EFF1D130CFF44413EFF9C8E87FFC4B2A3FFE1D1
      BDFFD2C39EFF524831FF7B7A74FFDAD9CEFFD0CAB3FFC2BCA1FFB0A88AFFAAA5
      8CFFB9BCB3FFBABEB5FFB9BFB7FFB6BDB6FFB4BBB4FFB3BAB3FFB3BAB3FFB3BA
      B2FFAAB2ADFF535B60FF242527FF0D0D0DFF121212FF1C1C1CF6080808690000
      0001070707000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B0B0B000B0B
      0B20060606C3292929FF262626FF040404FF171718FF495056FFB5BAB7FFC6CA
      C1FFBFC2B2FFC1B799FFBCB38EFFA9925BFF977032FF8F6B2FFF9E7734FF9773
      33FF8F6C2FFF947032FF967838FF937637FF6F572CFF2E261BFF6A5542FFAC98
      7CFFBBAC88FF59543FFF32302BFF261C15FF59534BFFAB9484FFE1C7B0FFF4DF
      C1FFBFB593FF4E4C3DFF7D817BFFC3C1ADFFC3BC9EFFAB9F7AFFA59D7EFFADA7
      92FFB8BBB2FFBCC0B7FFB8BEB6FFB4BBB3FFB3BAB2FFB2B9B2FFB4BBB3FFAFB7
      B1FF5E666BFF242527FF131313FF0C0C0CFF202020FF0E0E0EA00505050E0909
      0900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808000505
      050008080842090909E0313131FF1D1D1DFF050505FF191A1BFF4B5256FFB1B5
      AEFFBFBA9EFFB6A882FFA6905CFF977737FF8B682CFF87652CFF977233FF9272
      32FF997534FF966F30FF9C7A3BFF987B42FF816933FF4D4229FF302B25FF655C
      4AFF9B9278FF484432FF524E49FF383129FF4D4A3FFF76624DFF907B64FF887B
      5DFF6A6758FF808584FF939C95FFC5C1ACFFAFA07AFFA4926BFFAFAE9EFFA7A0
      82FFB7B8AEFFB9BFB7FFB4BBB4FFB2B9B1FFB2B9B2FFB3BAB2FFACB4AEFF6168
      6BFF232527FF171616FF090909FF202020FF131313C7080808270A0A0A000808
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000C0C
      0C001A1A1A02060606610D0D0DEE343434FF181818FF060605FF191A1BFF4347
      48FF9E957BFFAB915AFF9F7F3BFF9E7A37FF8F6D2FFF88682DFF997434FF9A74
      34FFA07A36FF9B7332FF906E32FF977940FF906F34FF8C6F34FF635638FF4247
      44FF515552FF626663FF61605AFF36342DFF4A4946FF4F4E46FF605E57FF6C70
      69FF86928FFF9DA7A7FFBCBFB3FFB2A37DFF9E8553FF9D8357FFACA892FFAAA7
      8FFFB9BAB0FFB9BFB6FFB3BAB3FFB2B9B1FFB3BAB3FFA8AFABFF585F63FF2224
      26FF181717FF080808FF1F1F1FFF171717DB0B0B0B400E0E0E000B0B0B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E0E0E001313130607070774101010F3353535FF181818FF050505FF1718
      19FF35322EFF7C6539FFA07D38FF9C7634FF9C7634FF8B6C2FFF9B7A38FF9E7C
      3AFFA37B36FF9D7533FF967032FF9B7434FF957032FF947333FF8C6F33FF5B59
      41FF4B5A58FF5E6F6BFF62796FFF81998DFF99AEA5FFAEC5BDFFB9CFC9FFB6CA
      C4FFB7C6C1FFD7D8D1FFC6B794FF927640FF8C723CFF95794DFF9F9271FF9B8F
      6DFFB6B9AFFFBAC0B7FFB7BEB6FFB6BDB6FF9CA4A1FF484E52FF222324FF1616
      16FF080808FF1F1F1FFF1B1B1BE5101010540909090110101000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D00101010090606067C101010F3343434FF1C1C1CFF0404
      04FF151516FF262524FF625131FF8A6930FF9E7834FF977433FF9D8241FF9479
      3DFF9F7534FF9F7533FF997031FFA07835FF926E30FF8C6B2FFF94793BFFB4AB
      8AFF9FA5A0FF75817FFF70837CFF94AAA1FFA8BEB5FFA5B8B1FFD3DBD9FFEDF0
      EFFFEBEAE3FFC3B493FFB49864FFB39A68FF9B7A42FF998156FFA8A392FFA7A1
      8DFFB3B8AEFFBCC1B8FFB9BFB8FF888F8EFF353A3EFF202122FF121211FF0A0A
      0AFF212121FF1E1E1EE61515155B0E0E0E031212120000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D0D0D0010101009070707750D0D0DEE313131FF2525
      25FF050505FF0F0F0FFF1D1E20FF363026FF7B6333FFA17D39FF9E8444FF9077
      3AFF957232FF977131FF936C2FFF9F7936FF947131FF896931FFBDAA82FFF2ED
      E1FFFEFDFCFFF7F6F8FFEFF0EFFFF0F1F0FFEEEFEDFFEAEBE7FFFDFEFDFFF4F2
      EEFFB5A788FF866D38FF987A44FFA07F47FFA27D3EFF9B7D49FF9C9377FFACA6
      93FFB7BBB1FFA3AAA5FF5B6264FF26282AFF1F1E1EFF0C0C0CFF0E0E0EFF2424
      24FF212121DE1A1A1A570E0E0E03141414000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E0E0E0012121207060606620A0A0AE12A2A
      2AFF303030FF0C0C0CFF070707FF171719FF242423FF51452EFF826C3CFF8D70
      36FF967031FF9D7432FF8F6A2EFF9A7634FF9A7434FFB29B72FFEEE6D7FFFEFC
      F7FFFEFEFEFFFFFFFFFFFFFFFFFFFFFEFEFFFAF9F6FFF3F2EEFFF9F7F2FFC1B1
      91FF92733EFF896E36FF856C36FF846732FF8A6A31FF927439FFA09270FF9793
      81FF6B706FFF313538FF202122FF171616FF080808FF171717FF292929FF2626
      26CD1F1F1F450909090216161600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E0014141402090909420707
      07C41D1D1DFD363636FF1E1E1EFF050505FF0D0D0DFF191A1CFF252524FF4339
      28FF755A2FFF9B7435FF906B2EFF947031FFB69B6AFFE6DECFFFFDFBF9FFFDFD
      FDFFFCFFFEFFFFFFFFFFFFFFFFFFF2F2EFFFF6F5F3FFF7F6F4FFCFC4A9FFA485
      4EFF9D7A3DFF927338FF947740FF846A33FF7C602EFF725B34FF524F43FF2D2F
      30FF202122FF1A1A1AFF0B0B0BFF0C0C0CFF242424FF2F2F2FF92B2B2BAB2323
      232C000000000C0C0C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010101000000000000B0B
      0B2106060691101010EE2D2D2DFF323232FF151515FF050505FF0D0E0EFF1819
      1BFF212122FF373027FF4F4028FF776645FFC6BFB1FFF2F2F0FFFEFEFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFCFFF7F6F3FFD4CBB5FFB7A37BFFA88E
      5DFF997741FF937441FF7D6539FF57472BFF373025FF252424FF1F1F21FF1A1A
      1AFF0C0C0CFF090909FF1D1D1DFF333333FF363636E230303077232323133131
      3100070707000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000C0C
      0C00101010090707074F070707BE181818F8323232FF313131FF171717FF0606
      06FF0A0A0AFF131414FF1A1B1DFF222426FF3A3C42FF5B5F65FF7B7F84FF9B9F
      A4FFB0B3B7FFBDC0C4FFC1C4C7FFBFC2C4FFABABA5FF89806CFF68583EFF4E44
      31FF3F372CFF312D28FF242323FF1F2021FF1C1C1DFF131314FF090909FF0B0B
      0BFF1F1F1FFF353535FF3E3E3EF23A3A3AA93030303A121212031D1D1D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000016161600000000000D0D0D1707070769090909C81B1B1BF8313131FF3535
      35FF232323FF0F0F0FFF070606FF090909FF0F0E0EFF131313FF171819FF1C1C
      1DFF202022FF232527FF252629FF242628FF222425FF212224FF1D1E20FF1C1D
      1FFF1A1A1CFF161617FF0F0F0FFF090909FF090909FF151515FF2A2A2AFF3E3E
      3EFF454545F3424242B7383838542222220E4040400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000131313001F1F1F010B0B0B1A07070763090909B61515
      15ED282828FE363636FF353535FF292929FF1A1A1AFF0F0F0FFF090909FF0707
      07FF080808FF090909FF0A0A0AFF0A0A0AFF0A0A0AFF090909FF080808FF0808
      08FF0B0B0BFF121212FF1F1F1FFF2F2F2FFF3F3F3FFF484848FD494949E54444
      44A63A3A3A5126262611C8C8C800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000016161600414141000F0F0F0F0A0A
      0A3F080808830D0D0DC0181818E8262626FA323232FF393939FF3A3A3AFF3737
      37FF333333FF2F2F2FFF2D2D2DFF2D2D2DFF2E2E2EFF313131FF373737FF3D3D
      3DFF434343FF484848FF4A4A4AF8484848E2444444B53E3E3E74323232331A1A
      1A09484848000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001313
      1300171717020F0F0F110C0C0C340A0A0A610D0D0D8E151515B11B1B1BCD2323
      23DE2A2A2AE82F2F2FED333333EF363636EF393939EC3B3B3BE63A3A3ADC3A3A
      3AC8393939AA36363685333333572C2C2C2C1919190C00000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000191919001A1A1A01121212090E0E0E181414
      14251515152E131313381616163F1818183E1B1B1B362121212C1E1E1E231515
      15150F0F0F070000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFE
      0000000007FFFF000000FFE0000000000007FF000000FC000000000000001F00
      0000E00000000000000007000000C00000000000000001000000C00000000000
      000000000000C00000000000000000000000E00000000000000000000000F800
      00000000000000000000FF8000000000000003000000FFF00000000000001F00
      0000FFF8000000000001FF000000FFF000000000001FFF000000FFE000000000
      000FFF0000008FC0000000000007FF0000008FC0000000000003FF0000009F80
      000000000001FF000000FF00000000000000FF000000FE00000000000000FF00
      0000FE000000000000007F000000FC000000000000003F000000FC0000000000
      00003F000000F8000000000000001F000000F8000000000000001F000000F000
      0000000000001F000000F0000000000000000F000000F0000000000000000F00
      0000E00000000000000007000000E00000000000000007000000E00000000000
      000007000000E00000000000000007000000C00000000000000007000000C000
      00000000000003000000C00000000000000003000000C0000000000000000300
      0000C00000000000000003000000C00000000000000003000000C00000000000
      000003000000C00000000000000003000000C00000000000000003000000C000
      00000000000003000000C00000000000000003000000C0000000000000000300
      0000C00000000000000007000000E00000000000000007000000E00000000000
      000007000000E00000000000000007000000E0000000000000000F000000F000
      0000000000000F000000F0000000000000000F000000F8000000000000001F00
      0000F8000000000000001F000000FC000000000000003F000000FC0000000000
      00003F000000FE000000000000007F000000FE000000000000007F000000FF00
      000000000000FF000000FF80000000000001FF000000FF80000000000003FF00
      0000FFC0000000000003FF000000FFE0000000000007FF000000FFF000000000
      000FFF000000FFF800000000001FFF000000FFFC00000000003FFF000000FFFF
      0000000000FFFF000000FFFF8000000001FFFF000000FFFFE000000007FFFF00
      0000FFFFF00000001FFFFF000000FFFFFC0000007FFFFF000000FFFFFF800001
      FFFFFF000000FFFFFFF8001FFFFFFF000000FFFFFFFFFFFFFFFFFF000000}
    PopupMenu = pm_tray
    Visible = True
    Left = 540
    Top = 352
  end
  object pm_tray: TPopupMenu
    Left = 436
    Top = 360
    object N1: TMenuItem
      Caption = #20851#20110
      ImageIndex = 1
    end
    object N2: TMenuItem
      Caption = #36864#20986
      SubMenuImages = il_tray
    end
    object N3: TMenuItem
      Caption = #35774#32622
      OnClick = N3Click
    end
  end
  object il_tray: TImageList
    Left = 328
    Top = 376
    Bitmap = {
      494C010102000800580010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000000000000000001C0202
      026DE1E1E1FF808080FF595A59DF121212D1030303C3040505B70000009E0000
      007E000000480000001800000000000000000000000000000000000000030000
      001A0000003C0000005D000000750607119C0000007F00000072000000590000
      0035000000110000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000034000000840202
      02C8262626FF131313FFF4F4F4FF808080FF212121FF2F2F2FFF101010FF1F1F
      1FFF343931E50000008F0000003D0000001300000004000000430000008A0000
      00BE040508E20A0C0EFC1A2C57FF192C6AFF7D7679FF161E25FF131216F80000
      00DE000000BB00000085000000380000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000909
      09C22E2D2DFFF0F4EFFF5B5B5BFFFFFFFFFF000000FFFFFFFFFFEEEFEDFF3636
      35FF0A0A0AAF00000003000000000000000000000000000000000E142AD2191D
      3ADD1E3879FF2E466BFF2D5A8CFF364F6BFF2A3243FF63504AFF35384BFF2337
      61FF2F7798CC4E4F60E300000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000500000000171717DA2627
      27FFEFF0EEFF545554FFD5D6D3FFFFFFFFFFFEFEFEFFFFFFFFFFF4F4F4FFC3BD
      B3FF393939FF0F0F0FC000000000000000000000000300000000272731F72221
      20FF615957FF282628FF080606FF766964FF4B4C44FF5E5733FF3C4860FF235C
      ABFF5C5F68FF0000002300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101010B2B2C2FFFDEDE
      DBFFC6CDC6FF5B5D5AFFAFB0AFFFDEDEDEFF91958DFF9FA0A0FF363933FFF5EF
      E9FFA69C8BFF363430FF0000000200000000000000000A0A0A321D1E1FFF6B68
      64FF737782FF0D1014FF7E8A9AFF667585FF959069FF5B5535FF5A4F1BFF7776
      79FF392E04FF181818FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E3E3EFFF6F6F5FFEAEA
      EAFFC6CDC5FFD8D9D6FFEFEADEFFE7E4DAFFD6CEC0FFC4C4BEFFFDFBF4FFA393
      7AFF604427FF573916FF171717FD0000000000000000212121FF1E170FFF3E39
      34FF050403FF181D22FF6C7987FF7E8CA0FF898D92FF585231FF4B4422FF3A30
      09FF3C320AFF251E06FF131313D3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000070707FFADADADFFEEEE
      EEFFF6F7F4FFF8F9F9FF2E3A38FFBBC6DCFF6F7274FFDBE3F5FF192C22FFE3E7
      DDFF232321FF575B5FFF252525FF0000000000000000171818FF2C2418FF1915
      12FF13100FFF181D23FF7A8693FF212120FF272522FF9E9B90FF574F20FF675C
      2BFF685D2AFF594F21FF0D0D0DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030303201A1A1BFF545346FF1214
      0FFF636B7BFFDEEBF9FF655A51FFE7F1FCFF5C5F5FFFF6FEFEFF39453EFF8387
      8FFF3F423EFF3B5963FF3E3D3EFF0000000A0C0C0C52535344FF635D54FFC7C2
      BDFF0D0A09FF0B0D12FF1E1C1AFF71716BFF141312FF7C7A74FF7E785CFF4F45
      0BFF504612FF493F0FFF353536FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000040404351D1D1EFFBCB8ADFF5155
      57FF0A0A06FF010100FF060403FF474847FFAEB5C5FFBCC7D8FF111210FF2628
      23FF2A2A28FF19130EFF474648FF0000001A0E0E0E78737054FFD7D3C0FF362F
      2AFF47413BFF050404FF302F2CFF1E1C1AFF85827CFF52504CFF9E9A94FF6961
      27FF6A612DFF5C5220FF3F4041FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000080F0F0FFF8F682DFF8B6A
      35FFCED0CCFFF8F3EFFFAFC3CBFF70727EFFA7AEBFFF272726FF343835FF1C1F
      1BFF1E1D18FF090803FF3C3D3FFF0000000002020237444540FFB6B17BFFEAE7
      E8FF61594FFF35312CFF141312FF151412FF67635EFF5C5A56FF97938DFFABA5
      7DFFA1996CFF625A29FF2C2D2EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000262626FFA47E39FF9F7A
      35FFA48748FFA49374FFF8FAF7FF393A31FF484C49FF58595CFFF2F5F5FFC3BF
      B1FFB4AD9DFF938766FF080808FF0000000000000000080808FFC2BE8BFFCFCB
      A4FFA9A6B3FF423C34FF2F2C28FF100D0CFF423F39FF3F3B35FF5C584EFFBAB5
      8EFFB0AA7EFF756D3CFF0B0B0BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000060606C6A3A9A9FFA88E
      51FFC8CAC3FFA3966EFF828378FF2B3836FF425350FF272D2CFFD3D2C1FFBDC3
      BAFFB4BAB6FFADAEA8FF080808A200000000000000002D2D2DFFD1CFAEFFD2CE
      A8FFE7E6EAFF8D8B96FF373430FF060505FF0A0805FF2C271DFFA8A496FFBCB6
      92FF8B8554FF474837FF06060681000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000262626FFB5BA
      B7FFA9925BFF977333FF6F572CFFBBAC88FFAB9484FF4E4C3DFFA59D7EFFB8BE
      B6FFAFB7B1FF0C0C0CFF00000000000000000000000000000001070706FFE6E5
      CFFFF1F0E3FFAFB3CBFF191C28FF090806FF1A1811FF201A0CFF484235FF706B
      38FF645D2FFF111111FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000091C1C
      1CFF8A6930FF94793DFF926E30FF9FA5A0FFA5B8B1FFC3B493FFA8A392FFB9BF
      B8FF0A0A0AFF0000000300000000000000000000000000000000010101460707
      07FFF5F5EBFFF7F8F7FF677182FF221C14FF787358FF8B8652FF1D190CFF5753
      29FF0C0C0CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000171717F8060606FF3A3C42FFB0B3B7FF89806CFF312D28FF090909FF3A3A
      3AF2000000000000000000000000000000000000000000000000000000000000
      000E2E2E2EFF1C1D1FFFAEB3BCFF0E0D0DFFA2A177FF5C5C3CFF191A1AFF3232
      32FD000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000707078E262626E8353535E61C1C1C85000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000013151515CB373737FC3F3F3FF82626269D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0001400000000000000100010000000080008000000000008000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80008000000000008000800000000000C001800100000000C003C00300000000
      F007E00700000000FC1FF81F0000000000000000000000000000000000000000
      000000000000}
  end
  object ds1: TDataSource
    Left = 152
    Top = 368
  end
  object prntdbgrd1: TPrintDBgrid
    dbgrid = dbgrd_purchase_order
    title1.Alignment = taLeftJustify
    title1.Font.Charset = DEFAULT_CHARSET
    title1.Font.Color = clWindowText
    title1.Font.Height = -11
    title1.Font.Name = 'Tahoma'
    title1.Font.Style = []
    title1.Visible = False
    title2.Alignment = taLeftJustify
    title2.Font.Charset = DEFAULT_CHARSET
    title2.Font.Color = clWindowText
    title2.Font.Height = -11
    title2.Font.Name = 'Tahoma'
    title2.Font.Style = []
    title2.Visible = False
    title3.Alignment = taLeftJustify
    title3.Font.Charset = DEFAULT_CHARSET
    title3.Font.Color = clWindowText
    title3.Font.Height = -11
    title3.Font.Name = 'Tahoma'
    title3.Font.Style = []
    title3.Visible = False
    pagetitle1.Alignment = taLeftJustify
    pagetitle1.Font.Charset = DEFAULT_CHARSET
    pagetitle1.Font.Color = clWindowText
    pagetitle1.Font.Height = -11
    pagetitle1.Font.Name = 'Tahoma'
    pagetitle1.Font.Style = []
    pagetitle1.Visible = False
    pagetitle2.Alignment = taLeftJustify
    pagetitle2.Font.Charset = DEFAULT_CHARSET
    pagetitle2.Font.Color = clWindowText
    pagetitle2.Font.Height = -11
    pagetitle2.Font.Name = 'Tahoma'
    pagetitle2.Font.Style = []
    pagetitle2.Visible = False
    pagetitle3.Alignment = taLeftJustify
    pagetitle3.Font.Charset = DEFAULT_CHARSET
    pagetitle3.Font.Color = clWindowText
    pagetitle3.Font.Height = -11
    pagetitle3.Font.Name = 'Tahoma'
    pagetitle3.Font.Style = []
    pagetitle3.Visible = False
    pageFooter1.Alignment = taLeftJustify
    pageFooter1.Font.Charset = DEFAULT_CHARSET
    pageFooter1.Font.Color = clWindowText
    pageFooter1.Font.Height = -11
    pageFooter1.Font.Name = 'Tahoma'
    pageFooter1.Font.Style = []
    pageFooter1.Visible = False
    pageFooter2.Alignment = taLeftJustify
    pageFooter2.Font.Charset = DEFAULT_CHARSET
    pageFooter2.Font.Color = clWindowText
    pageFooter2.Font.Height = -11
    pageFooter2.Font.Name = 'Tahoma'
    pageFooter2.Font.Style = []
    pageFooter2.Visible = False
    pageFooter3.Alignment = taLeftJustify
    pageFooter3.Font.Charset = DEFAULT_CHARSET
    pageFooter3.Font.Color = clWindowText
    pageFooter3.Font.Height = -11
    pageFooter3.Font.Name = 'Tahoma'
    pageFooter3.Font.Style = []
    pageFooter3.Visible = False
    endtitle1.Alignment = taLeftJustify
    endtitle1.Font.Charset = DEFAULT_CHARSET
    endtitle1.Font.Color = clWindowText
    endtitle1.Font.Height = -11
    endtitle1.Font.Name = 'Tahoma'
    endtitle1.Font.Style = []
    endtitle1.Visible = False
    endtitle2.Alignment = taLeftJustify
    endtitle2.Font.Charset = DEFAULT_CHARSET
    endtitle2.Font.Color = clWindowText
    endtitle2.Font.Height = -11
    endtitle2.Font.Name = 'Tahoma'
    endtitle2.Font.Style = []
    endtitle2.Visible = False
    endtitle3.Alignment = taLeftJustify
    endtitle3.Font.Charset = DEFAULT_CHARSET
    endtitle3.Font.Color = clWindowText
    endtitle3.Font.Height = -11
    endtitle3.Font.Name = 'Tahoma'
    endtitle3.Font.Style = []
    endtitle3.Visible = False
    dataBorder = False
    leftmargin = 15
    rightmargin = 15
    topmargin = 15
    bottommargin = 15
    HorizontalMode = hmleft
    PrintRatio = 1.000000000000000000
    Left = 588
    Top = 368
  end
  object dlgPnt1: TPrintDialog
    Left = 488
    Top = 352
  end
  object pm_supplier: TPopupMenu
    OnPopup = pm_supplierPopup
    Left = 228
    Top = 256
    object mi_add: TMenuItem
      Caption = #22686#21152#20449#24687
      OnClick = mi_addClick
    end
    object mi_modify: TMenuItem
      Caption = #31649#29702#20449#24687
      OnClick = mi_modifyClick
    end
    object mi_delete: TMenuItem
      Caption = #21024#38500#20449#24687
      OnClick = mi_deleteClick
    end
  end
  object dlgPntSet1: TPrinterSetupDialog
    Left = 653
    Top = 352
  end
end
