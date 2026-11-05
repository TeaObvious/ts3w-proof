# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: byte HandTool_ValidateSlotPlacementAndFloor(void * param_1, void * param_2, int * param_3, float param_4, float * param_5, char param_6, uint * param_7, void * param_8)
Owned ranges: [[00ccdd60, 00cce024]]

00ccdd60  55  PUSH EBP
00ccdd61  8bec  MOV EBP,ESP
00ccdd63  83e4f0  AND ESP,0xfffffff0
00ccdd66  81ec84010000  SUB ESP,0x184
00ccdd6c  8b0df8a01e01  MOV ECX,dword ptr [0x011ea0f8]
00ccdd72  53  PUSH EBX
00ccdd73  56  PUSH ESI
00ccdd74  8b7508  MOV ESI,dword ptr [EBP + 0x8]
00ccdd77  33c0  XOR EAX,EAX
00ccdd79  854e2c  TEST dword ptr [ESI + 0x2c],ECX
00ccdd7c  57  PUSH EDI
00ccdd7d  8b7d0c  MOV EDI,dword ptr [EBP + 0xc]
00ccdd80  89442418  MOV dword ptr [ESP + 0x18],EAX
00ccdd84  7428  JZ 0x00ccddae
00ccdd86  854f2c  TEST dword ptr [EDI + 0x2c],ECX
00ccdd89  7423  JZ 0x00ccddae
00ccdd8b  8b4510  MOV EAX,dword ptr [EBP + 0x10]
00ccdd8e  8b4004  MOV EAX,dword ptr [EAX + 0x4]
00ccdd91  8b570c  MOV EDX,dword ptr [EDI + 0xc]
00ccdd94  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
00ccdd97  8b5e0c  MOV EBX,dword ptr [ESI + 0xc]
00ccdd9a  50  PUSH EAX
00ccdd9b  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00ccdd9e  52  PUSH EDX
00ccdd9f  51  PUSH ECX
00ccdda0  53  PUSH EBX
00ccdda1  50  PUSH EAX
00ccdda2  e8d91dacff  CALL 0x0078fb80
00ccdda7  83c414  ADD ESP,0x14
00ccddaa  89442418  MOV dword ptr [ESP + 0x18],EAX
00ccddae  8bd8  MOV EBX,EAX
00ccddb0  c1eb04  SHR EBX,0x4
00ccddb3  2401  AND AL,0x1
00ccddb5  80e301  AND BL,0x1
00ccddb8  8d4c2430  LEA ECX,[ESP + 0x30]
00ccddbc  885c241c  MOV byte ptr [ESP + 0x1c],BL
00ccddc0  88442413  MOV byte ptr [ESP + 0x13],AL
00ccddc4  e87799e0ff  CALL 0x00ad7740
00ccddc9  d94514  FLD float ptr [EBP + 0x14]
00ccddcc  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00ccddd0  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00ccddd4  8d4c2430  LEA ECX,[ESP + 0x30]
00ccddd8  51  PUSH ECX
00ccddd9  8b4d18  MOV ECX,dword ptr [EBP + 0x18]
00ccdddc  52  PUSH EDX
00ccdddd  8b5510  MOV EDX,dword ptr [EBP + 0x10]
00ccdde0  c1e803  SHR EAX,0x3
00ccdde3  2501ffffff  AND EAX,0xffffff01
00ccdde8  50  PUSH EAX
00ccdde9  51  PUSH ECX
00ccddea  51  PUSH ECX
00ccddeb  d91c24  FSTP float ptr [ESP]
00ccddee  52  PUSH EDX
00ccddef  57  PUSH EDI
00ccddf0  56  PUSH ESI
00ccddf1  e80a19e7ff  CALL 0x00b3f700
00ccddf6  83c420  ADD ESP,0x20
00ccddf9  84c0  TEST AL,AL
00ccddfb  7504  JNZ 0x00ccde01
00ccddfd  88442413  MOV byte ptr [ESP + 0x13],AL
00ccde01  8bcf  MOV ECX,EDI
00ccde03  e828139cff  CALL 0x0068f130
00ccde08  85c0  TEST EAX,EAX
00ccde0a  7414  JZ 0x00ccde20
00ccde0c  8b10  MOV EDX,dword ptr [EAX]
00ccde0e  8bc8  MOV ECX,EAX
00ccde10  8b420c  MOV EAX,dword ptr [EDX + 0xc]
00ccde13  680e6b5690  PUSH 0x90566b0e
00ccde18  ffd0  CALL EAX
00ccde1a  89442414  MOV dword ptr [ESP + 0x14],EAX
00ccde1e  eb08  JMP 0x00ccde28
00ccde20  c744241400000000  MOV dword ptr [ESP + 0x14],0x0
00ccde28  807c241300  CMP byte ptr [ESP + 0x13],0x0
00ccde2d  0f845b010000  JZ 0x00ccdf8e
00ccde33  8b4510  MOV EAX,dword ptr [EBP + 0x10]
00ccde36  85c0  TEST EAX,EAX
00ccde38  0f8450010000  JZ 0x00ccdf8e
00ccde3e  837c241400  CMP dword ptr [ESP + 0x14],0x0
00ccde43  0f8445010000  JZ 0x00ccdf8e
00ccde49  807d1c00  CMP byte ptr [EBP + 0x1c],0x0
00ccde4d  0f853b010000  JNZ 0x00ccdf8e
00ccde53  50  PUSH EAX
00ccde54  e8b7eae2ff  CALL 0x00afc910
00ccde59  83c404  ADD ESP,0x4
00ccde5c  84c0  TEST AL,AL
00ccde5e  7521  JNZ 0x00ccde81
00ccde60  56  PUSH ESI
00ccde61  e86a1fe3ff  CALL 0x00affdd0
00ccde66  83c404  ADD ESP,0x4
00ccde69  a90000000c  TEST EAX,0xc000000
00ccde6e  7511  JNZ 0x00ccde81
00ccde70  56  PUSH ESI
00ccde71  e87ae5e2ff  CALL 0x00afc3f0
00ccde76  83c404  ADD ESP,0x4
00ccde79  84c0  TEST AL,AL
00ccde7b  0f840d010000  JZ 0x00ccdf8e
00ccde81  d94514  FLD float ptr [EBP + 0x14]
00ccde84  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00ccde8c  8d4c241c  LEA ECX,[ESP + 0x1c]
00ccde90  51  PUSH ECX
00ccde91  8b4d18  MOV ECX,dword ptr [EBP + 0x18]
00ccde94  8d542424  LEA EDX,[ESP + 0x24]
00ccde98  52  PUSH EDX
00ccde99  8b5510  MOV EDX,dword ptr [EBP + 0x10]
00ccde9c  8d44242c  LEA EAX,[ESP + 0x2c]
00ccdea0  50  PUSH EAX
00ccdea1  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00ccdea5  51  PUSH ECX
00ccdea6  51  PUSH ECX
00ccdea7  d91c24  FSTP float ptr [ESP]
00ccdeaa  52  PUSH EDX
00ccdeab  57  PUSH EDI
00ccdeac  f30f11442440  MOVSS dword ptr [ESP + 0x40],XMM0
00ccdeb2  f30f11442444  MOVSS dword ptr [ESP + 0x44],XMM0
00ccdeb8  0f57c0  XORPS XMM0,XMM0
00ccdebb  56  PUSH ESI
00ccdebc  50  PUSH EAX
00ccdebd  c744245000000000  MOV dword ptr [ESP + 0x50],0x0
00ccdec5  f30f11442444  MOVSS dword ptr [ESP + 0x44],XMM0
00ccdecb  f30f11442440  MOVSS dword ptr [ESP + 0x40],XMM0
00ccded1  e80adcffff  CALL 0x00ccbae0
00ccded6  83c424  ADD ESP,0x24
00ccded9  8d8c24b0000000  LEA ECX,[ESP + 0xb0]
00ccdee0  e89b5cacff  CALL 0x00793b80
00ccdee5  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00ccdee9  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00ccdeed  f30f10442420  MOVSS XMM0,dword ptr [ESP + 0x20]
00ccdef3  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00ccdef7  899424b8000000  MOV dword ptr [ESP + 0xb8],EDX
00ccdefe  8d9424e4000000  LEA EDX,[ESP + 0xe4]
00ccdf05  898c24b4000000  MOV dword ptr [ESP + 0xb4],ECX
00ccdf0c  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00ccdf10  52  PUSH EDX
00ccdf11  f30f118424c8000000  MOVSS dword ptr [ESP + 0xc8],XMM0
00ccdf1a  f30f10442420  MOVSS XMM0,dword ptr [ESP + 0x20]
00ccdf20  57  PUSH EDI
00ccdf21  89b424b8000000  MOV dword ptr [ESP + 0xb8],ESI
00ccdf28  898424c4000000  MOV dword ptr [ESP + 0xc4],EAX
00ccdf2f  898c24c8000000  MOV dword ptr [ESP + 0xc8],ECX
00ccdf36  f30f118424d0000000  MOVSS dword ptr [ESP + 0xd0],XMM0
00ccdf3f  c68424e100000000  MOV byte ptr [ESP + 0xe1],0x0
00ccdf47  e8641be7ff  CALL 0x00b3fab0
00ccdf4c  83c408  ADD ESP,0x8
00ccdf4f  84db  TEST BL,BL
00ccdf51  7411  JZ 0x00ccdf64
00ccdf53  8d8424e4000000  LEA EAX,[ESP + 0xe4]
00ccdf5a  50  PUSH EAX
00ccdf5b  57  PUSH EDI
00ccdf5c  e8ef1ae7ff  CALL 0x00b3fa50
00ccdf61  83c408  ADD ESP,0x8
00ccdf64  8b5d24  MOV EBX,dword ptr [EBP + 0x24]
00ccdf67  8d8c24b0000000  LEA ECX,[ESP + 0xb0]
00ccdf6e  53  PUSH EBX
00ccdf6f  51  PUSH ECX
00ccdf70  e8bb79e7ff  CALL 0x00b45930
00ccdf75  83c408  ADD ESP,0x8
00ccdf78  84c0  TEST AL,AL
00ccdf7a  7504  JNZ 0x00ccdf80
00ccdf7c  88442413  MOV byte ptr [ESP + 0x13],AL
00ccdf80  8d8c24b0000000  LEA ECX,[ESP + 0xb0]
00ccdf87  e8145bacff  CALL 0x00793aa0
00ccdf8c  eb03  JMP 0x00ccdf91
00ccdf8e  8b5d24  MOV EBX,dword ptr [EBP + 0x24]
00ccdf91  85db  TEST EBX,EBX
00ccdf93  743a  JZ 0x00ccdfcf
00ccdf95  8d4c2430  LEA ECX,[ESP + 0x30]
00ccdf99  e8728fe0ff  CALL 0x00ad6f10
00ccdf9e  84c0  TEST AL,AL
00ccdfa0  742d  JZ 0x00ccdfcf
00ccdfa2  8d4c2430  LEA ECX,[ESP + 0x30]
00ccdfa6  e8f571b1ff  CALL 0x007e51a0
00ccdfab  8b7008  MOV ESI,dword ptr [EAX + 0x8]
00ccdfae  8d7804  LEA EDI,[EAX + 0x4]
00ccdfb1  3bf7  CMP ESI,EDI
00ccdfb3  741a  JZ 0x00ccdfcf
00ccdfb5  8d5610  LEA EDX,[ESI + 0x10]
00ccdfb8  52  PUSH EDX
00ccdfb9  8bcb  MOV ECX,EBX
00ccdfbb  e8b0a5e0ff  CALL 0x00ad8570
00ccdfc0  56  PUSH ESI
00ccdfc1  e86a3081ff  CALL 0x004e1030
00ccdfc6  8bf0  MOV ESI,EAX
00ccdfc8  83c404  ADD ESP,0x4
00ccdfcb  3bf7  CMP ESI,EDI
00ccdfcd  75e6  JNZ 0x00ccdfb5
00ccdfcf  8b4520  MOV EAX,dword ptr [EBP + 0x20]
00ccdfd2  85c0  TEST EAX,EAX
00ccdfd4  7406  JZ 0x00ccdfdc
00ccdfd6  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00ccdfda  8908  MOV dword ptr [EAX],ECX
00ccdfdc  8b942490000000  MOV EDX,dword ptr [ESP + 0x90]
00ccdfe3  52  PUSH EDX
00ccdfe4  8d8c2488000000  LEA ECX,[ESP + 0x88]
00ccdfeb  e8d047d8ff  CALL 0x00a527c0
00ccdff0  8b442474  MOV EAX,dword ptr [ESP + 0x74]
00ccdff4  50  PUSH EAX
00ccdff5  8d4c246c  LEA ECX,[ESP + 0x6c]
00ccdff9  e8c247d8ff  CALL 0x00a527c0
00ccdffe  8b4c2458  MOV ECX,dword ptr [ESP + 0x58]
00cce002  51  PUSH ECX
00cce003  8d4c2450  LEA ECX,[ESP + 0x50]
00cce007  e8b447d8ff  CALL 0x00a527c0
00cce00c  8b54243c  MOV EDX,dword ptr [ESP + 0x3c]
00cce010  52  PUSH EDX
00cce011  8d4c2434  LEA ECX,[ESP + 0x34]
00cce015  e86647d8ff  CALL 0x00a52780
00cce01a  8a442413  MOV AL,byte ptr [ESP + 0x13]
00cce01e  5f  POP EDI
00cce01f  5e  POP ESI
00cce020  5b  POP EBX
00cce021  8be5  MOV ESP,EBP
00cce023  5d  POP EBP
00cce024  c3  RET
