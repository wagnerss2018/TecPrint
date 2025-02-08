object RPSetupForm: TRPSetupForm
  Left = 434
  Top = 222
  BorderStyle = bsNone
  Caption = 'Output Options'
  ClientHeight = 217
  ClientWidth = 451
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'DejaVu Sans'
  Font.Style = []
  Font.Quality = fqClearTypeNatural
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox2: TGroupBox
    Left = 530
    Top = 315
    Width = 184
    Height = 65
    Caption = 'Options'
    TabOrder = 0
    object CopiesLabel: TLabel
      Left = 17
      Top = 19
      Width = 43
      Height = 15
      Caption = '&Copies'
    end
    object CopiesED: TEdit
      Left = 18
      Top = 35
      Width = 49
      Height = 23
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object CollateCK: TCheckBox
      Left = 115
      Top = 17
      Width = 51
      Height = 17
      Caption = 'C&ollate'
      TabOrder = 1
    end
    object DuplexCK: TCheckBox
      Left = 115
      Top = 40
      Width = 52
      Height = 17
      Caption = '&Duplex'
      TabOrder = 2
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 259
    Width = 193
    Height = 121
    ActivePage = TabSheet1
    Style = tsButtons
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      TabVisible = False
      object DestGB: TGroupBox
        Left = 0
        Top = 0
        Width = 185
        Height = 111
        Align = alClient
        Caption = 'Report Destination'
        TabOrder = 0
        object FileNameSB: TSpeedButton
          Left = 160
          Top = 54
          Width = 20
          Height = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A600000000000000000000000000000000000000000000000000000000000000
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
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000FFFF0003030000
            00000000FFFF000300FFFF000303000000000000FFFF000300FFFF0003030000
            00000000FFFF000300FFFF0003030000000000000000000300FFFF0003030303
            030303030303030300FFFF0003030000000000000000030300FFFF000300FFFF
            FFFFFFFFFFFF000300FFFF000300FFFFFFFFFFFFFFFF000300FFFF000300FFFF
            FFFFFFFFFFFF000300FFFF000300FFFFFFFFFFFFFFFF000300FFFF000300FFFF
            FFFFFFFFFFFF000000FFFF000300FFFFFFFFFFFFFFFF00FF00FFFF0000000000
            000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          OnClick = FileNameSBClick
        end
        object Label1: TLabel
          Left = 8
          Top = 82
          Width = 50
          Height = 15
          Caption = 'Format:'
        end
        object PrinterRB: TRadioButton
          Left = 8
          Top = 16
          Width = 153
          Height = 17
          Caption = '&Printer'
          TabOrder = 0
          OnClick = PrinterRBClick
        end
        object PreviewRB: TRadioButton
          Left = 8
          Top = 36
          Width = 153
          Height = 17
          Caption = 'Pre&view'
          TabOrder = 1
          OnClick = PrinterRBClick
        end
        object FileRB: TRadioButton
          Left = 8
          Top = 56
          Width = 153
          Height = 17
          Caption = '&File'
          TabOrder = 2
          OnClick = FileRBClick
        end
        object editFileName: TEdit
          Left = 46
          Top = 54
          Width = 113
          Height = 23
          TabOrder = 3
          OnChange = editFileNameChange
        end
        object cboxFormat: TComboBox
          Left = 46
          Top = 79
          Width = 134
          Height = 23
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Text = 'Rave Format (NDR)'
          OnChange = cboxFormatChange
          Items.Strings = (
            'Rave Format (NDR)'
            'Native Printer Output')
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      TabVisible = False
      object RangeGB: TGroupBox
        Left = 0
        Top = 0
        Width = 185
        Height = 111
        Align = alClient
        Caption = 'Print Range'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        ParentFont = False
        TabOrder = 0
        object FromLabel: TLabel
          Left = 8
          Top = 84
          Width = 23
          Height = 13
          Caption = 'From'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
        end
        object SelectionLabel: TLabel
          Left = 8
          Top = 84
          Width = 44
          Height = 13
          Caption = 'Selection'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
        end
        object ToLabel: TLabel
          Left = 88
          Top = 84
          Width = 9
          Height = 13
          Caption = 'to'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
        end
        object SelectionED: TEdit
          Left = 56
          Top = 80
          Width = 105
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          TabOrder = 5
          OnKeyPress = SelectionEDKeyPress
        end
        object AllRB: TRadioButton
          Left = 8
          Top = 16
          Width = 153
          Height = 17
          Caption = 'All'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = AllRBClick
        end
        object SelectionRB: TRadioButton
          Left = 8
          Top = 36
          Width = 153
          Height = 17
          Caption = 'Selection'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          TabOrder = 1
          OnClick = SelectionRBClick
        end
        object PagesRB: TRadioButton
          Left = 8
          Top = 56
          Width = 153
          Height = 17
          Caption = 'Pages'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          TabOrder = 2
          OnClick = PagesRBClick
        end
        object FromED: TEdit
          Left = 40
          Top = 80
          Width = 41
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          TabOrder = 3
          OnKeyPress = FormKeyPress
        end
        object ToED: TEdit
          Left = 104
          Top = 80
          Width = 57
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          TabOrder = 4
          OnKeyPress = FormKeyPress
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 217
    Align = alClient
    BevelOuter = bvNone
    Color = 12493439
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 457
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 445
      Height = 211
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 451
      object GroupBox1: TGroupBox
        Left = 0
        Top = 25
        Width = 445
        Height = 146
        Align = alClient
        Caption = 'Impressora selecionada'
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitWidth = 451
        ExplicitHeight = 144
        object PrinterLabel: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 435
          Height = 121
          Align = alClient
          Alignment = taCenter
          AutoSize = False
          Caption = '(nenhuma)'
          Layout = tlCenter
          ExplicitLeft = 10
          ExplicitTop = 15
          ExplicitWidth = 250
          ExplicitHeight = 13
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 171
        Width = 445
        Height = 40
        Margins.Bottom = 0
        Align = alBottom
        BevelOuter = bvNone
        Color = 16579836
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 172
        ExplicitWidth = 451
        object SetupBB: TJvTransparentButton
          Left = 182
          Top = 0
          Width = 110
          Height = 40
          Align = alRight
          Caption = 'Configurar'
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'DejaVu Sans'
          HotTrackFont.Style = []
          OnClick = SetupBBClick
          ExplicitTop = 1
        end
        object CancelBB: TJvTransparentButton
          Left = 0
          Top = 0
          Width = 110
          Height = 40
          Align = alLeft
          Caption = 'Fechar'
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'DejaVu Sans'
          HotTrackFont.Style = []
          OnClick = CancelBBClick
          ExplicitLeft = 199
          ExplicitTop = 3
          ExplicitHeight = 38
        end
        object JvTransparentButton1: TJvTransparentButton
          Left = 292
          Top = 0
          Width = 110
          Height = 40
          Align = alRight
          Caption = 'Imprimir'
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'DejaVu Sans'
          HotTrackFont.Style = []
          OnClick = JvTransparentButton1Click
          ExplicitLeft = 226
          ExplicitTop = 1
          ExplicitHeight = 42
        end
        object bbtnOK: TButton
          Left = 402
          Top = 0
          Width = 43
          Height = 40
          Align = alRight
          Caption = '   OK   '
          Default = True
          ModalResult = 1
          TabOrder = 0
          Visible = False
          OnClick = bbtnOKClick
          ExplicitLeft = 408
          ExplicitHeight = 42
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 445
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        ExplicitWidth = 451
        object img1: TImage
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 52
          Height = 14
          Cursor = crHandPoint
          Hint = 'Click para acessar o site.'
          Margins.Left = 10
          Margins.Top = 10
          Margins.Bottom = 1
          Align = alLeft
          AutoSize = True
          ParentShowHint = False
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000034
            0000000B08060000003054AE93000000017352474200AECE1CE9000000046741
            4D410000B18F0BFC6105000000097048597300000EC400000EC401952B0E1B00
            0004E149444154484BB555594F5B5710FEBC80C1252C6607D910B105CC568928
            2C6929A8120FA49446FD03CD4BA0521FF805ADD4E6B1949436A9D414A4A66D2A
            A52D8984A2221110C106233613C0AC61B731989DC0355E3B67300A95FA583EEB
            EA5ECF3DE7CCCC3733DF95F90908C0EBF5F2151C1CCCFFFDF493D14FC0EBF5C1
            E7F322282888FF0BF87C3E783C62FD1BDB19DC6E37143205E44A79C0720A8FC7
            03E1F2FC3967107B643219944A65C0F206C28F8848A150F01A01B7DB45CF72B2
            29E9CE267042E2A0B9B939ACAD5A71E23C41CA651DF2F3F339B9C9F1095AA5C0
            96C381FDC37D9494142321210156AB15939393902427349A681415BD8DD05035
            3B1E191985DD6E45903204FADC1CE8745AB85C2E4C59A660B5D9E8D9037D7616
            32B2323908B7CB8D51F32836363639E0D4D454E4E464E3F858C2F4D40C2528E7
            7D2291E2E262444646E0D5FC2B582C16C8E572C4C6C5F2FAB0B04B60FAC40BF3
            A819AA1015A263A361EA1B80D96CE6C39F3C7D8AE75D9D08558720223C1C2A95
            0A7B7B7BE8ECEC64A6E3E2E228391BBA9E77137F3E188D062C2E2C203D3D033E
            BF0F4343831CF4D0E01026889C88F04B888989A633BB303B33C7EFFA8CFD5858
            5C46727212051B49848CC0B66685C7E7C1EF8F1E6190F60A7B585818FB9F9F9D
            67FF1A4D14C2234E931B1A1CE6EA2B9DC4F0FCDC3C3232325074B5885908A676
            30994C2828C8A7EAC8F85E525AC215134976FCDD01B9428EAAAA2A0E28333313
            6D6D4F38B19595551CEE1F8AEEC0F5B2524AD10BA7D349048DA1BCFC5DAA989E
            F7841079FDFD7D44482CC6C6CCA878BF123AAD965B717F7F1F6D7FFE85BACF3E
            653FB97979B876ED2A1328AAD9F3E205F4FA5C945D2FE3B30481A6814138A88B
            E44EA7C4C69494144E4640AFD7537F7A29C075242526E24AF615B68B64045657
            57A04DD2F2B34074B48658D7509B6DE2C68D6A242527A3BDBD1D8D5F7F03CBC4
            340469413417BA145D600798240F11B446ADBB6E5F474F770F5A5A5AF832188C
            D8A62E50503B893D29817D22BE4DC726A4A3638A298B6D0289E42F9C2A7F7070
            089A3E191F7AF8FA1071F171BC606676163B5BDB888D8D819F065F4E83771EA2
            F4BBE4F03CD6D6D690969686A8A828D47E5443961A9A81630AB095CE8D6712C4
            1C9DC1299D607DC38E78F2191A128A5BB73E81FA2D350B83D7EBA1D60AE59992
            C994FFF2AFD16820B99D449E9D488C619BEBC485A5C5259A3D1D8910312786F5
            C18FAD989E9EC1CB97E368FEF63B94961573BF1E4B127CA470E751535BCB2C3E
            6B7F4681AEE2A707ADAC8779D41A77BEBA439569848D86B8A3A3032E1299F4B4
            CBE8370DE06ED35D9A95052C2F2FA3BEAE1E1F7E5043A4D14053473436356179
            6999DA67918546348BDB75C297CF2F14EE146AB51AE5EF94E38BCFBFA4D91AC6
            2225F2EB2FBFA1BBBB1B323969F2EEDEAEDFD8DBC7E514BD6CB3D971F3E39BA8
            78AF9C191D191E21873954D2F0C091A7B013BBF7BFBF8FA3D74748A7F9ABABBF
            1D7803DCBBF7030DFC0CB434137575B771241DC3D06B24150C419FA10F1B9B76
            343434209B94E90C8F1FFF81DE1E0382544A545757A3B2B2825AE80096490BCD
            909E15EC3CC649609A9B9B919C948482C24214D225440B5B5B5BFE873F3FF43B
            B61C42C12F0436ABCDDFD8D8E497242960B938908C2B7826BCFCE1BA1828E9C3
            171911C56A77D1909176FB77767658E7FFEBEBFD7F40B4EEF6F6367FB3CE94F2
            6200FC035EA6FB20E5BA81290000000049454E44AE426082}
          ShowHint = False
          Transparent = True
          ExplicitHeight = 11
        end
      end
    end
  end
  object dlogSave: TSaveDialog
    DefaultExt = 'ndr'
    Filter = 'All Files|*.*'
    Options = [ofOverwritePrompt, ofPathMustExist, ofNoReadOnlyReturn]
    Left = 640
    Top = 240
  end
end
