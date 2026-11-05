# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00511CA0_NativePropertyContext_FindDescriptor.c
Owned ranges: [[00511ca0, 00511d3d]]

00511ca0  83ec0c  SUB ESP,0xc
00511ca3  53  PUSH EBX
00511ca4  55  PUSH EBP
00511ca5  56  PUSH ESI
00511ca6  8bd9  MOV EBX,ECX
00511ca8  8b03  MOV EAX,dword ptr [EBX]
00511caa  8b700c  MOV ESI,dword ptr [EAX + 0xc]
00511cad  57  PUSH EDI
00511cae  8b7810  MOV EDI,dword ptr [EAX + 0x10]
00511cb1  85ff  TEST EDI,EDI
00511cb3  765d  JBE 0x00511d12
00511cb5  8b6c2428  MOV EBP,dword ptr [ESP + 0x28]
00511cb9  8da42400000000  LEA ESP,[ESP]
00511cc0  668b460c  MOV AX,word ptr [ESI + 0xc]
00511cc4  6625ff0f  AND AX,0xfff
00511cc8  663d0100  CMP AX,0x1
00511ccc  7531  JNZ 0x00511cff
00511cce  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00511cd1  8b4108  MOV EAX,dword ptr [ECX + 0x8]
00511cd4  55  PUSH EBP
00511cd5  56  PUSH ESI
00511cd6  8d542418  LEA EDX,[ESP + 0x18]
00511cda  53  PUSH EBX
00511cdb  52  PUSH EDX
00511cdc  ffd0  CALL EAX
00511cde  83c410  ADD ESP,0x10
00511ce1  84c0  TEST AL,AL
00511ce3  7423  JZ 0x00511d08
00511ce5  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
00511ce9  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00511ced  55  PUSH EBP
00511cee  51  PUSH ECX
00511cef  52  PUSH EDX
00511cf0  8d4c241c  LEA ECX,[ESP + 0x1c]
00511cf4  e8a7ffffff  CALL 0x00511ca0
00511cf9  85c0  TEST EAX,EAX
00511cfb  7517  JNZ 0x00511d14
00511cfd  eb09  JMP 0x00511d08
00511cff  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00511d03  394608  CMP dword ptr [ESI + 0x8],EAX
00511d06  7416  JZ 0x00511d1e
00511d08  83ef01  SUB EDI,0x1
00511d0b  83c614  ADD ESI,0x14
00511d0e  85ff  TEST EDI,EDI
00511d10  77ae  JA 0x00511cc0
00511d12  33c0  XOR EAX,EAX
00511d14  5f  POP EDI
00511d15  5e  POP ESI
00511d16  5d  POP EBP
00511d17  5b  POP EBX
00511d18  83c40c  ADD ESP,0xc
00511d1b  c20c00  RET 0xc
00511d1e  8b0b  MOV ECX,dword ptr [EBX]
00511d20  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00511d24  8908  MOV dword ptr [EAX],ECX
00511d26  8b5308  MOV EDX,dword ptr [EBX + 0x8]
00511d29  895008  MOV dword ptr [EAX + 0x8],EDX
00511d2c  8b4b04  MOV ECX,dword ptr [EBX + 0x4]
00511d2f  5f  POP EDI
00511d30  894804  MOV dword ptr [EAX + 0x4],ECX
00511d33  8bc6  MOV EAX,ESI
00511d35  5e  POP ESI
00511d36  5d  POP EBP
00511d37  5b  POP EBX
00511d38  83c40c  ADD ESP,0xc
00511d3b  c20c00  RET 0xc
