# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C9AEA0_TerrainPaintProduct_ReadCatalog.c
Owned ranges: [[00c9aea0, 00c9af8d]]

00c9aea0  83ec1c  SUB ESP,0x1c
00c9aea3  53  PUSH EBX
00c9aea4  56  PUSH ESI
00c9aea5  57  PUSH EDI
00c9aea6  8b7c242c  MOV EDI,dword ptr [ESP + 0x2c]
00c9aeaa  6a01  PUSH 0x1
00c9aeac  8bf1  MOV ESI,ECX
00c9aeae  57  PUSH EDI
00c9aeaf  8d4c2418  LEA ECX,[ESP + 0x18]
00c9aeb3  e828e5b3ff  CALL 0x007d93e0
00c9aeb8  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00c9aebc  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00c9aec0  50  PUSH EAX
00c9aec1  8d4c2430  LEA ECX,[ESP + 0x30]
00c9aec5  51  PUSH ECX
00c9aec6  52  PUSH EDX
00c9aec7  e8b42a84ff  CALL 0x004dd980
00c9aecc  83c40c  ADD ESP,0xc
00c9aecf  8d4c2410  LEA ECX,[ESP + 0x10]
00c9aed3  50  PUSH EAX
00c9aed4  e817cbb3ff  CALL 0x007d79f0
00c9aed9  57  PUSH EDI
00c9aeda  8bce  MOV ECX,ESI
00c9aedc  e88f85ffff  CALL 0x00c93470
00c9aee1  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00c9aee5  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00c9aee9  50  PUSH EAX
00c9aeea  8d8ec0000000  LEA ECX,[ESI + 0xc0]
00c9aef0  51  PUSH ECX
00c9aef1  52  PUSH EDX
00c9aef2  e869c8b3ff  CALL 0x007d7760
00c9aef7  83c40c  ADD ESP,0xc
00c9aefa  8d4c2410  LEA ECX,[ESP + 0x10]
00c9aefe  50  PUSH EAX
00c9aeff  e8eccab3ff  CALL 0x007d79f0
00c9af04  33ff  XOR EDI,EDI
00c9af06  837c242c03  CMP dword ptr [ESP + 0x2c],0x3
00c9af0b  722d  JC 0x00c9af3a
00c9af0d  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00c9af11  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00c9af15  50  PUSH EAX
00c9af16  8d4c2410  LEA ECX,[ESP + 0x10]
00c9af1a  51  PUSH ECX
00c9af1b  52  PUSH EDX
00c9af1c  e85f2a84ff  CALL 0x004dd980
00c9af21  83c40c  ADD ESP,0xc
00c9af24  8d4c2410  LEA ECX,[ESP + 0x10]
00c9af28  50  PUSH EAX
00c9af29  e8c2cab3ff  CALL 0x007d79f0
00c9af2e  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c9af32  8986d0000000  MOV dword ptr [ESI + 0xd0],EAX
00c9af38  eb06  JMP 0x00c9af40
00c9af3a  89bed0000000  MOV dword ptr [ESI + 0xd0],EDI
00c9af40  837c242c04  CMP dword ptr [ESP + 0x2c],0x4
00c9af45  722f  JC 0x00c9af76
00c9af47  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00c9af4b  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00c9af4f  51  PUSH ECX
00c9af50  8d542410  LEA EDX,[ESP + 0x10]
00c9af54  52  PUSH EDX
00c9af55  50  PUSH EAX
00c9af56  897c2418  MOV dword ptr [ESP + 0x18],EDI
00c9af5a  e8212a84ff  CALL 0x004dd980
00c9af5f  83c40c  ADD ESP,0xc
00c9af62  8d4c2410  LEA ECX,[ESP + 0x10]
00c9af66  50  PUSH EAX
00c9af67  e884cab3ff  CALL 0x007d79f0
00c9af6c  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c9af70  898ed4000000  MOV dword ptr [ESI + 0xd4],ECX
00c9af76  8a5c2424  MOV BL,byte ptr [ESP + 0x24]
00c9af7a  8d4c2410  LEA ECX,[ESP + 0x10]
00c9af7e  e80dcab3ff  CALL 0x007d7990
00c9af83  5f  POP EDI
00c9af84  5e  POP ESI
00c9af85  8ac3  MOV AL,BL
00c9af87  5b  POP EBX
00c9af88  83c41c  ADD ESP,0x1c
00c9af8b  c20400  RET 0x4
