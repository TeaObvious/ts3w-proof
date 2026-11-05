# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: Object_IsSpiralStaircaseWithoutFloorCutout
Paired actual annotated Ghidra pseudocode: 00B009F0_Object_IsSpiralStaircaseWithoutFloorCutout.c
Owned ranges: [[00b009f0, 00b00a2f]]
Envelope bytes=64

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
00b009f0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00b009f4  85c0  TEST EAX,EAX
00b009f6  7435  JZ 0x00b00a2d
00b009f8  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00b009fe  83c018  ADD EAX,0x18
00b00a01  50  PUSH EAX
00b00a02  e8a9e11800  CALL 0x00c8ebb0
00b00a07  85c0  TEST EAX,EAX
00b00a09  7422  JZ 0x00b00a2d
00b00a0b  f780d000000000000200  TEST dword ptr [EAX + 0xd0],0x20000
00b00a15  7413  JZ 0x00b00a2a
00b00a17  8b8098000000  MOV EAX,dword ptr [EAX + 0x98]
00b00a1d  c1e819  SHR EAX,0x19
00b00a20  a801  TEST AL,0x1
00b00a22  7506  JNZ 0x00b00a2a
00b00a24  b801000000  MOV EAX,0x1
00b00a29  c3  RET
00b00a2a  33c0  XOR EAX,EAX
00b00a2c  c3  RET
00b00a2d  32c0  XOR AL,AL
00b00a2f  c3  RET
Owned instructions=21 owned bytes=64 nonowned bytes=0
