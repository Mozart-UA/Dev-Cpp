object ViewToDoForm: TViewToDoForm
  Left = 192
  Top = 107
  Width = 572
  Height = 247
  BorderStyle = bsSizeToolWin
  Caption = 'To-Do list'
  Color = clBtnFace
  Constraints.MinHeight = 136
  Constraints.MinWidth = 394
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    556
    209)
  PixelsPerInch = 96
  TextHeight = 13
  object lblFilter: TLabel
    Left = 8
    Top = 172
    Width = 25
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Filter:'
  end
  object lv: TListView
    Left = 0
    Top = 0
    Width = 557
    Height = 161
    Anchors = [akLeft, akTop, akRight, akBottom]
    Checkboxes = True
    Columns = <
      item
        Caption = 'Done'
        Width = 42
      end
      item
        Caption = 'Priority'
        Width = 46
      end
      item
        Caption = 'Description'
        Width = 231
      end
      item
        Caption = 'Filename'
        Width = 144
      end
      item
        Caption = 'User'
        Width = 90
      end>
    ReadOnly = True
    RowSelect = True
    SortType = stBoth
    TabOrder = 0
    ViewStyle = vsReport
    OnColumnClick = lvColumnClick
    OnCompare = lvCompare
    OnCustomDrawItem = lvCustomDrawItem
    OnCustomDrawSubItem = lvCustomDrawSubItem
    OnDblClick = lvDblClick
    OnMouseDown = lvMouseDown
  end
  object btnClose: TButton
    Left = 470
    Top = 176
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnCloseClick
  end
  object chkNoDone: TCheckBox
    Left = 8
    Top = 192
    Width = 289
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Don'#39't show items marked as done'
    TabOrder = 2
    OnClick = chkNoDoneClick
  end
  object cmbFilter: TComboBox
    Left = 52
    Top = 168
    Width = 245
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akBottom]
    ItemHeight = 13
    TabOrder = 3
    OnChange = cmbFilterChange
    Items.Strings = (
      'All files (in project and not)'
      'Open files only (in project and not)'
      'All project files'
      'Open project files only'
      'Non-project open files'
      'Current file only')
  end
end
