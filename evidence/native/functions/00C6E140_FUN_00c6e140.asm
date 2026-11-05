# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 00C6E140_FUN_00c6e140.c
Body [[00c6e140, 00c6e149]]; envelope exclusive end 00c6e14a

GHIDRA LISTING (original bytes)
00c6e140  8b4118  MOV EAX,dword ptr [ECX + 0x18]
00c6e143  2b4114  SUB EAX,dword ptr [ECX + 0x14]
00c6e146  c1f802  SAR EAX,0x2
00c6e149  c3  RET
