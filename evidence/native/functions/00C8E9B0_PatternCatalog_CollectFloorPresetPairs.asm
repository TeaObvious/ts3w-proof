# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C8E9B0_PatternCatalog_CollectFloorPresetPairs.c
Owned ranges: [[00c8e9b0, 00c8ea69]]

00c8e9b0  55  PUSH EBP
00c8e9b1  8bec  MOV EBP,ESP
00c8e9b3  83e4f8  AND ESP,0xfffffff8
00c8e9b6  83ec14  SUB ESP,0x14
00c8e9b9  53  PUSH EBX
00c8e9ba  8b5944  MOV EBX,dword ptr [ECX + 0x44]
00c8e9bd  8b4948  MOV ECX,dword ptr [ECX + 0x48]
00c8e9c0  3bd9  CMP EBX,ECX
00c8e9c2  56  PUSH ESI
00c8e9c3  57  PUSH EDI
00c8e9c4  895c240c  MOV dword ptr [ESP + 0xc],EBX
00c8e9c8  894c2414  MOV dword ptr [ESP + 0x14],ECX
00c8e9cc  0f848f000000  JZ 0x00c8ea61
00c8e9d2  8b7310  MOV ESI,dword ptr [EBX + 0x10]
00c8e9d5  85f6  TEST ESI,ESI
00c8e9d7  7477  JZ 0x00c8ea50
00c8e9d9  8bce  MOV ECX,ESI
00c8e9db  e8d0b60000  CALL 0x00c9a0b0
00c8e9e0  33ff  XOR EDI,EDI
00c8e9e2  85c0  TEST EAX,EAX
00c8e9e4  89442410  MOV dword ptr [ESP + 0x10],EAX
00c8e9e8  7666  JBE 0x00c8ea50
00c8e9ea  8d9b00000000  LEA EBX,[EBX]
00c8e9f0  57  PUSH EDI
00c8e9f1  8bce  MOV ECX,ESI
00c8e9f3  e8d8b10000  CALL 0x00c99bd0
00c8e9f8  85c0  TEST EAX,EAX
00c8e9fa  7505  JNZ 0x00c8ea01
00c8e9fc  b802000000  MOV EAX,0x2
00c8ea01  854508  TEST dword ptr [EBP + 0x8],EAX
00c8ea04  743d  JZ 0x00c8ea43
00c8ea06  57  PUSH EDI
00c8ea07  8bce  MOV ECX,ESI
00c8ea09  8974241c  MOV dword ptr [ESP + 0x1c],ESI
00c8ea0d  e87eb40000  CALL 0x00c99e90
00c8ea12  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00c8ea16  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00c8ea19  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00c8ea1c  3b4808  CMP ECX,dword ptr [EAX + 0x8]
00c8ea1f  7315  JNC 0x00c8ea36
00c8ea21  85c9  TEST ECX,ECX
00c8ea23  8d5108  LEA EDX,[ECX + 0x8]
00c8ea26  895004  MOV dword ptr [EAX + 0x4],EDX
00c8ea29  7418  JZ 0x00c8ea43
00c8ea2b  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00c8ea2f  8931  MOV dword ptr [ECX],ESI
00c8ea31  894104  MOV dword ptr [ECX + 0x4],EAX
00c8ea34  eb0d  JMP 0x00c8ea43
00c8ea36  8d542418  LEA EDX,[ESP + 0x18]
00c8ea3a  52  PUSH EDX
00c8ea3b  51  PUSH ECX
00c8ea3c  8bc8  MOV ECX,EAX
00c8ea3e  e8fdda77ff  CALL 0x0040c540
00c8ea43  83c701  ADD EDI,0x1
00c8ea46  3b7c2410  CMP EDI,dword ptr [ESP + 0x10]
00c8ea4a  72a4  JC 0x00c8e9f0
00c8ea4c  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
00c8ea50  83c318  ADD EBX,0x18
00c8ea53  3b5c2414  CMP EBX,dword ptr [ESP + 0x14]
00c8ea57  895c240c  MOV dword ptr [ESP + 0xc],EBX
00c8ea5b  0f8571ffffff  JNZ 0x00c8e9d2
00c8ea61  5f  POP EDI
00c8ea62  5e  POP ESI
00c8ea63  5b  POP EBX
00c8ea64  8be5  MOV ESP,EBP
00c8ea66  5d  POP EBP
00c8ea67  c20800  RET 0x8
