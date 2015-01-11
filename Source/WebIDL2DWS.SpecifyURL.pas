unit WebIDL2DWS.SpecifyURL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormFetchFromWebsite = class(TForm)
    ButtonCancel: TButton;
    ButtonOK: TButton;
    ComboBoxText: TComboBox;
    LabelEnterURL: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    function GetURL: string;
  public
    property URL: string read GetURL;
  end;

implementation

{$R *.dfm}

{ TFormFetchFromWebsite }

procedure TFormFetchFromWebsite.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ModalResult = mrOk then
    if ComboBoxText.Items.IndexOf(ComboBoxText.Text) < 0 then
      ComboBoxText.Items.Insert(0, ComboBoxText.Text)
end;

procedure TFormFetchFromWebsite.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      ModalResult := mrCancel;
  end;
end;

procedure TFormFetchFromWebsite.FormShow(Sender: TObject);
begin
  ComboBoxText.SetFocus;
end;

function TFormFetchFromWebsite.GetURL: string;
begin
  Result := ComboBoxText.Text;
end;

end.

