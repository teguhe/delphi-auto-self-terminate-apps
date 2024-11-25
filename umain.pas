unit umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin

  BorderStyle:=bsSingle;
  //Position:=poScreenCenter;
  WindowState:=TWindowState.wsMinimized;

  Timer1.Interval:=5000;
  Timer1.Enabled:=True;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

  Application.Terminate;

end;

end.
