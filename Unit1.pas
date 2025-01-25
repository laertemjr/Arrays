unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    ListBox3: TListBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Vetor1 : array of Integer;
  vetor2 : array of array of Integer;
  vetor3 : array of array of array of Integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var i,j,k : Integer;
begin
   // VETOR UNIDIMENSIONAL
   SetLength(Vetor1,4);
   Vetor1 := [1,2,3,4,5];
   for i := Low(Vetor1) to High(Vetor1) do
   ListBox1.Items.Add('[' + IntToStr(i) + ']: ' + IntToStr(vetor1[i]));

   // VETOR BIDIMENSIONAL
   SetLength(Vetor2, 4, 1);
   Vetor2 := [[1,2],[3,4],[5,6],[7,8],[9,10]];
   for i := Low(Vetor2) to High(Vetor2) do
   for j := Low(Vetor2[i]) to High(Vetor2[i]) do
   ListBox2.Items.Add('[' + IntToStr(i) + '][' + IntToStr(j) + ']: ' + IntToStr(vetor2[i][j]));

   // VETOR TRIDIMENSIONAL
   SetLength(Vetor3, 3, 2, 1);
   Vetor3 := [ [[1,2],[3,4],[11,22]], [[5,6],[7,8],[55,88]], [[9,10],[11,12],[99,1212]], [[13,14],[15,16],[1313,1616]] ];
   for i := Low(Vetor3) to High(Vetor3) do
   for j := Low(Vetor3[i]) to High(Vetor3[i]) do
   for k := Low(Vetor3[i][j]) to High(Vetor3[i][j]) do
   ListBox3.Items.Add('[' + IntToStr(i) + '][' + IntToStr(j) + '][' + IntToStr(k) + ']: ' + IntToStr(vetor3[i][j][k]));
end;

end.
