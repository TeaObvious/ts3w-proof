# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 007E4010_Sims3CustomProxyControl_Create.c
Owned ranges: [[007e4010, 007e4047]]

007e4010  8b442408  MOV EAX,dword ptr [ESP + 0x8]
007e4014  50  PUSH EAX
007e4015  680cc90101  PUSH 0x101c90c
007e401a  6a10  PUSH 0x10
007e401c  68b0020000  PUSH 0x2b0
007e4021  e88a10d2ff  CALL 0x005050b0
007e4026  83c410  ADD ESP,0x10
007e4029  85c0  TEST EAX,EAX
007e402b  7416  JZ 0x007e4043
007e402d  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
007e4031  51  PUSH ECX
007e4032  8bc8  MOV ECX,EAX
007e4034  e807f4ffff  CALL 0x007e3440
007e4039  85c0  TEST EAX,EAX
007e403b  7406  JZ 0x007e4043
007e403d  83c004  ADD EAX,0x4
007e4040  c20800  RET 0x8
007e4043  33c0  XOR EAX,EAX
007e4045  c20800  RET 0x8
