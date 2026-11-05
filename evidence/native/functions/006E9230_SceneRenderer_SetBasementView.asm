# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined SceneRenderer_SetBasementView(void * this, char param_1, undefined4 param_2, undefined4 param_3)
Owned ranges: [[006e9230, 006e927a]]

006e9230  803d78c1150101  CMP byte ptr [0x0115c178],0x1
006e9237  56  PUSH ESI
006e9238  8bf1  MOV ESI,ECX
006e923a  743b  JZ 0x006e9277
006e923c  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
006e9240  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
006e9244  898618050000  MOV dword ptr [ESI + 0x518],EAX
006e924a  8b442408  MOV EAX,dword ptr [ESP + 0x8]
006e924e  388615050000  CMP byte ptr [ESI + 0x515],AL
006e9254  898e1c050000  MOV dword ptr [ESI + 0x51c],ECX
006e925a  741b  JZ 0x006e9277
006e925c  8b4e38  MOV ECX,dword ptr [ESI + 0x38]
006e925f  85c9  TEST ECX,ECX
006e9261  888615050000  MOV byte ptr [ESI + 0x515],AL
006e9267  7406  JZ 0x006e926f
006e9269  50  PUSH EAX
006e926a  e8515bffff  CALL 0x006dedc0
006e926f  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
006e9272  e829aaffff  CALL 0x006e3ca0
006e9277  5e  POP ESI
006e9278  c20c00  RET 0xc
