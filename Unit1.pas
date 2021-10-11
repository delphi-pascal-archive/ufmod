unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
const
   xm : array[1..1334] of Byte = (
     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,
     $00,$64,$65,$65,$70,$20,$69,$6E,$20,$6D,$79,$20,$73,$6F,$75,$6C,
     $20,$20,$20,$20,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,
     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$15,$00,$00,$00,
     $01,$00,$00,$00,$04,$00,$01,$00,$01,$00,$00,$00,$06,$00,$7D,$00,
     $00,$09,$00,$00,$00,$00,$40,$00,$9C,$03,$3D,$01,$00,$04,$B1,$8D,
     $46,$81,$04,$89,$3F,$04,$87,$2A,$01,$B2,$8D,$42,$82,$04,$8D,$4B,
     $81,$04,$8D,$42,$81,$04,$84,$B2,$8D,$47,$82,$04,$3D,$01,$2E,$04,
     $B1,$89,$46,$04,$84,$B2,$8D,$49,$82,$04,$8D,$42,$81,$04,$8D,$4B,
     $81,$04,$84,$B2,$8D,$3D,$82,$04,$8D,$47,$81,$04,$3D,$01,$18,$04,
     $B1,$9C,$B2,$0E,$60,$8D,$42,$82,$04,$8D,$49,$81,$04,$8D,$42,$81,
     $04,$84,$B2,$8D,$47,$82,$04,$8D,$3D,$81,$04,$89,$47,$04,$84,$B2,
     $8D,$49,$82,$04,$8D,$42,$81,$04,$8D,$49,$81,$04,$9C,$B2,$0E,$66,
     $8B,$3D,$01,$04,$8D,$47,$81,$04,$89,$3D,$04,$84,$B2,$8D,$42,$82,
     $04,$8D,$49,$81,$04,$8D,$42,$81,$04,$84,$B2,$8D,$46,$82,$04,$3D,
     $01,$2E,$04,$00,$89,$47,$04,$84,$B2,$8D,$49,$82,$04,$8D,$42,$81,
     $04,$8D,$49,$81,$04,$84,$B2,$8D,$3D,$82,$04,$8D,$46,$81,$04,$3D,
     $01,$18,$04,$00,$9C,$B2,$0E,$60,$8D,$42,$82,$04,$8D,$49,$81,$04,
     $8D,$42,$81,$04,$84,$B2,$8D,$46,$82,$04,$8D,$3D,$81,$04,$89,$46,
     $04,$84,$B2,$8D,$49,$82,$04,$8D,$42,$81,$04,$8D,$49,$81,$04,$9C,
     $B2,$0E,$64,$8B,$3D,$01,$04,$8D,$46,$81,$04,$89,$3D,$04,$85,$29,
     $B2,$8D,$41,$82,$04,$8D,$49,$81,$04,$8D,$42,$81,$04,$84,$B2,$8D,
     $44,$82,$04,$3D,$01,$2E,$04,$00,$89,$46,$04,$84,$B2,$8D,$49,$82,
     $04,$8D,$41,$81,$04,$8D,$49,$81,$04,$84,$B2,$8D,$3D,$82,$04,$8D,
     $44,$81,$04,$3D,$01,$18,$04,$00,$84,$B2,$8D,$41,$82,$04,$8D,$49,
     $81,$04,$8D,$41,$81,$04,$84,$B2,$8D,$44,$82,$04,$8D,$3D,$81,$04,
     $89,$44,$04,$84,$B2,$8D,$49,$82,$04,$8D,$41,$81,$04,$8D,$49,$81,
     $04,$84,$B2,$8B,$3F,$01,$04,$8D,$44,$81,$04,$89,$3D,$04,$85,$27,
     $B2,$8D,$42,$82,$04,$8D,$49,$81,$04,$8D,$41,$81,$04,$84,$B2,$8D,
     $46,$82,$04,$3F,$01,$2E,$04,$00,$89,$44,$04,$84,$B2,$8D,$4B,$82,
     $04,$8D,$42,$81,$04,$8D,$49,$81,$04,$84,$B2,$8D,$3F,$82,$04,$8D,
     $46,$81,$04,$3F,$01,$18,$04,$00,$9C,$B2,$0E,$60,$8D,$42,$82,$04,
     $8D,$4B,$81,$04,$8D,$42,$81,$04,$84,$B2,$8D,$46,$82,$04,$8D,$3F,
     $81,$04,$89,$46,$04,$84,$B2,$8D,$4B,$82,$04,$8D,$42,$81,$04,$8D,
     $4B,$81,$04,$9C,$B2,$0E,$66,$8B,$3F,$01,$04,$8D,$46,$81,$04,$89,
     $3F,$04,$84,$B2,$8D,$41,$82,$04,$8D,$4B,$81,$04,$8D,$42,$81,$04,
     $84,$B2,$8D,$44,$82,$04,$3F,$01,$2E,$04,$00,$89,$46,$04,$84,$B2,
     $8D,$4B,$82,$04,$8D,$41,$81,$04,$8D,$4B,$81,$04,$84,$B2,$8D,$3F,
     $82,$04,$8D,$44,$81,$04,$3F,$01,$18,$04,$00,$9C,$B2,$0E,$60,$8D,
     $41,$82,$04,$8D,$4B,$81,$04,$8D,$41,$81,$04,$84,$B2,$8D,$44,$82,
     $04,$8D,$3F,$81,$04,$89,$44,$04,$84,$B2,$8D,$4B,$82,$04,$8D,$41,
     $81,$04,$8D,$4B,$81,$04,$9C,$B2,$0E,$62,$8B,$3D,$01,$04,$8D,$44,
     $81,$04,$89,$3F,$04,$85,$25,$B2,$8D,$41,$82,$04,$8D,$4B,$81,$04,
     $8D,$41,$81,$04,$84,$B2,$8D,$44,$82,$04,$3D,$01,$2E,$04,$00,$89,
     $44,$04,$84,$B2,$8D,$49,$82,$04,$8D,$41,$81,$04,$8D,$4B,$81,$04,
     $84,$B2,$8D,$3D,$82,$04,$8D,$44,$81,$04,$3D,$01,$18,$04,$00,$9C,
     $B2,$0E,$60,$8D,$41,$82,$04,$8D,$49,$81,$04,$8D,$41,$81,$04,$84,
     $B2,$8D,$44,$82,$04,$8D,$3D,$81,$04,$89,$44,$04,$84,$B2,$8D,$49,
     $82,$04,$8D,$41,$81,$04,$8D,$49,$81,$04,$9C,$B2,$0E,$62,$8B,$3F,
     $01,$04,$8D,$44,$81,$04,$89,$3D,$04,$85,$23,$B2,$8D,$42,$82,$04,
     $8D,$49,$81,$04,$8D,$41,$81,$04,$84,$B2,$8D,$47,$82,$04,$3F,$01,
     $2E,$04,$00,$89,$44,$04,$84,$B2,$8D,$4B,$82,$04,$8D,$42,$81,$04,
     $8D,$49,$81,$04,$84,$B2,$8D,$3F,$82,$04,$8D,$47,$81,$04,$3F,$01,
     $18,$04,$00,$9C,$B2,$0E,$60,$8D,$42,$82,$04,$8D,$4B,$81,$04,$8D,
     $42,$81,$04,$84,$B2,$8D,$47,$82,$04,$8D,$3F,$81,$04,$89,$47,$04,
     $84,$B2,$8D,$4B,$82,$04,$8D,$42,$81,$04,$8D,$4B,$81,$04,$9C,$B2,
     $0E,$66,$8B,$3F,$01,$04,$8D,$47,$81,$04,$89,$3F,$04,$85,$27,$B2,
     $8D,$42,$82,$04,$8D,$4B,$81,$04,$8D,$42,$81,$04,$84,$B2,$8D,$46,
     $82,$04,$3F,$01,$2E,$04,$00,$89,$47,$04,$84,$B2,$8D,$4B,$82,$04,
     $8D,$42,$81,$04,$8D,$4B,$81,$04,$84,$B2,$8D,$3F,$82,$04,$8D,$46,
     $81,$04,$3F,$01,$18,$04,$00,$9C,$B2,$0E,$60,$8D,$42,$82,$04,$8D,
     $4B,$81,$04,$8D,$42,$81,$04,$84,$B2,$8D,$46,$82,$04,$8D,$3F,$81,
     $04,$89,$46,$04,$84,$B2,$8D,$4B,$82,$04,$8D,$42,$81,$04,$8D,$4B,
     $81,$04,$9C,$B2,$0E,$66,$F1,$00,$00,$00,$00,$00,$00,$00,$00,$00,
     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,
     $80,$01,$00,$12,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,
     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,
     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,
     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,
     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,
     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,
     $00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$00,$04,$00,$40,$00,$08,
     $00,$2C,$00,$0E,$00,$08,$00,$18,$00,$16,$00,$20,$00,$08,$00,$3C,
     $00,$00,$00,$46,$00,$00,$00,$50,$00,$00,$00,$5A,$00,$00,$00,$64,
     $00,$00,$00,$6E,$00,$00,$00,$00,$00,$10,$00,$32,$00,$30,$00,$64,
     $00,$10,$00,$50,$00,$20,$00,$50,$00,$20,$00,$50,$00,$20,$00,$50,
     $00,$20,$00,$5A,$00,$20,$00,$64,$00,$20,$00,$6E,$00,$20,$00,$78,
     $00,$20,$00,$82,$00,$20,$00,$06,$03,$02,$03,$05,$01,$00,$02,$00,
     $05,$00,$00,$00,$00,$00,$00,$3D,$00,$00,$00,$07,$00,$00,$00,$36,
     $00,$00,$00,$40,$00,$01,$80,$00,$00,$01,$FF,$00,$00,$00,$00,$00,
     $00,$00,$DD,$00,$02,$00,$03,$00,$03,$00,$02,$00,$03,$00,$03,$00,
     $02,$00,$03,$00,$03,$00,$02,$00,$03,$00,$03,$00,$03,$00,$23,$FD,
     $FF,$00,$FD,$00,$FD,$00,$FE,$00,$FD,$00,$FE,$00,$FD,$00,$FD,$00,
     $FD,$00,$FE,$00,$FD,$00
   );
   
implementation

{$R *.dfm}
//���������� ���� ������� ������� ufmod
{$I ufmod.inc *** uFMOD API (WINMM) }
procedure TForm1.Button1Click(Sender: TObject);
begin
 uFMOD_PlaySong(@xm,Length(xm),XM_MEMORY);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 uFMOD_StopSong;
end;

end.
