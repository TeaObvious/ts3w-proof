# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 00ACAE80_FUN_00acae80.c
Body [[00acae80, 00acaeca]]; envelope exclusive end 00acaecb

GHIDRA LISTING (original bytes)
00acae80  56  PUSH ESI
00acae81  8bf1  MOV ESI,ECX
00acae83  83bee802000000  CMP dword ptr [ESI + 0x2e8],0x0
00acae8a  c6861404000001  MOV byte ptr [ESI + 0x414],0x1
00acae91  7528  JNZ 0x00acaebb
00acae93  8b8698020000  MOV EAX,dword ptr [ESI + 0x298]
00acae99  85c0  TEST EAX,EAX
00acae9b  740e  JZ 0x00acaeab
00acae9d  8b8820010000  MOV ECX,dword ptr [EAX + 0x120]
00acaea3  3b8824010000  CMP ECX,dword ptr [EAX + 0x124]
00acaea9  7510  JNZ 0x00acaebb
00acaeab  8bce  MOV ECX,ESI
00acaead  e84eb0ffff  CALL 0x00ac5f00
00acaeb2  c6861404000000  MOV byte ptr [ESI + 0x414],0x0
00acaeb9  5e  POP ESI
00acaeba  c3  RET
00acaebb  8bce  MOV ECX,ESI
00acaebd  e8ceedfeff  CALL 0x00ab9c90
00acaec2  c6861404000000  MOV byte ptr [ESI + 0x414],0x0
00acaec9  5e  POP ESI
00acaeca  c3  RET
