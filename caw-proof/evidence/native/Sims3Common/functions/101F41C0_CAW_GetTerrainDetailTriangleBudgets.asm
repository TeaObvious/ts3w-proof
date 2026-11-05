# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101f41c0..101f41e9; CAW_GetTerrainDetailTriangleBudgets
101f41c0: 8b442404  MOV EAX,dword ptr [ESP + 0x4]
101f41c4: 83f802  CMP EAX,0x2
101f41c7: 7205  JC 0x101f41ce
101f41c9: 32c0  XOR AL,AL
101f41cb: c20800  RET 0x8
101f41ce: 8d0440  LEA EAX,[EAX + EAX*0x2]
101f41d1: 8b54814c  MOV EDX,dword ptr [ECX + EAX*0x4 + 0x4c]
101f41d5: 8d44814c  LEA EAX,[ECX + EAX*0x4 + 0x4c]
101f41d9: 8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
101f41dd: 8911  MOV dword ptr [ECX],EDX
101f41df: 8b4004  MOV EAX,dword ptr [EAX + 0x4]
101f41e2: 894104  MOV dword ptr [ECX + 0x4],EAX
101f41e5: b001  MOV AL,0x1
101f41e7: c20800  RET 0x8
