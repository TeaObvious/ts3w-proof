# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 00C6E150_FUN_00c6e150.c
Body [[00c6e150, 00c6e16e]]; envelope exclusive end 00c6e16f

GHIDRA LISTING (original bytes)
00c6e150  8b5118  MOV EDX,dword ptr [ECX + 0x18]
00c6e153  2b5114  SUB EDX,dword ptr [ECX + 0x14]
00c6e156  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c6e15a  c1fa02  SAR EDX,0x2
00c6e15d  3bc2  CMP EAX,EDX
00c6e15f  7309  JNC 0x00c6e16a
00c6e161  8b4914  MOV ECX,dword ptr [ECX + 0x14]
00c6e164  8b0481  MOV EAX,dword ptr [ECX + EAX*0x4]
00c6e167  c20400  RET 0x4
00c6e16a  33c0  XOR EAX,EAX
00c6e16c  c20400  RET 0x4
