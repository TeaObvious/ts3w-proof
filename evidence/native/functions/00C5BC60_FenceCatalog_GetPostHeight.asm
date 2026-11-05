# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C5BC60_FenceCatalog_GetPostHeight.c
Owned ranges: [[00c5bc60, 00c5bc9d]]

00c5bc60  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c5bc64  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00c5bc6a  6a01  PUSH 0x1
00c5bc6c  50  PUSH EAX
00c5bc6d  e8ee2a0300  CALL 0x00c8e760
00c5bc72  8bc8  MOV ECX,EAX
00c5bc74  85c9  TEST ECX,ECX
00c5bc76  7503  JNZ 0x00c5bc7b
00c5bc78  d9ee  FLDZ
00c5bc7a  c3  RET
00c5bc7b  83b9e000000000  CMP dword ptr [ECX + 0xe0],0x0
00c5bc82  7415  JZ 0x00c5bc99
00c5bc84  80b95101000000  CMP byte ptr [ECX + 0x151],0x0
00c5bc8b  740c  JZ 0x00c5bc99
00c5bc8d  e8ce880300  CALL 0x00c94560
00c5bc92  d805a8930701  FADD float ptr [0x010793a8]
00c5bc98  c3  RET
00c5bc99  e9c2880300  JMP 0x00c94560
