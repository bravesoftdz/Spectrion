inherited fmSmartCopy: TfmSmartCopy
  Height = 535
  ExplicitHeight = 535
  inherited sttHeader: TStaticText
    Caption = 'Smart Copy'
  end
  inherited pnlButtons: TPanel
    Top = 493
    ExplicitTop = 493
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 22
    Width = 230
    Height = 471
    ActivePage = tsZapping
    Align = alClient
    TabOrder = 2
    object tsZapping: TTabSheet
      Caption = 'Zapping'
      ExplicitTop = 25
      ExplicitHeight = 442
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 222
        Height = 193
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 173
          Height = 16
          Caption = 'Copy active plot  to a new plot'
          FocusControl = Owner
        end
        object Label2: TLabel
          Left = 8
          Top = 32
          Width = 138
          Height = 16
          Caption = 'zaping as it is shown in:'
        end
        object Label3: TLabel
          Left = 8
          Top = 168
          Width = 59
          Height = 16
          Caption = 'Mass Shift'
        end
        object Label4: TLabel
          Left = 120
          Top = 96
          Width = 20
          Height = 16
          Caption = 'Min'
        end
        object Label5: TLabel
          Left = 120
          Top = 128
          Width = 23
          Height = 16
          Caption = 'Max'
        end
        object chkChrom: TCheckBox
          Left = 8
          Top = 56
          Width = 153
          Height = 17
          Caption = 'Visual Chromatogram'
          TabOrder = 0
        end
        object rgMassSpec: TRadioGroup
          Left = 8
          Top = 80
          Width = 105
          Height = 73
          Caption = ' Mass Spec Limits '
          ItemIndex = 0
          Items.Strings = (
            'No'
            'Visual limits'
            'Values here')
          TabOrder = 1
        end
        object neMassShift: TBMDSpinEdit
          Left = 85
          Top = 158
          Width = 76
          Height = 26
          Cursor = crArrow
          TabOrder = 2
          Increment = 1.000000000000000000
          MaxValue = 100.000000000000000000
          TrackBarEnabled = False
          GuageHeight = -1
        end
        object neMinMass: TSpinEdit
          Left = 146
          Top = 93
          Width = 63
          Height = 26
          MaxValue = 0
          MinValue = 0
          TabOrder = 3
          Value = 0
        end
        object neMaxMass: TSpinEdit
          Left = 149
          Top = 125
          Width = 60
          Height = 26
          MaxValue = 0
          MinValue = 0
          TabOrder = 4
          Value = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 193
        Width = 222
        Height = 72
        Align = alTop
        Caption = 'Synchonize axes by the active plot '
        TabOrder = 1
        object chkSynchroChrom: TCheckBox
          Left = 8
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Chromatogram'
          TabOrder = 0
          OnClick = chkSynchroChromClick
        end
        object btnDoIt: TButton
          Left = 152
          Top = 24
          Width = 57
          Height = 41
          Caption = 'Do It'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnDoItClick
        end
        object chkSynchroMS: TCheckBox
          Left = 8
          Top = 48
          Width = 97
          Height = 17
          Caption = 'Mass-Spec'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = chkSynchroChromClick
        end
      end
    end
    object tsRecalc: TTabSheet
      Caption = 'Recalc.Sp'
      ImageIndex = 1
      ExplicitTop = 25
      ExplicitHeight = 442
      DesignSize = (
        222
        440)
      object chkNewPlot: TCheckBox
        Left = 8
        Top = 192
        Width = 121
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Create new plot'
        Checked = True
        State = cbChecked
        TabOrder = 0
        Visible = False
        ExplicitTop = 194
      end
      object rgChromRecalc: TRadioGroup
        Left = 0
        Top = 0
        Width = 222
        Height = 81
        Align = alTop
        Caption = 'Chrom Recalc.'
        ItemIndex = 0
        Items.Strings = (
          'TIC'
          'Signal/Noise ratio'
          'Only the current mass-spec')
        TabOrder = 1
        OnClick = rgChromRecalcClick
      end
      object rgMSRecalc: TRadioGroup
        Left = 0
        Top = 81
        Width = 222
        Height = 105
        Align = alTop
        Caption = ' Mass-spec Recalc '
        ItemIndex = 0
        Items.Strings = (
          'Keep them (no change)'
          'Precise masses'
          'Nominal masses (rounded)'
          'Nominal masses (weighed)')
        TabOrder = 2
      end
    end
    object tsMSP: TTabSheet
      Caption = 'MSP export'
      ImageIndex = 2
      OnShow = tsMSPShow
      ExplicitTop = 25
      ExplicitHeight = 442
      object sgMSPheader: TStringGrid
        Left = 0
        Top = 28
        Width = 222
        Height = 412
        Align = alClient
        ColCount = 2
        DefaultColWidth = 100
        RowCount = 6
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 0
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 222
        Height = 28
        AutoSize = True
        BorderWidth = 1
        ButtonHeight = 24
        ButtonWidth = 78
        Caption = 'ToolBar1'
        EdgeInner = esNone
        EdgeOuter = esNone
        Images = ImageList1
        Indent = 3
        List = True
        ShowCaptions = True
        TabOrder = 1
        object tbAddTo: TToolButton
          Left = 3
          Top = 0
          Hint = '|Save to file'
          Caption = ' Add To '
          ImageIndex = 3
          ParentShowHint = False
          ShowHint = True
          OnClick = tbAddToClick
        end
        object tbClear: TToolButton
          Left = 81
          Top = 0
          Hint = '|Copy to clipboard'
          Caption = '  Clear '
          ImageIndex = 5
          ParentShowHint = False
          ShowHint = True
          OnClick = tsMSPShow
        end
      end
    end
  end
  object ImageList1: TImageList
    Height = 18
    Width = 18
    Left = 136
    Top = 297
    Bitmap = {
      494C010107000900100012001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000480000002400000001002000000000008028
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
      0000808080008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000BF
      BF0000BFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      00008080800000BFBF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00000000008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000BF
      BF0000BFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF00FFFFFF00FFFFFF00000000008080800000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF008000000080000000800000008000000080000000FFFFFF00000000008000
      00008000000080000000FFFFFF00000000008080800000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000BFBF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000FFFF00FFFFFF00000000008080800000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF0000BFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF008000000080000000800000008000000080000000FFFFFF00000000008000
      00008000000080000000FFFFFF00000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000BF
      BF0000BFBF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF00FFFFFF00FFFFFF00000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000BF
      BF0000BFBF0000BFBF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0080000000FFFFFF0000000000000000000000000000000000000000008000
      00008000000000000000FFFFFF00000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000BFBF0000BFBF0000BFBF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000FFFF00FFFFFF00000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000BFBF0000BFBF0000BFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0080000000FFFFFF0000000000FFFFFF0000FFFF000000000000000000FFFF
      FF00000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      00000000000000FFFF0000BFBF0000BFBF0000BFBF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000BFBF0000BFBF00000000000000
      0000000000000000000000FFFF0000BFBF0000BFBF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000FFFF0000BFBF0000BFBF0000BF
      BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000BF
      BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
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
      000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF008080800080808000808080008080
      800080808000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF0000BFBF00000000000000000000000000000000000000
      0000000000000000000000BFBF0000BFBF000000000000000000000000000000
      00000000000000000000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C00000000000FFFFFF00C0C0C000C0C0C000808080008080
      800080808000FFFFFF0000000000000000000000000000BFBF0000BFBF000000
      0000808080008080800080808000808080008080800000000000000000000000
      000000BFBF000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF0000BFBF00000000000000000000000000000000000000
      0000000000000000000000BFBF0000BFBF000000000000000000000000000000
      00000000000000000000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C0008000000080000000800000008000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000BFBF0000BFBF000000
      0000808080008080800080808000808080008080800000000000000000000000
      000000BFBF000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF0000BFBF00000000000000000000000000000000000000
      0000000000000000000000BFBF0000BFBF000000000000000000000000000000
      00000000000000000000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FF0000008000000080000000C0C0C000808080008080
      800080808000FFFFFF0000000000000000000000000000BFBF0000BFBF000000
      0000808080008080800080808000808080008080800000000000000000000000
      000000BFBF000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF0000BFBF00000000000000000000000000000000000000
      0000000000000000000000BFBF0000BFBF000000000000000000000000000000
      00000000000000000000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C0008000000080000000FF0000008000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000BFBF0000BFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000BFBF000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF0000BFBF0000BFBF0000BFBF000000000000000000000000000000
      00000000000000000000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000800000008000000080000000FFFFFF0080000000FFFFFF00FFFFFF00FFFF
      FF00808080008080800000000000000000000000000000BFBF0000BFBF0000BF
      BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF0000BFBF00000000000000000000000000000000000000
      0000000000000000000000BFBF0000BFBF000000000000000000000000000000
      00000000000000000000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C0008000
      000080000000800000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00808080000000000000000000000000000000000000BFBF00000000000000
      00000000000000000000000000000000000000000000000000000000000000BF
      BF0000BFBF000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000BFBF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000BFBF000000000000000000000000000000
      00000000000000000000FFFFFF00C0C0C000FFFFFF00C0C0C000800000008000
      000080000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000BFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000BFBF000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF0000000000FFFFFF00FFFFFF00FFFFFF00FF000000FFFF
      FF00FFFFFF00FFFFFF000000000000BFBF000000000000000000000000000000
      00000000000000000000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C0008000
      0000C0C0C000FFFFFF00C0C0C000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000BFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000BFBF000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF0000000000FFFFFF00FFFFFF00FF000000FF000000FF00
      0000FFFFFF00FFFFFF000000000000BFBF000000000000000000000000000000
      00000000000000000000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000BFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000BFBF000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF0000000000FFFFFF00FFFFFF00FFFFFF00FF000000FF00
      0000FF000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000BFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000BFBF000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BFBF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FF000000FF00000000000000FF0000000000000000000000000000000000
      00000000000000000000FFFFFF00C0C0C0008000000080000000800000008000
      00008000000080000000FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000BFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FF000000FF000000FF00
      0000FF0000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000BFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FF000000FF000000FF00
      0000FF0000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000048000000240000000100010000000000B00100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFC0000000000FFFFFFFF
      FFFFFC0000000000F01FFFFFFFE7FC0000000000C00FFFFF3FC3FC0000000000
      C000FCFFFFC3FC0000000000C000787E7FFFFC0000000000C000787CFFE3FC00
      00000000C0007C38FFC3FC0000000000C0007E11FFC3FC0000000000C0007F03
      FFC1FC0000000000C0007F87FFE0FC0000000000C0007F03FFF07C0000000000
      C0007E13FF387C0000000000C000F838FF1C7C0000000000FE03F07C7F007C00
      00000000FE07F1FE3F807C0000000000FFFFFFFFFFE0FC0000000000FFFFFFFF
      FFFFFC0000000000FFFFFFFFFFFC03FFFF000000FBFFFFFFFC0003FFFF000000
      F9FFF8007800038003000000F8FFF0C07800030063000000F87FF0C078000300
      63000000F83FF0C07800030063000000F81FF0007800030003000000F80FF000
      7800030003000000F807F0007800030003000000F807F0007800071FE3000000
      F80FF00078007F1FE3000000F81FF00078007F1FE3000000F83FF003F8007F1F
      E3000000F87FF002F8007F1FE3000000F8FFF030FC00FF1FEB000000F9FFFFF8
      FF03FF0003000000FBFFFFF0FF87FFFFFF000000FFFFFFFFFFFFFFFFFF000000
      00000000000000000000000000000000000000000000}
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'MSP'
    Filter = 'MSP NIST type (*.msp)|*.msp'
    Title = 'Add to MSP file'
    Left = 48
    Top = 296
  end
end