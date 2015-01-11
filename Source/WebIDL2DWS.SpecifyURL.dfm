object FormFetchFromWebsite: TFormFetchFromWebsite
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Fetch Website'
  ClientHeight = 68
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    387
    68)
  PixelsPerInch = 96
  TextHeight = 13
  object LabelEnterURL: TLabel
    Left = 8
    Top = 11
    Width = 52
    Height = 13
    Caption = 'Enter URL:'
  end
  object ComboBoxText: TComboBox
    Left = 66
    Top = 8
    Width = 313
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    OnKeyDown = FormKeyDown
  end
  object ButtonCancel: TButton
    Left = 223
    Top = 35
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 1
    OnKeyDown = FormKeyDown
  end
  object ButtonOK: TButton
    Left = 304
    Top = 35
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
    OnKeyDown = FormKeyDown
  end
end
