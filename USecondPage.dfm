inherited FrmSecondPage: TFrmSecondPage
  Caption = 'FrmSecondPage'
  PixelsPerInch = 96
  TextHeight = 20
  inherited Lbl_IndexPage: TLabel
    Caption = 'Second Page'
    ExplicitLeft = 8
    ExplicitTop = -8
    ExplicitWidth = 534
    ExplicitHeight = 234
  end
  object Lbl_Abst_Msg_Event: TLabel
    Left = 8
    Top = 206
    Width = 134
    Height = 20
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Lbl_Abst_Msg_Event'
  end
  object Lbl_1: TLabel
    Left = 8
    Top = 16
    Width = 58
    Height = 23
    Caption = 'Second'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Font.Quality = fqClearTypeNatural
    ParentFont = False
  end
  object Lbl_2: TLabel
    Left = 240
    Top = 16
    Width = 42
    Height = 23
    Anchors = [akTop]
    Caption = 'PAGE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Font.Quality = fqClearTypeNatural
    ParentFont = False
  end
  object Lbl_3: TLabel
    Left = 438
    Top = 16
    Width = 88
    Height = 23
    Anchors = [akTop, akRight]
    Caption = 'Abstracted'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Font.Quality = fqClearTypeNatural
    ParentFont = False
  end
  object Btn_Do_Abst_Proc: TButton
    Left = 8
    Top = 148
    Width = 150
    Height = 35
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    Caption = 'Do Abstract Proc'
    TabOrder = 0
    OnClick = Btn_Do_Abst_ProcClick
  end
  object Btn_Get_Abst_Func: TButton
    Left = 376
    Top = 148
    Width = 150
    Height = 35
    Anchors = [akRight, akBottom]
    Caption = 'Get Abstract Func'
    TabOrder = 1
    OnClick = Btn_Get_Abst_FuncClick
  end
end
