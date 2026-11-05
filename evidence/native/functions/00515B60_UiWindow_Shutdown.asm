# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00515B60_UiWindow_Shutdown.c
Owned ranges: [[00515b60, 00515b98] [00515ba0, 00515c1e]]

00515b60  56  PUSH ESI
00515b61  8bf1  MOV ESI,ECX
00515b63  57  PUSH EDI
00515b64  8dbe18020000  LEA EDI,[ESI + 0x218]
00515b6a  393f  CMP dword ptr [EDI],EDI
00515b6c  7413  JZ 0x00515b81
00515b6e  8bff  MOV EDI,EDI
00515b70  8b07  MOV EAX,dword ptr [EDI]
00515b72  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00515b75  51  PUSH ECX
00515b76  8bce  MOV ECX,ESI
00515b78  e833fdffff  CALL 0x005158b0
00515b7d  393f  CMP dword ptr [EDI],EDI
00515b7f  75ef  JNZ 0x00515b70
00515b81  8bce  MOV ECX,ESI
00515b83  e878fbffff  CALL 0x00515700
00515b88  8dbe10020000  LEA EDI,[ESI + 0x210]
00515b8e  397f04  CMP dword ptr [EDI + 0x4],EDI
00515b91  7436  JZ 0x00515bc9
00515b93  53  PUSH EBX
00515b94  8d5e04  LEA EBX,[ESI + 0x4]
00515b97  eb07  JMP 0x00515ba0
00515b99  8d  ; non-owned original alignment byte
00515b9a  a4  ; non-owned original alignment byte
00515b9b  24  ; non-owned original alignment byte
00515b9c  00  ; non-owned original alignment byte
00515b9d  00  ; non-owned original alignment byte
00515b9e  00  ; non-owned original alignment byte
00515b9f  00  ; non-owned original alignment byte
00515ba0  8b8614020000  MOV EAX,dword ptr [ESI + 0x214]
00515ba6  85c0  TEST EAX,EAX
00515ba8  740a  JZ 0x00515bb4
00515baa  83c0f8  ADD EAX,-0x8
00515bad  7405  JZ 0x00515bb4
00515baf  83c004  ADD EAX,0x4
00515bb2  eb02  JMP 0x00515bb6
00515bb4  33c0  XOR EAX,EAX
00515bb6  8b13  MOV EDX,dword ptr [EBX]
00515bb8  50  PUSH EAX
00515bb9  8b82e4000000  MOV EAX,dword ptr [EDX + 0xe4]
00515bbf  8bcb  MOV ECX,EBX
00515bc1  ffd0  CALL EAX
00515bc3  397f04  CMP dword ptr [EDI + 0x4],EDI
00515bc6  75d8  JNZ 0x00515ba0
00515bc8  5b  POP EBX
00515bc9  8b8e04020000  MOV ECX,dword ptr [ESI + 0x204]
00515bcf  85c9  TEST ECX,ECX
00515bd1  7411  JZ 0x00515be4
00515bd3  c7860402000000000000  MOV dword ptr [ESI + 0x204],0x0
00515bdd  8b11  MOV EDX,dword ptr [ECX]
00515bdf  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00515be2  ffd0  CALL EAX
00515be4  8b8e0c020000  MOV ECX,dword ptr [ESI + 0x20c]
00515bea  85c9  TEST ECX,ECX
00515bec  7411  JZ 0x00515bff
00515bee  c7860c02000000000000  MOV dword ptr [ESI + 0x20c],0x0
00515bf8  8b11  MOV EDX,dword ptr [ECX]
00515bfa  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00515bfd  ffd0  CALL EAX
00515bff  8b8e08020000  MOV ECX,dword ptr [ESI + 0x208]
00515c05  85c9  TEST ECX,ECX
00515c07  7411  JZ 0x00515c1a
00515c09  c7860802000000000000  MOV dword ptr [ESI + 0x208],0x0
00515c13  8b11  MOV EDX,dword ptr [ECX]
00515c15  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00515c18  ffd0  CALL EAX
00515c1a  5f  POP EDI
00515c1b  b001  MOV AL,0x1
00515c1d  5e  POP ESI
00515c1e  c3  RET
