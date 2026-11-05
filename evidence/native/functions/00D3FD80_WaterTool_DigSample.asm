# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool WaterTool_DigSample(void * this, BrushRasterSample * sample)
Owned ranges: [[00d3fd80, 00d3fe11]]

00d3fd80  51  PUSH ECX
00d3fd81  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00d3fd85  8a5008  MOV DL,byte ptr [EAX + 0x8]
00d3fd88  84d2  TEST DL,DL
00d3fd8a  88542408  MOV byte ptr [ESP + 0x8],DL
00d3fd8e  747c  JZ 0x00d3fe0c
00d3fd90  80b9e400000000  CMP byte ptr [ECX + 0xe4],0x0
00d3fd97  8d91e4000000  LEA EDX,[ECX + 0xe4]
00d3fd9d  891424  MOV dword ptr [ESP],EDX
00d3fda0  746a  JZ 0x00d3fe0c
00d3fda2  8b5134  MOV EDX,dword ptr [ECX + 0x34]
00d3fda5  8b9290020000  MOV EDX,dword ptr [EDX + 0x290]
00d3fdab  53  PUSH EBX
00d3fdac  8b5a18  MOV EBX,dword ptr [EDX + 0x18]
00d3fdaf  2b5a10  SUB EBX,dword ptr [EDX + 0x10]
00d3fdb2  55  PUSH EBP
00d3fdb3  8b6804  MOV EBP,dword ptr [EAX + 0x4]
00d3fdb6  56  PUSH ESI
00d3fdb7  8b7224  MOV ESI,dword ptr [EDX + 0x24]
00d3fdba  0faf5e04  IMUL EBX,dword ptr [ESI + 0x4]
00d3fdbe  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00d3fdc1  57  PUSH EDI
00d3fdc2  8b38  MOV EDI,dword ptr [EAX]
00d3fdc4  03df  ADD EBX,EDI
00d3fdc6  0faf5e08  IMUL EBX,dword ptr [ESI + 0x8]
00d3fdca  8b704c  MOV ESI,dword ptr [EAX + 0x4c]
00d3fdcd  81c10c010000  ADD ECX,0x10c
00d3fdd3  51  PUSH ECX
00d3fdd4  d94620  FLD float ptr [ESI + 0x20]
00d3fdd7  03dd  ADD EBX,EBP
00d3fdd9  d84850  FMUL float ptr [EAX + 0x50]
00d3fddc  0fb644241c  MOVZX EAX,byte ptr [ESP + 0x1c]
00d3fde1  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00d3fde5  8b8188000000  MOV EAX,dword ptr [ECX + 0x88]
00d3fdeb  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00d3fdef  da4c241c  FIMUL dword ptr [ESP + 0x1c]
00d3fdf3  51  PUSH ECX
00d3fdf4  51  PUSH ECX
00d3fdf5  8bc8  MOV ECX,EAX
00d3fdf7  d82c9a  FSUBR float ptr [EDX + EBX*0x4]
00d3fdfa  d91c24  FSTP float ptr [ESP]
00d3fdfd  55  PUSH EBP
00d3fdfe  57  PUSH EDI
00d3fdff  e8ac93ffff  CALL 0x00d391b0
00d3fe04  5f  POP EDI
00d3fe05  5e  POP ESI
00d3fe06  5d  POP EBP
00d3fe07  5b  POP EBX
00d3fe08  59  POP ECX
00d3fe09  c20400  RET 0x4
00d3fe0c  32c0  XOR AL,AL
00d3fe0e  59  POP ECX
00d3fe0f  c20400  RET 0x4
