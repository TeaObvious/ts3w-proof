# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 007796A0_ScriptCore_UIManager_UIManager_ShutdownLayoutImpl.c
Owned ranges: [[007796a0, 007796d3]]

007796a0  e8ebfcfeff  CALL 0x00769390
007796a5  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
007796a9  8bd1  MOV EDX,ECX
007796ab  81e2000000ff  AND EDX,0xff000000
007796b1  81fa00000030  CMP EDX,0x30000000
007796b7  751a  JNZ 0x007796d3
007796b9  8b10  MOV EDX,dword ptr [EAX]
007796bb  51  PUSH ECX
007796bc  8bc8  MOV ECX,EAX
007796be  8b82cc000000  MOV EAX,dword ptr [EDX + 0xcc]
007796c4  ffd0  CALL EAX
007796c6  85c0  TEST EAX,EAX
007796c8  7409  JZ 0x007796d3
007796ca  8b10  MOV EDX,dword ptr [EAX]
007796cc  8bc8  MOV ECX,EAX
007796ce  8b4208  MOV EAX,dword ptr [EDX + 0x8]
007796d1  ffe0  JMP EAX
007796d3  c3  RET
