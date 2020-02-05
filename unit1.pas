unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, SynEdit,
  SynHighlighterPas, SynHighlighterCpp, SynHighlighterJava,
  SynHighlighterHTML, synhighlighterunixshellscript, SynHighlighterTeX,
  PrintersDlgs, Printers, ComCtrls, StdCtrls, Buttons, ExtCtrls, Unit2, Process;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
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
    Process1: TProcess;
    SaveDialog1: TSaveDialog;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    SynCppSyn1: TSynCppSyn;
    SynEdit1: TSynEdit;
    SynHTMLSyn1: TSynHTMLSyn;
    SynJavaSyn1: TSynJavaSyn;
    SynPasSyn1: TSynPasSyn;
    SynTeXSyn1: TSynTeXSyn;
    SynUNIXShellScriptSyn1: TSynUNIXShellScriptSyn;
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
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
    StatusBar1.Panels[2].Text := OpenDialog1.FileName;
  end;
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynJavaSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  StatusBar1.Panels[0].Text := (Sender as TMenuItem).Caption;
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynHTMLSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  StatusBar1.Panels[0].Text := (Sender as TMenuItem).Caption;
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynUNIXShellScriptSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  StatusBar1.Panels[0].Text := (Sender as TMenuItem).Caption;
end;

procedure TForm1.MenuItem17Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynTeXSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  StatusBar1.Panels[0].Text := (Sender as TMenuItem).Caption;
end;

procedure TForm1.MenuItem19Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
var
  s: ansistring;
begin
  {Process1.Executable := 'fpc';
  Process1.CurrentDirectory := 'C:\Users\pvm\Documents\pascal\';
  Process1.Parameters.Add('237.pas');
  Process1.Execute;
  Process1.Executable := 'C:\Users\pvm\Documents\pascal\237.exe';
  Process1.Parameters.Text := '';
  Process1.Execute;}

  {Process1.Commandline := 'fpc ' + filename;
  Process1.Execute;
  Process1.Commandline := filename.Replace('.pas', '.exe');
  Process1.Execute;}

  RunCommand('fpc', [filename], s);
  Memo1.Lines.Add(s);
  RunCommand(filename.Replace('.pas', '.exe'), [''], s);
  Memo1.Lines.Add(s);
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    SynEdit1.Lines.SaveToFile(SaveDialog1.FileName);
    filename := SaveDialog1.FileName;
    StatusBar1.Panels[2].Text := SaveDialog1.FileName;
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
  StatusBar1.Panels[0].Text := (Sender as TMenuItem).Caption;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  SynEdit1.Highlighter := SynCppSyn1;
  SaveDialog1.Filter := SynEdit1.Highlighter.DefaultFilter;
  StatusBar1.Panels[0].Text := (Sender as TMenuItem).Caption;
end;

procedure TForm1.SynEdit1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  StatusBar1.Panels[1].Text :=
    ' ' + SynEdit1.CaretY.ToString + ': ' + SynEdit1.CaretX.ToString;
end;

procedure TForm1.SynEdit1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  StatusBar1.Panels[1].Text :=
    ' ' + SynEdit1.CaretY.ToString + ': ' + SynEdit1.CaretX.ToString;
end;

end.
