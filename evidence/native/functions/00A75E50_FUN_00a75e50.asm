# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 00A75E50_FUN_00a75e50.c
Body [[00a75e50, 00a75ec2]]; envelope exclusive end 00a75ec3

GHIDRA LISTING (original bytes)
00a75e50  55  PUSH EBP
00a75e51  8bec  MOV EBP,ESP
00a75e53  83e4f8  AND ESP,0xfffffff8
00a75e56  83ec08  SUB ESP,0x8
00a75e59  d9ee  FLDZ
00a75e5b  53  PUSH EBX
00a75e5c  55  PUSH EBP
00a75e5d  dd542408  FST double ptr [ESP + 0x8]
00a75e61  56  PUSH ESI
00a75e62  8bd9  MOV EBX,ECX
00a75e64  57  PUSH EDI
00a75e65  8b7b08  MOV EDI,dword ptr [EBX + 0x8]
00a75e68  8b37  MOV ESI,dword ptr [EDI]
00a75e6a  85f6  TEST ESI,ESI
00a75e6c  7511  JNZ 0x00a75e7f
00a75e6e  83c704  ADD EDI,0x4
00a75e71  3937  CMP dword ptr [EDI],ESI
00a75e73  7508  JNZ 0x00a75e7d
00a75e75  83c704  ADD EDI,0x4
00a75e78  833f00  CMP dword ptr [EDI],0x0
00a75e7b  74f8  JZ 0x00a75e75
00a75e7d  8b37  MOV ESI,dword ptr [EDI]
00a75e7f  8b430c  MOV EAX,dword ptr [EBX + 0xc]
00a75e82  8b4b08  MOV ECX,dword ptr [EBX + 0x8]
00a75e85  8b2c81  MOV EBP,dword ptr [ECX + EAX*0x4]
00a75e88  3bf5  CMP ESI,EBP
00a75e8a  742a  JZ 0x00a75eb6
00a75e8c  8d5604  LEA EDX,[ESI + 0x4]
00a75e8f  ddd8  FSTP ST0
00a75e91  52  PUSH EDX
00a75e92  8bcb  MOV ECX,EBX
00a75e94  e8b7fdffff  CALL 0x00a75c50
00a75e99  dc442410  FADD double ptr [ESP + 0x10]
00a75e9d  8b7614  MOV ESI,dword ptr [ESI + 0x14]
00a75ea0  85f6  TEST ESI,ESI
00a75ea2  dd542410  FST double ptr [ESP + 0x10]
00a75ea6  750a  JNZ 0x00a75eb2
00a75ea8  8b7704  MOV ESI,dword ptr [EDI + 0x4]
00a75eab  83c704  ADD EDI,0x4
00a75eae  85f6  TEST ESI,ESI
00a75eb0  74f6  JZ 0x00a75ea8
00a75eb2  3bf5  CMP ESI,EBP
00a75eb4  75d6  JNZ 0x00a75e8c
00a75eb6  e865975000  CALL 0x00f7f620
00a75ebb  5f  POP EDI
00a75ebc  5e  POP ESI
00a75ebd  5d  POP EBP
00a75ebe  5b  POP EBX
00a75ebf  8be5  MOV ESP,EBP
00a75ec1  5d  POP EBP
00a75ec2  c3  RET
