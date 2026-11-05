# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101f41f0..101f4233; CAW_GetTerrainDetailThresholdAndCounts
101f41f0: 8b442404  MOV EAX,dword ptr [ESP + 0x4]
101f41f4: 83f802  CMP EAX,0x2
101f41f7: 7205  JC 0x101f41fe
101f41f9: 32c0  XOR AL,AL
101f41fb: c20800  RET 0x8
101f41fe: 8d444015  LEA EAX,[EAX + EAX*0x2 + 0x15]
101f4202: d90481  FLD float ptr [ECX + EAX*0x4]
101f4205: 8b442408  MOV EAX,dword ptr [ESP + 0x8]
101f4209: 33d2  XOR EDX,EDX
101f420b: d918  FSTP float ptr [EAX]
101f420d: 395168  CMP dword ptr [ECX + 0x68],EDX
101f4210: 7417  JZ 0x101f4229
101f4212: 8b5168  MOV EDX,dword ptr [ECX + 0x68]
101f4215: 8b5218  MOV EDX,dword ptr [EDX + 0x18]
101f4218: 895004  MOV dword ptr [EAX + 0x4],EDX
101f421b: 8b4968  MOV ECX,dword ptr [ECX + 0x68]
101f421e: 8b511c  MOV EDX,dword ptr [ECX + 0x1c]
101f4221: 895008  MOV dword ptr [EAX + 0x8],EDX
101f4224: b001  MOV AL,0x1
101f4226: c20800  RET 0x8
101f4229: 895004  MOV dword ptr [EAX + 0x4],EDX
101f422c: 895008  MOV dword ptr [EAX + 0x8],EDX
101f422f: b001  MOV AL,0x1
101f4231: c20800  RET 0x8
