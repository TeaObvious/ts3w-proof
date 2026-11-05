# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 103db090..103db0b7; CAW_DbReferenceRelease
103db090: 8d4104  LEA EAX,[ECX + 0x4]
103db093: 56  PUSH ESI
103db094: 8bd0  MOV EDX,EAX
103db096: 83ceff  OR ESI,0xffffffff
103db099: f00fc132  XADD.LOCK dword ptr [EDX],ESI
103db09d: 4e  DEC ESI
103db09e: 7514  JNZ 0x103db0b4
103db0a0: ba01000000  MOV EDX,0x1
103db0a5: 8710  XCHG dword ptr [EAX],EDX
103db0a7: 83c1fc  ADD ECX,-0x4
103db0aa: 7408  JZ 0x103db0b4
103db0ac: 8b01  MOV EAX,dword ptr [ECX]
103db0ae: 8b10  MOV EDX,dword ptr [EAX]
103db0b0: 6a01  PUSH 0x1
103db0b2: ffd2  CALL EDX
103db0b4: 8bc6  MOV EAX,ESI
103db0b6: 5e  POP ESI
103db0b7: c3  RET
