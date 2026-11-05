# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsDriver_SetRetainedEventQueue
Paired actual annotated Ghidra pseudocode: 007FFFA0_SacsDriver_SetRetainedEventQueue.c
Owned ranges: [[007fffa0, 007fffd7]]
Envelope bytes=56

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fffa0  53  PUSH EBX
007fffa1  56  PUSH ESI
007fffa2  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
007fffa6  8bd9  MOV EBX,ECX
007fffa8  57  PUSH EDI
007fffa9  8bbb2c010000  MOV EDI,dword ptr [EBX + 0x12c]
007fffaf  3bf7  CMP ESI,EDI
007fffb1  741f  JZ 0x007fffd2
007fffb3  85f6  TEST ESI,ESI
007fffb5  7408  JZ 0x007fffbf
007fffb7  8b06  MOV EAX,dword ptr [ESI]
007fffb9  8b10  MOV EDX,dword ptr [EAX]
007fffbb  8bce  MOV ECX,ESI
007fffbd  ffd2  CALL EDX
007fffbf  85ff  TEST EDI,EDI
007fffc1  89b32c010000  MOV dword ptr [EBX + 0x12c],ESI
007fffc7  7409  JZ 0x007fffd2
007fffc9  8b07  MOV EAX,dword ptr [EDI]
007fffcb  8b5004  MOV EDX,dword ptr [EAX + 0x4]
007fffce  8bcf  MOV ECX,EDI
007fffd0  ffd2  CALL EDX
007fffd2  5f  POP EDI
007fffd3  5e  POP ESI
007fffd4  5b  POP EBX
007fffd5  c20400  RET 0x4
Owned instructions=25 owned bytes=56 gap/nonowned bytes=0
