# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint LotTerrain_SetPaintAlpha(void * this, int layerIndex, uint x, uint z, uint requestedAlpha)
Owned ranges: [[00aeeb10, 00aeec06]]

00aeeb10  53  PUSH EBX
00aeeb11  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
00aeeb15  55  PUSH EBP
00aeeb16  8b6c2410  MOV EBP,dword ptr [ESP + 0x10]
00aeeb1a  56  PUSH ESI
00aeeb1b  8bf1  MOV ESI,ECX
00aeeb1d  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00aeeb20  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00aeeb24  8b0c88  MOV ECX,dword ptr [EAX + ECX*0x4]
00aeeb27  8bd3  MOV EDX,EBX
00aeeb29  c1fa02  SAR EDX,0x2
00aeeb2c  8bc2  MOV EAX,EDX
00aeeb2e  0faf4108  IMUL EAX,dword ptr [ECX + 0x8]
00aeeb32  8bd5  MOV EDX,EBP
00aeeb34  c1fa02  SAR EDX,0x2
00aeeb37  03c2  ADD EAX,EDX
00aeeb39  8b5130  MOV EDX,dword ptr [ECX + 0x30]
00aeeb3c  57  PUSH EDI
00aeeb3d  0fb73c42  MOVZX EDI,word ptr [EDX + EAX*0x2]
00aeeb41  8bd7  MOV EDX,EDI
00aeeb43  c1ea0f  SHR EDX,0xf
00aeeb46  f6c201  TEST DL,0x1
00aeeb49  7405  JZ 0x00aeeb50
00aeeb4b  8b5110  MOV EDX,dword ptr [ECX + 0x10]
00aeeb4e  eb16  JMP 0x00aeeb66
00aeeb50  0fb7c7  MOVZX EAX,DI
00aeeb53  8bd3  MOV EDX,EBX
00aeeb55  83e203  AND EDX,0x3
00aeeb58  8d0482  LEA EAX,[EDX + EAX*0x4]
00aeeb5b  8b5120  MOV EDX,dword ptr [ECX + 0x20]
00aeeb5e  8d1482  LEA EDX,[EDX + EAX*0x4]
00aeeb61  8bc5  MOV EAX,EBP
00aeeb63  83e003  AND EAX,0x3
00aeeb66  03d0  ADD EDX,EAX
00aeeb68  8a12  MOV DL,byte ptr [EDX]
00aeeb6a  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00aeeb6e  88542418  MOV byte ptr [ESP + 0x18],DL
00aeeb72  0fb6d2  MOVZX EDX,DL
00aeeb75  3bd0  CMP EDX,EAX
00aeeb77  0f8483000000  JZ 0x00aeec00
00aeeb7d  53  PUSH EBX
00aeeb7e  88442420  MOV byte ptr [ESP + 0x20],AL
00aeeb82  55  PUSH EBP
00aeeb83  8d442424  LEA EAX,[ESP + 0x24]
00aeeb87  50  PUSH EAX
00aeeb88  e883f7ffff  CALL 0x00aee310
00aeeb8d  807c241800  CMP byte ptr [ESP + 0x18],0x0
00aeeb92  751b  JNZ 0x00aeebaf
00aeeb94  837c242000  CMP dword ptr [ESP + 0x20],0x0
00aeeb99  742d  JZ 0x00aeebc8
00aeeb9b  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00aeeb9f  8b5630  MOV EDX,dword ptr [ESI + 0x30]
00aeeba2  8d0c40  LEA ECX,[EAX + EAX*0x2]
00aeeba5  8344ca1001  ADD dword ptr [EDX + ECX*0x8 + 0x10],0x1
00aeebaa  8d04ca  LEA EAX,[EDX + ECX*0x8]
00aeebad  eb19  JMP 0x00aeebc8
00aeebaf  837c242000  CMP dword ptr [ESP + 0x20],0x0
00aeebb4  7512  JNZ 0x00aeebc8
00aeebb6  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00aeebba  8b4e30  MOV ECX,dword ptr [ESI + 0x30]
00aeebbd  8d0440  LEA EAX,[EAX + EAX*0x2]
00aeebc0  8344c110ff  ADD dword ptr [ECX + EAX*0x8 + 0x10],-0x1
00aeebc5  8d04c1  LEA EAX,[ECX + EAX*0x8]
00aeebc8  39aeb4000000  CMP dword ptr [ESI + 0xb4],EBP
00aeebce  7e06  JLE 0x00aeebd6
00aeebd0  89aeb4000000  MOV dword ptr [ESI + 0xb4],EBP
00aeebd6  39aebc000000  CMP dword ptr [ESI + 0xbc],EBP
00aeebdc  7d06  JGE 0x00aeebe4
00aeebde  89aebc000000  MOV dword ptr [ESI + 0xbc],EBP
00aeebe4  399eb8000000  CMP dword ptr [ESI + 0xb8],EBX
00aeebea  7e06  JLE 0x00aeebf2
00aeebec  899eb8000000  MOV dword ptr [ESI + 0xb8],EBX
00aeebf2  399ec0000000  CMP dword ptr [ESI + 0xc0],EBX
00aeebf8  7d06  JGE 0x00aeec00
00aeebfa  899ec0000000  MOV dword ptr [ESI + 0xc0],EBX
00aeec00  5f  POP EDI
00aeec01  5e  POP ESI
00aeec02  5d  POP EBP
00aeec03  5b  POP EBX
00aeec04  c21000  RET 0x10
