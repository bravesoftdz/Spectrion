object fmProc: TfmProc
  Tag = 236
  Left = 0
  Top = 0
  Width = 230
  Height = 458
  Align = alTop
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBackground = False
  ParentColor = False
  ParentFont = False
  TabOrder = 0
  object sttHeader: TStaticText
    AlignWithMargins = True
    Left = 3
    Top = 0
    Width = 224
    Height = 22
    Margins.Top = 0
    Align = alTop
    Alignment = taCenter
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvRaised
    Caption = 'Example Proc.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object pnlButtons: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 413
    Width = 227
    Height = 42
    Margins.Right = 0
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object sbRun: TSpeedButton
      AlignWithMargins = True
      Left = 36
      Top = 3
      Width = 71
      Height = 36
      Align = alRight
      AllowAllUp = True
      GroupIndex = 1
      Caption = 'Run'
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888888800008888888888888888888800008888
        8088888888888888000088888A08888888888888000088888AA0888888888888
        000088888AAA088888888888000088888AAAA08888888888000088888AAAAA08
        88888888000088888AAAAAA088888888000088888AAAAAAA0888888800008888
        8AAAAAAAA8888888000088888AAAAAAA88888888000088888AAAAAA888888888
        000088888AAAAA8888888888000088888AAAA88888888888000088888AAA8888
        88888888000088888AA8888888888888000088888A8888888888888800008888
        88888888888888880000}
      ExplicitLeft = -13
      ExplicitTop = -5
    end
    object sbClose: TSpeedButton
      AlignWithMargins = True
      Left = 113
      Top = 3
      Width = 71
      Height = 36
      Align = alRight
      GroupIndex = 2
      Caption = 'Close'
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777770000000777777777777777770000000777777777777770F700000007777
        0F777777777770000000777000F7777770F770000000777000F777770F777000
        00007777000F77700F777000000077777000F700F7777000000077777700000F
        7777700000007777777000F777777000000077777700000F7777700000007777
        7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
        00007700F7777777700F70000000777777777777777770000000777777777777
        777770000000}
      ExplicitLeft = 56
      ExplicitTop = 0
      ExplicitHeight = 41
    end
    object bbHelp: TBitBtn
      AlignWithMargins = True
      Left = 190
      Top = 3
      Width = 30
      Height = 36
      Margins.Right = 7
      Align = alRight
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333336633
        3333333333333FF3333333330000333333364463333333333333388F33333333
        00003333333E66433333333333338F38F3333333000033333333E66333333333
        33338FF8F3333333000033333333333333333333333338833333333300003333
        3333446333333333333333FF3333333300003333333666433333333333333888
        F333333300003333333E66433333333333338F38F333333300003333333E6664
        3333333333338F38F3333333000033333333E6664333333333338F338F333333
        0000333333333E6664333333333338F338F3333300003333344333E666433333
        333F338F338F3333000033336664333E664333333388F338F338F33300003333
        E66644466643333338F38FFF8338F333000033333E6666666663333338F33888
        3338F3330000333333EE666666333333338FF33333383333000033333333EEEE
        E333333333388FFFFF8333330000333333333333333333333333388888333333
        0000}
      NumGlyphs = 2
      TabOrder = 0
    end
  end
end