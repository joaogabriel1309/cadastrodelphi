object Form1: TForm1
  Left = 350
  Top = 215
  Caption = 'Form1'
  ClientHeight = 415
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMinimized
  OnCreate = FormCreate
  DesignSize = (
    650
    415)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 650
    Height = 380
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      object Label1: TLabel
        Left = 167
        Top = 9
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label2: TLabel
        Left = 166
        Top = 55
        Width = 28
        Height = 13
        Caption = 'Idade'
      end
      object Label3: TLabel
        Left = 167
        Top = 101
        Width = 28
        Height = 13
        Caption = 'E-mail'
      end
      object Label4: TLabel
        Left = 167
        Top = 201
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object EDT_NOME: TEdit
        Left = 167
        Top = 28
        Width = 274
        Height = 21
        TabOrder = 0
        OnEnter = EDT_NOMEEnter
        OnExit = EDT_NOMEExit
      end
      object EDT__IDADE: TEdit
        Left = 167
        Top = 74
        Width = 274
        Height = 21
        NumbersOnly = True
        TabOrder = 1
      end
      object EDT_EMIAL: TEdit
        Left = 167
        Top = 120
        Width = 274
        Height = 21
        TabOrder = 2
      end
      object RG_SEXO: TRadioGroup
        Left = 167
        Top = 147
        Width = 274
        Height = 38
        Caption = 'Sexo'
        Columns = 2
        Items.Strings = (
          'Masculino'
          'Feminino')
        TabOrder = 3
        TabStop = True
      end
      object MEMO_OBSERVACAO: TMemo
        Left = 167
        Top = 220
        Width = 274
        Height = 89
        TabOrder = 4
      end
      object ProgressBar1: TProgressBar
        Left = 167
        Top = 315
        Width = 274
        Height = 7
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consuta'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object StringGrid1: TStringGrid
        Left = 0
        Top = 3
        Width = 641
        Height = 310
        TabOrder = 0
      end
      object Button1: TButton
        Left = 564
        Top = 319
        Width = 75
        Height = 25
        Caption = 'Organizar'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
  end
  object Button2: TButton
    Left = 573
    Top = 386
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Anchors = [akRight, akBottom]
    Caption = 'Excluir'
    TabOrder = 2
    OnClick = Button2Click
  end
  object cadastrar: TButton
    Left = 492
    Top = 386
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Anchors = [akRight, akBottom]
    Caption = 'Cadastrar'
    TabOrder = 1
    OnClick = cadastrarClick
  end
end
