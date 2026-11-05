# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101f5000..101f5037; CAW_RebuildTerrainOptimizerAndBudgets
101f5000: 56  PUSH ESI
101f5001: 8bf1  MOV ESI,ECX
101f5003: 8b4608  MOV EAX,dword ptr [ESI + 0x8]
101f5006: 57  PUSH EDI
101f5007: 8b7808  MOV EDI,dword ptr [EAX + 0x8]
101f500a: 8bcf  MOV ECX,EDI
101f500c: e89f38e7ff  CALL 0x100688b0
101f5011: 8b4e08  MOV ECX,dword ptr [ESI + 0x8]
101f5014: 8b7f14  MOV EDI,dword ptr [EDI + 0x14]
101f5017: d94124  FLD float ptr [ECX + 0x24]
101f501a: 51  PUSH ECX
101f501b: d91c24  FSTP float ptr [ESP]
101f501e: 8d57ff  LEA EDX,[EDI + -0x1]
101f5021: 52  PUSH EDX
101f5022: 8d0c3f  LEA ECX,[EDI + EDI*0x1]
101f5025: 51  PUSH ECX
101f5026: 8b4e68  MOV ECX,dword ptr [ESI + 0x68]
101f5029: 50  PUSH EAX
101f502a: e8e18f0600  CALL 0x1025e010
101f502f: 5f  POP EDI
101f5030: 8bce  MOV ECX,ESI
101f5032: 5e  POP ESI
101f5033: e918f3ffff  JMP 0x101f4350
