unit teladecadasro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Grids;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EDT_NOME: TEdit;
    EDT__IDADE: TEdit;
    EDT_EMIAL: TEdit;
    RG_SEXO: TRadioGroup;
    MEMO_OBSERVACAO: TMemo;
    ProgressBar1: TProgressBar;
    Button2: TButton;
    cadastrar: TButton;
    StringGrid1: TStringGrid;
    Button1: TButton;
    procedure cadastrarClick(Sender: TObject);
    function soletras(palavra: string): string;
    function retornanumero(valor: integer): integer;
    procedure FormCreate(Sender: TObject);
    function verificaexistente(nome: string): Integer;
    procedure PageControl1Change(Sender: TObject);
    procedure EDT_NOMEExit(Sender: TObject);
    procedure EDT_NOMEEnter(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure limparcamapos;
    procedure lista;
    procedure arrumaremordem;
    procedure organizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  FarraMult: array[1..10,1..5] of string;
  CONTADORA: integer;
implementation

{$R *.dfm}


procedure TForm1.arrumaremordem;
begin
  organizar;
end;

procedure TForm1.organizar;
var
  y,x: Integer;
  auxiliar: string;
begin
  for x := 1 to 9 do
  begin
    for y := x + 1 to 10 do
    begin
       if (FarraMult[y,1] <> '') then
       begin
          if (FarraMult[x, 1]) > (FarraMult[y, 1]) then
          begin
             auxiliar := FarraMult[y,1];
             FarraMult[y,1] := FarraMult[x,1];
             FarraMult[x,1] := auxiliar;
             auxiliar := FarraMult[y,2];
             FarraMult[y,2] := FarraMult[x,2];
             FarraMult[x,2] := auxiliar;
             auxiliar := FarraMult[y,3];
             FarraMult[y,3] := FarraMult[x,3];
             FarraMult[x,3] := auxiliar;
             auxiliar := FarraMult[y,4];
             FarraMult[y,4] := FarraMult[x,4];
             FarraMult[x,4] := auxiliar;
             auxiliar := FarraMult[y,5];
             FarraMult[y,5] := FarraMult[x,5];
             FarraMult[x,5] := auxiliar;
          end
       end;
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  p: Integer;
  auxiliar: string;
begin
   organizar;
   StringGrid1.ColCount := 5;
   StringGrid1.RowCount := 11;
   StringGrid1.FixedCols := 0;
   StringGrid1.FixedRows := 1;
   StringGrid1.Cells[0, 0] := 'Nome';
   StringGrid1.Cells[1, 0] := 'Idade';
   StringGrid1.Cells[2, 0] := 'E-mail';
   StringGrid1.Cells[3, 0] := 'Sexo';
   StringGrid1.Cells[4, 0] := 'Observação';
   StringGrid1.ColWidths[0] := 150;
   StringGrid1.ColWidths[1] := 50;
   StringGrid1.ColWidths[2] := 150;
   StringGrid1.ColWidths[3] := 70;
   StringGrid1.ColWidths[4] := 200;
   for p := 1 to 10 do
   begin
      StringGrid1.Cells[0, p] := FarraMult[p, 1];
      StringGrid1.Cells[1, p] := FarraMult[p, 2];
      StringGrid1.Cells[2, p] := FarraMult[p, 3];
      StringGrid1.Cells[3, p] := FarraMult[p, 4];
      StringGrid1.Cells[4, p] := FarraMult[p, 5];
   end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
   RCB_FUNCAO,I,j: integer;
begin
   RCB_FUNCAO:= verificaexistente(EDT_NOME.Text);
   for I := RCB_FUNCAO to High(FarraMult[I]) do
   begin
      if (i = 10) then
      begin
         for j := 1 to 5 do
         begin
            FarraMult[i][j] := '';
         end;
      end
      else
      begin
         FarraMult[i][1]:= FarraMult[i + 1][1];
         FarraMult[i][2]:= FarraMult[i + 1][2];
         FarraMult[i][3]:= FarraMult[i + 1][3];
         FarraMult[i][4]:= FarraMult[i + 1][4];
         FarraMult[i][5]:= FarraMult[i + 1][5];
      end;
   end;
   MessageDlg('Cliente excluido!', mtConfirmation,[mbOK],0);
   lista;
   limparcamapos;
end;

procedure TForm1.cadastrarClick(Sender: TObject);
var SEXO,auxiliar: string;
  o,j,i: Integer;
begin
   CONTADORA := retornanumero(CONTADORA);
   if trim(EDT_NOME.Text)='' then
   begin
      MessageDlg('Campo nome vazio, por favor insira um nome',mtError,[mbOK],0);
      exit;
   end;
   if trim(EDT__IDADE.Text) = '' then
   begin
      MessageDlg('Campo Idade vazio, por favor insira um Idade',mtError,[mbOK],0);
      exit;
   end;
   if trim(EDT_EMIAL.Text) = '' then
   begin
      MessageDlg('Campo E-mail vazio, por favor insira um E-mail',mtError,[mbOK],0);
      exit;
   end;
   if trim(MEMO_OBSERVACAO.Text) = '' then
   begin
      MEMO_OBSERVACAO.Lines.Add('Nulo');
   end;
   if (RG_SEXO.ItemIndex = -1) then
   begin
      MessageDlg('Campo sexo vazio, por favor insira um sexo',mtError,[mbOK],0);
      exit;
   end;
   for o := 0 to 5000 do
   begin
      ProgressBar1.Position := o;
      Application.ProcessMessages;
   end;
   FarraMult[CONTADORA][1]:= UpperCase(EDT_NOME.Text);
   FarraMult[CONTADORA][2]:= (EDT__IDADE.Text);
   FarraMult[CONTADORA][3]:= soletras(EDT_EMIAL.Text);;
   if (RG_SEXO.ItemIndex = 1) then
      sexo:= 'Feminino'
   else
      sexo:= 'Masculino';
   FarraMult[CONTADORA][4]:= sexo;
   FarraMult[CONTADORA][5]:= soletras(MEMO_OBSERVACAO.Text);
   limparcamapos;
   MessageDlg('Cliente cadastrado com sucesso!',mtInformation,[mbOK],0);
   ProgressBar1.Position := 0;
   lista;
end;

function TForm1.soletras(palavra: string): string;
const
   espaco = ' ';
   vazio = '';
begin
   Result:= StringReplace(palavra,espaco,vazio,[rfReplaceAll]);
end;

procedure TForm1.EDT_NOMEEnter(Sender: TObject);
begin
   Button2.Enabled := false;
   limparcamapos;
end;

procedure TForm1.limparcamapos;
begin
   EDT_NOME.Clear;
   EDT__IDADE.Clear;
   EDT_EMIAL.Clear;
   RG_SEXO.ItemIndex := -1;
   MEMO_OBSERVACAO.Lines.Clear;
end;

procedure TForm1.lista;
var
  I: Integer;
begin
  StringGrid1.ColCount := 5;
  StringGrid1.RowCount := 10;
  StringGrid1.FixedCols := 0;
  StringGrid1.FixedRows := 1;
  StringGrid1.Cells[0, 0] := 'Nome';
  StringGrid1.Cells[1, 0] := 'Idade';
  StringGrid1.Cells[2, 0] := 'E-mail';
  StringGrid1.Cells[3, 0] := 'Sexo';
  StringGrid1.Cells[4, 0] := 'Observação';
  StringGrid1.ColWidths[0] := 150;
  StringGrid1.ColWidths[1] := 50;
  StringGrid1.ColWidths[2] := 150;
  StringGrid1.ColWidths[3] := 70;
  StringGrid1.ColWidths[4] := 200;
  for I := 1 to 10 do
  begin
    StringGrid1.Cells[0, i] := FarraMult[i, 1];
    StringGrid1.Cells[1, i] := FarraMult[i, 2];
    StringGrid1.Cells[2, i] := FarraMult[i, 3];
    StringGrid1.Cells[3, i] := FarraMult[i, 4];
    StringGrid1.Cells[4, i] := FarraMult[i, 5];
  end;
end;

procedure TForm1.EDT_NOMEExit(Sender: TObject);
var fi: integer;
begin
   fi:=  verificaexistente(EDT_NOME.Text);
   if (fi > 0 ) then
   begin
      Button2.Enabled:= true;
      EDT__IDADE.Text:= FarraMult[fi][2];
      EDT_EMIAL.Text:= FarraMult[fi][3];
      if ((FarraMult[fi][4]) = 'Masculino') then
         RG_SEXO.ItemIndex:= 0
      else
         RG_SEXO.ItemIndex:= 1;
      MEMO_OBSERVACAO.Lines.Clear;
      MEMO_OBSERVACAO.Lines.Add(FarraMult[fi][5]);
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   CONTADORA:= 0;
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
   if (PageControl1.TabIndex = 1) then
   begin
      cadastrar.Enabled := false;
      Button2.Enabled := false;
   end;
   if (PageControl1.TabIndex = 0) then
   begin
      cadastrar.Enabled := true;
      Button2.Enabled := true;
   end;
end;

function TForm1.verificaexistente(nome: string): Integer;
var
  I: Integer;
begin
   Result:= -1;
   nome:= soletras(nome);
   for I := 1 to High(FarraMult) do
   begin
      if (UpperCase(nome)) = soletras(FarraMult[i][1]) then
      begin
         Result:=(i);
         break;
      end;
   end;
end;

function TForm1.retornanumero(valor: Integer): Integer;
var RC_VALOR: integer;
begin
   RC_VALOR := valor+1;
   result:=(RC_VALOR);
end;
end.
