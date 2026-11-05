# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: ScriptCore.World::World_StaysAfterEvictImpl
Paired actual annotated Ghidra pseudocode: 00786010_ScriptCore_World_World_StaysAfterEvictImpl.c
Owned ranges: [[00786010, 0078604f]]
Envelope bytes=64

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
00786010  e85b151b00  CALL 0x00937570
00786015  85c0  TEST EAX,EAX
00786017  7434  JZ 0x0078604d
00786019  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
0078601d  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00786021  51  PUSH ECX
00786022  52  PUSH EDX
00786023  8bc8  MOV ECX,EAX
00786025  e8561f1b00  CALL 0x00937f80
0078602a  85c0  TEST EAX,EAX
0078602c  741f  JZ 0x0078604d
0078602e  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00786034  83c018  ADD EAX,0x18
00786037  50  PUSH EAX
00786038  e8738b5000  CALL 0x00c8ebb0
0078603d  85c0  TEST EAX,EAX
0078603f  740c  JZ 0x0078604d
00786041  8b80a8000000  MOV EAX,dword ptr [EAX + 0xa8]
00786047  d1e8  SHR EAX,0x1
00786049  83e001  AND EAX,0x1
0078604c  c3  RET
0078604d  32c0  XOR AL,AL
0078604f  c3  RET
Owned instructions=23 owned bytes=64 nonowned bytes=0
