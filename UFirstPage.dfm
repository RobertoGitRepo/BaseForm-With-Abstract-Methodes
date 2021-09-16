inherited FrmFirstPage: TFrmFirstPage
  Caption = 'FrmFirstPage'
  PixelsPerInch = 96
  TextHeight = 20
  inherited Lbl_IndexPage: TLabel
    Caption = 'First Page'
    ExplicitWidth = 63
  end
  object Pnl_1: TPanel
    Left = 40
    Top = 16
    Width = 50
    Height = 40
    Anchors = []
    Caption = 'Pnl_1'
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
  end
  object Edt_Abst_Msg_Event: TEdit
    Left = 8
    Top = 198
    Width = 518
    Height = 28
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 1
    Text = 'Edt_Abst_Msg_Event'
  end
  object Pnl_2: TPanel
    Left = 240
    Top = 16
    Width = 50
    Height = 40
    Anchors = []
    Caption = 'Pnl_2'
    Color = clSilver
    ParentBackground = False
    TabOrder = 2
  end
  object Pnl_3: TPanel
    Left = 431
    Top = 16
    Width = 50
    Height = 40
    Anchors = []
    Caption = 'Pnl_3'
    Color = clSilver
    ParentBackground = False
    TabOrder = 3
  end
  object Btn_Get_Abstract_Func: TButton
    Left = 40
    Top = 152
    Width = 170
    Height = 40
    Cursor = crHandPoint
    Anchors = []
    Caption = 'Get Abstract Func'
    TabOrder = 4
    OnClick = Btn_Get_Abstract_FuncClick
  end
  object Btn_Get_Abstract_Proc: TButton
    Left = 311
    Top = 152
    Width = 170
    Height = 40
    Cursor = crHandPoint
    Anchors = []
    Caption = 'Get Abstract Proc'
    TabOrder = 5
    OnClick = Btn_Get_Abstract_ProcClick
  end
end
