# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101f4240..101f4271; CAW_RebuildTerrainOptimizerFromRaster
101f4240: 56  PUSH ESI
101f4241: 8bf1  MOV ESI,ECX
101f4243: 8b4608  MOV EAX,dword ptr [ESI + 0x8]
101f4246: 57  PUSH EDI
101f4247: 8b7808  MOV EDI,dword ptr [EAX + 0x8]
101f424a: 8bcf  MOV ECX,EDI
101f424c: e85f46e7ff  CALL 0x100688b0
101f4251: 8b4e08  MOV ECX,dword ptr [ESI + 0x8]
101f4254: 8b7f14  MOV EDI,dword ptr [EDI + 0x14]
101f4257: d94124  FLD float ptr [ECX + 0x24]
101f425a: 51  PUSH ECX
101f425b: d91c24  FSTP float ptr [ESP]
101f425e: 8d57ff  LEA EDX,[EDI + -0x1]
101f4261: 52  PUSH EDX
101f4262: 8d0c3f  LEA ECX,[EDI + EDI*0x1]
101f4265: 51  PUSH ECX
101f4266: 8b4e68  MOV ECX,dword ptr [ESI + 0x68]
101f4269: 50  PUSH EAX
101f426a: e8a19d0600  CALL 0x1025e010
101f426f: 5f  POP EDI
101f4270: 5e  POP ESI
101f4271: c3  RET
