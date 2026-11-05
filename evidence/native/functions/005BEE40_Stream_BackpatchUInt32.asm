# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Stream_BackpatchUInt32
Paired actual annotated Ghidra pseudocode: 005BEE40_Stream_BackpatchUInt32.c
Owned ranges: [[005bee40, 005beea2]]
Envelope bytes=99

GHIDRA LISTING (original bytes; nonowned alignment explicit)
005bee40  56  PUSH ESI
005bee41  8bf1  MOV ESI,ECX
005bee43  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
005bee46  8b01  MOV EAX,dword ptr [ECX]
005bee48  8b5024  MOV EDX,dword ptr [EAX + 0x24]
005bee4b  57  PUSH EDI
005bee4c  6a00  PUSH 0x0
005bee4e  ffd2  CALL EDX
005bee50  8bf8  MOV EDI,EAX
005bee52  83ffff  CMP EDI,-0x1
005bee55  7443  JZ 0x005bee9a
005bee57  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
005bee5a  8b01  MOV EAX,dword ptr [ECX]
005bee5c  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
005bee60  8b4028  MOV EAX,dword ptr [EAX + 0x28]
005bee63  6a00  PUSH 0x0
005bee65  52  PUSH EDX
005bee66  ffd0  CALL EAX
005bee68  84c0  TEST AL,AL
005bee6a  742e  JZ 0x005bee9a
005bee6c  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
005bee6f  8b542410  MOV EDX,dword ptr [ESP + 0x10]
005bee73  8b4608  MOV EAX,dword ptr [ESI + 0x8]
005bee76  51  PUSH ECX
005bee77  52  PUSH EDX
005bee78  50  PUSH EAX
005bee79  e8f2f0f1ff  CALL 0x004ddf70
005bee7e  83c40c  ADD ESP,0xc
005bee81  8bce  MOV ECX,ESI
005bee83  50  PUSH EAX
005bee84  e8678b2100  CALL 0x007d79f0
005bee89  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
005bee8c  8b11  MOV EDX,dword ptr [ECX]
005bee8e  8b4228  MOV EAX,dword ptr [EDX + 0x28]
005bee91  6a00  PUSH 0x0
005bee93  57  PUSH EDI
005bee94  ffd0  CALL EAX
005bee96  84c0  TEST AL,AL
005bee98  7504  JNZ 0x005bee9e
005bee9a  c6461400  MOV byte ptr [ESI + 0x14],0x0
005bee9e  5f  POP EDI
005bee9f  5e  POP ESI
005beea0  c20800  RET 0x8
Owned instructions=43 owned bytes=99 gap/nonowned bytes=0
