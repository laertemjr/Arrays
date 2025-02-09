unit uArrays;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Samples.Spin;

type
  T_onedimensional_array = array of Integer;
  T_twodimensional_array = array of array of Integer;
  T_threedimensional_array = array of array of array of Integer;

  TfrmArrays = class(TForm)
    StatusBar1: TStatusBar;
    rgDim: TRadioGroup;
    lblElements: TLabel;
    seElements: TSpinEdit;
    btnList: TButton;
    ListBox1: TListBox;
    lblColumns: TLabel;
    seColumns: TSpinEdit;
    lblRows: TLabel;
    seRows: TSpinEdit;
    lblTables: TLabel;
    seTables: TSpinEdit;
    procedure btnListClick(Sender: TObject);
    procedure visibility(arr: array of Boolean);
    procedure FormShow(Sender: TObject);
    procedure rgDimClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArrays: TfrmArrays;
  // Dynamic arrays
  //array1d : array of Integer;
  array1d : T_onedimensional_array;
  //array2d : array of array of Integer;
  array2d : T_twodimensional_array;
  //array3d : array of array of array of Integer;
  array3d : T_threedimensional_array;

implementation

{$R *.dfm} // Include form definitions

procedure TfrmArrays.btnListClick(Sender: TObject);
var iNumber, iElement, iRow, iColumn, iTable : Integer;
begin
   ListBox1.Clear;
   iNumber := 0;

   case rgDim.ItemIndex of

      0:
      //one-dimensional array
      begin
         { SetLength (array1d, number of elements), example: SetLenght(array1d, 5) has 5 elements
           array1d = [element 0, element 1, ... element 4]
           Exemple of initializing: array1d := [1,2,3,4,5]; }
         SetLength(array1d, StrToInt(seElements.Text));

         for iElement := Low(array1d) to High(array1d) do // iterates through all array elements
         begin
            Inc(iNumber);
            array1d[iElement] := iNumber;
            ListBox1.Items.Add('[element ' + IntToStr(iElement) + ']: ' + IntToStr(array1d[iElement]));
         end;
      end;

      1:
      // two-dimensional array working as a "table"
      begin
         { SetLength (array2d, number of rows (or registers), number of columns (or fields) ), example: SetLenght(array2d, 5, 3) has:
           5 rows and 3 columns, so it has 5 x 3 = 15 elements, first row index = 0, first column index = 0
           Exemple of initializing: array2d := [ [1,2,3], [4,5,6], [7,8,9], [10,11,12], [13,14,15] ];
           array2d has 5 elements (rows) with 3 elements (columns) each, total: 15 elements          }
         SetLength(array2d, StrToInt(seRows.Text), StrToInt(seColumns.Text));
         seElements.Text := IntToStr(StrToInt(seRows.Text) * StrToInt(seColumns.Text));

         for iRow := Low(array2d) to High(array2d) do // iterates through all array rows
            for iColumn := Low(array2d[iRow]) to High(array2d[iRow]) do // iterates through all array columns
            begin
               Inc(iNumber);
               array2d[iRow][iColumn] := iNumber;
               ListBox1.Items.Add('[column: ' + IntToStr(iColumn) + '][ Row: ' + IntToStr(iRow) + ']: ' + IntToStr(array2d[iRow][iColumn]));
            end;
      end;

      2:
      // // three-dimensional array working as a "database"
      begin
         { SetLength (array3d, number of tables, number of rows (or registers), number of columns (or fields) ), example: SetLenght(array3d, 3, 5, 2) has:
           3 "tables", each table with 5 rows and 2 columns, so it has 3 x 5 x 2 = 30 elements, first "table" index = 0, first row index = 0, first column index = 0
           Exemple of initializing: array3d := [ [ [1,2], [3,4], [5,6], [7,8], [9,10] ] , [ [11,12], [13,14], [15,16], [17,18], [19,20] ] , [ [21,22], [23,24], [25,26], [27,28], [29,30] ] ];
           array3d has 3 elements ("tables"), with 5 elements (rows) each "table", with 2 elements (columns) each, total: 30 elements          }
         SetLength(array3d, StrToInt(seTables.Text), StrToInt(seRows.Text), StrToInt(seColumns.Text));
         seElements.Text := IntToStr(StrToInt(seRows.Text) * StrToInt(seColumns.Text) * StrToInt(seTables.Text));

         for iTable := Low(array3d) to High(array3d) do // iterates through all array tables
            for iRow := Low(array3d[iTable]) to High(array3d[iTable]) do // iterates through all array rows
               for iColumn := Low(array3d[iTable][iRow]) to High(array3d[iTable][iRow]) do // iterates through all array columns
               begin
                  Inc(iNumber);
                  array3d[iTable][iRow][iColumn] := iNumber;
                  ListBox1.Items.Add( '[ table: ' + IntToStr(iTable) + '][column: ' + IntToStr(iColumn) + '][ Row: ' + IntToStr(iRow) + ']: ' + IntToStr(array3d[iTable][iRow][iColumn]) );
               end;
      end;
   end;
end;

procedure TfrmArrays.FormShow(Sender: TObject);
begin
   visibility([False, False, False, False, False, False, True]);
end;

procedure TfrmArrays.rgDimClick(Sender: TObject);
begin

case rgDim.ItemIndex of
0: visibility([False, False, False, False, False, False, True]);
1: visibility([False, False, True, True, True, True, False]);
2: visibility([True, True, True, True, True, True, False]);
end;

end;

procedure TfrmArrays.visibility(arr: array of Boolean);
begin
   lblTables.Visible   := arr[0];
   seTables.Visible    := arr[1];
   lblRows.Visible     := arr[2];
   seRows.Visible      := arr[3];
   lblColumns.Visible  := arr[4];
   seColumns.Visible   := arr[5];
   seElements.Enabled  := arr[6];
end;

end.
