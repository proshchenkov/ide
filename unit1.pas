unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, SynEdit,
  SynHighlighterPas, SynHighlighterCpp, SynHighlighterJava,
  SynHighlighterJScript, SynHighlighterHTML, SynHighlighterXML,
  synhighlighterunixshellscript, SynHighlighterCss, SynHighlighterPHP,
  SynHighlighterTeX, SynHighlighterSQL, SynHighlighterBat, PrintersDlgs,
  Printers, ComCtrls, StdCtrls, Buttons, Unit2, Process;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenDialog1: TOpenDialog;
    PrintDialog1: TPrintDialog;
    SaveDialog1: TSaveDialog;
    StatusBar1: TStatusBar;
    SynBatSyn1: TSynBatSyn;
    SynCppSyn1: TSynCppSyn;
    SynCssSyn1: TSynCssSyn;
    SynEdit1: TSynEdit;
    SynHTMLSyn1: TSynHTMLSyn;
    SynJavaSyn1: TSynJavaSyn;
    SynJScriptSyn1: TSynJScriptSyn;
    SynPasSyn1: TSynPasSyn;
    SynPHPSyn1: TSynPHPSyn;
    SynSQLSyn1: TSynSQLSyn;
    SynTeXSyn1: TSynTeXSyn;
    SynUNIXShellScriptSyn1: TSynUNIXShellScriptSyn;
    SynXMLSyn1: TSynXMLSyn;
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure SynEdit1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure SynEdit1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
  private

  public

  end;

var
  Form1: TForm1;
  filename: string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    SynEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
    filename := OpenDialog1.FileName;
    StatusBar1.Panels[1].Text := OpenDialog1.FileName;
  end;
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynJavaSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  MenuItem8.Checked := False;
  MenuItem9.Checked := False;
  MenuItem10.Checked := True;
  MenuItem11.Checked := False;
  MenuItem13.Checked := False;
  MenuItem14.Checked := False;
  MenuItem15.Checked := False;
  MenuItem16.Checked := False;
  MenuItem17.Checked := False;
  MenuItem18.Checked := False;
  MenuItem21.Checked := False;
  MenuItem22.Checked := False;
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynJScriptSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  MenuItem8.Checked := False;
  MenuItem9.Checked := False;
  MenuItem10.Checked := False;
  MenuItem11.Checked := True;
  MenuItem13.Checked := False;
  MenuItem14.Checked := False;
  MenuItem15.Checked := False;
  MenuItem16.Checked := False;
  MenuItem17.Checked := False;
  MenuItem18.Checked := False;
  MenuItem21.Checked := False;
  MenuItem22.Checked := False;
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynHTMLSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  MenuItem8.Checked := False;
  MenuItem9.Checked := False;
  MenuItem10.Checked := False;
  MenuItem11.Checked := False;
  MenuItem13.Checked := True;
  MenuItem14.Checked := False;
  MenuItem15.Checked := False;
  MenuItem16.Checked := False;
  MenuItem17.Checked := False;
  MenuItem18.Checked := False;
  MenuItem21.Checked := False;
  MenuItem22.Checked := False;
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynUNIXShellScriptSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  MenuItem8.Checked := False;
  MenuItem9.Checked := False;
  MenuItem10.Checked := False;
  MenuItem11.Checked := False;
  MenuItem13.Checked := False;
  MenuItem14.Checked := True;
  MenuItem15.Checked := False;
  MenuItem16.Checked := False;
  MenuItem17.Checked := False;
  MenuItem18.Checked := False;
  MenuItem21.Checked := False;
  MenuItem22.Checked := False;
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynCssSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  MenuItem8.Checked := False;
  MenuItem9.Checked := False;
  MenuItem10.Checked := False;
  MenuItem11.Checked := False;
  MenuItem13.Checked := False;
  MenuItem14.Checked := False;
  MenuItem15.Checked := True;
  MenuItem16.Checked := False;
  MenuItem17.Checked := False;
  MenuItem18.Checked := False;
  MenuItem21.Checked := False;
  MenuItem22.Checked := False;
end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynPHPSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  MenuItem8.Checked := False;
  MenuItem9.Checked := False;
  MenuItem10.Checked := False;
  MenuItem11.Checked := False;
  MenuItem13.Checked := False;
  MenuItem14.Checked := False;
  MenuItem15.Checked := False;
  MenuItem16.Checked := True;
  MenuItem17.Checked := False;
  MenuItem18.Checked := False;
  MenuItem21.Checked := False;
  MenuItem22.Checked := False;
end;

procedure TForm1.MenuItem17Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynTeXSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  MenuItem8.Checked := False;
  MenuItem9.Checked := False;
  MenuItem10.Checked := False;
  MenuItem11.Checked := False;
  MenuItem13.Checked := False;
  MenuItem14.Checked := False;
  MenuItem15.Checked := False;
  MenuItem16.Checked := False;
  MenuItem17.Checked := True;
  MenuItem18.Checked := False;
  MenuItem21.Checked := False;
  MenuItem22.Checked := False;
end;

procedure TForm1.MenuItem18Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynSQLSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  MenuItem8.Checked := False;
  MenuItem9.Checked := False;
  MenuItem10.Checked := False;
  MenuItem11.Checked := False;
  MenuItem13.Checked := False;
  MenuItem14.Checked := False;
  MenuItem15.Checked := False;
  MenuItem16.Checked := False;
  MenuItem17.Checked := False;
  MenuItem18.Checked := True;
  MenuItem21.Checked := False;
  MenuItem22.Checked := False;
end;

procedure TForm1.MenuItem19Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.MenuItem21Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynBatSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  MenuItem8.Checked := False;
  MenuItem9.Checked := False;
  MenuItem10.Checked := False;
  MenuItem11.Checked := False;
  MenuItem13.Checked := False;
  MenuItem14.Checked := False;
  MenuItem15.Checked := False;
  MenuItem16.Checked := False;
  MenuItem17.Checked := False;
  MenuItem18.Checked := False;
  MenuItem21.Checked := True;
  MenuItem22.Checked := False;
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynXMLSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  MenuItem8.Checked := False;
  MenuItem9.Checked := False;
  MenuItem10.Checked := False;
  MenuItem11.Checked := False;
  MenuItem13.Checked := False;
  MenuItem14.Checked := False;
  MenuItem15.Checked := False;
  MenuItem16.Checked := False;
  MenuItem17.Checked := False;
  MenuItem18.Checked := False;
  MenuItem21.Checked := False;
  MenuItem22.Checked := True;
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
var
  AProcess: TProcess;
begin
  AProcess := TProcess.Create(nil);
  AProcess.Commandline := 'fpc ' + filename;
  AProcess.Execute;
  AProcess.Commandline := filename.Replace('.pas', '.exe');
  AProcess.Execute;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    SynEdit1.Lines.SaveToFile(SaveDialog1.FileName);
    filename := SaveDialog1.FileName;
    StatusBar1.Panels[1].Text := SaveDialog1.FileName;
  end;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  SynEdit1.Text := '';
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
var
  lh, i: integer;
begin
  if PrintDialog1.Execute then
  begin
    Printer.BeginDoc;
    Printer.Canvas.Font.Name := 'Courier New';
    Printer.Canvas.Font.Size := 10;
    Printer.Canvas.Font.Color := clBlack;
    lh := round(1.2 * abs(printer.Canvas.TextHeight('I')));
    for i := 0 to SynEdit1.Lines.Count - 1 do
    begin
      if (i > 0) and (i mod 40 = 0) then
        Printer.NewPage;
      Printer.Canvas.TextOut(10, 3 * lh + lh * (i mod 40), SynEdit1.Lines[i]);
    end;
    Printer.EndDoc;
    ShowMessage('Печать завершена');
  end;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynPasSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  MenuItem8.Checked := True;
  MenuItem9.Checked := False;
  MenuItem10.Checked := False;
  MenuItem11.Checked := False;
  MenuItem13.Checked := False;
  MenuItem14.Checked := False;
  MenuItem15.Checked := False;
  MenuItem16.Checked := False;
  MenuItem17.Checked := False;
  MenuItem18.Checked := False;
  MenuItem21.Checked := False;
  MenuItem22.Checked := False;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynCppSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  MenuItem8.Checked := False;
  MenuItem9.Checked := True;
  MenuItem10.Checked := False;
  MenuItem11.Checked := False;
  MenuItem13.Checked := False;
  MenuItem14.Checked := False;
  MenuItem15.Checked := False;
  MenuItem16.Checked := False;
  MenuItem17.Checked := False;
  MenuItem18.Checked := False;
  MenuItem21.Checked := False;
  MenuItem22.Checked := False;
end;

procedure TForm1.SynEdit1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  StatusBar1.Panels[0].Text :=
    ' ' + SynEdit1.CaretY.ToString + ': ' + SynEdit1.CaretX.ToString;
end;

procedure TForm1.SynEdit1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  StatusBar1.Panels[0].Text :=
    ' ' + SynEdit1.CaretY.ToString + ': ' + SynEdit1.CaretX.ToString;
end;

end.
