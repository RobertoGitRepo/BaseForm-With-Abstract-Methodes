object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'FrmMain'
  ClientHeight = 383
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Font.Quality = fqClearTypeNatural
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Pnl_ToolBar: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Btn_Previous: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 75
      Height = 44
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Previous'
      TabOrder = 0
      OnClick = Btn_PreviousClick
    end
    object Btn_Next: TButton
      AlignWithMargins = True
      Left = 631
      Top = 3
      Width = 75
      Height = 44
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Next'
      TabOrder = 1
      OnClick = Btn_NextClick
      ExplicitLeft = 634
      ExplicitTop = 0
    end
  end
  object Pnl_StatusBar: TPanel
    Left = 0
    Top = 342
    Width = 709
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
  end
  object Notebook_SubForms: TNotebook
    Left = 0
    Top = 50
    Width = 709
    Height = 292
    Align = alClient
    TabOrder = 2
    OnPageChanged = Notebook_SubFormsPageChanged
    object TPage
      Left = 0
      Top = 0
      Caption = 'First Page'
      object Pnl_First_PAGE: TPanel
        Left = 0
        Top = 0
        Width = 709
        Height = 292
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Second Page'
      object Pnl_Second_PAGE: TPanel
        Left = 0
        Top = 0
        Width = 709
        Height = 292
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Third Page'
      object Pnl_Third_PAGE: TPanel
        Left = 0
        Top = 0
        Width = 709
        Height = 292
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
      end
    end
  end
end
