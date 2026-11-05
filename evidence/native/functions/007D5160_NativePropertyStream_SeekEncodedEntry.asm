# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: NativePropertyStream_SeekEncodedEntry
Paired actual annotated Ghidra pseudocode: 007D5160_NativePropertyStream_SeekEncodedEntry.c
Owned ranges: [[007d5160, 007d51b2]]
Envelope bytes=83

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d5160  83ec08  SUB ESP,0x8
007d5163  56  PUSH ESI
007d5164  57  PUSH EDI
007d5165  8bf1  MOV ESI,ECX
007d5167  8d442414  LEA EAX,[ESP + 0x14]
007d516b  50  PUSH EAX
007d516c  8d4c240c  LEA ECX,[ESP + 0xc]
007d5170  8d7e14  LEA EDI,[ESI + 0x14]
007d5173  51  PUSH ECX
007d5174  8bcf  MOV ECX,EDI
007d5176  e835682800  CALL 0x00a5b9b0
007d517b  8b5708  MOV EDX,dword ptr [EDI + 0x8]
007d517e  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
007d5181  8b442408  MOV EAX,dword ptr [ESP + 0x8]
007d5185  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
007d5188  741f  JZ 0x007d51a9
007d518a  8b5004  MOV EDX,dword ptr [EAX + 0x4]
007d518d  03560c  ADD EDX,dword ptr [ESI + 0xc]
007d5190  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007d5193  6a00  PUSH 0x0
007d5195  52  PUSH EDX
007d5196  e8f5320000  CALL 0x007d8490
007d519b  8b4608  MOV EAX,dword ptr [ESI + 0x8]
007d519e  8a4014  MOV AL,byte ptr [EAX + 0x14]
007d51a1  5f  POP EDI
007d51a2  5e  POP ESI
007d51a3  83c408  ADD ESP,0x8
007d51a6  c20400  RET 0x4
007d51a9  5f  POP EDI
007d51aa  32c0  XOR AL,AL
007d51ac  5e  POP ESI
007d51ad  83c408  ADD ESP,0x8
007d51b0  c20400  RET 0x4
Owned instructions=33 owned bytes=83 gap/nonowned bytes=0
