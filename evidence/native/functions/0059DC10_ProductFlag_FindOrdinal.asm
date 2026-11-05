# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function ProductFlag_FindOrdinal Entry 0059dc10
OWNED_RANGE 0059dc10:0059dc34
0059dc10: 8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
0059dc14: 33c0  XOR EAX,EAX
0059dc16: 390cc5743e1501  CMP dword ptr [EAX*0x8 + 0x1153e74],ECX
0059dc1d: 740e  JZ 0x0059dc2d
0059dc1f: 83c001  ADD EAX,0x1
0059dc22: 83f815  CMP EAX,0x15
0059dc25: 72ef  JC 0x0059dc16
0059dc27: b801000000  MOV EAX,0x1
0059dc2c: c3  RET
0059dc2d: 8b04c5703e1501  MOV EAX,dword ptr [EAX*0x8 + 0x1153e70]
0059dc34: c3  RET
Total instructions: 11; owned bytes: 37
