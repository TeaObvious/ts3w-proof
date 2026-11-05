# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 105cc150..105cc1ef; CAW_DatabaseOpenFirstResourceOfType
105cc150: 83ec18  SUB ESP,0x18
105cc153: 8b442420  MOV EAX,dword ptr [ESP + 0x20]
105cc157: 56  PUSH ESI
105cc158: 8b742420  MOV ESI,dword ptr [ESP + 0x20]
105cc15c: 8b16  MOV EDX,dword ptr [ESI]
105cc15e: 8b5230  MOV EDX,dword ptr [EDX + 0x30]
105cc161: 89442408  MOV dword ptr [ESP + 0x8],EAX
105cc165: 8d442404  LEA EAX,[ESP + 0x4]
105cc169: 50  PUSH EAX
105cc16a: 8d4c2410  LEA ECX,[ESP + 0x10]
105cc16e: 51  PUSH ECX
105cc16f: 8bce  MOV ECX,ESI
105cc171: c744240c245aab10  MOV dword ptr [ESP + 0xc],0x10ab5a24
105cc179: c744241400000000  MOV dword ptr [ESP + 0x14],0x0
105cc181: c744241800000000  MOV dword ptr [ESP + 0x18],0x0
105cc189: c744241c00000000  MOV dword ptr [ESP + 0x1c],0x0
105cc191: c7442420c8b2b210  MOV dword ptr [ESP + 0x20],0x10b2b2c8
105cc199: ffd2  CALL EDX
105cc19b: 85c0  TEST EAX,EAX
105cc19d: 7639  JBE 0x105cc1d8
105cc19f: 53  PUSH EBX
105cc1a0: e81b58f5ff  CALL 0x105219c0
105cc1a5: 8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
105cc1a9: 8b10  MOV EDX,dword ptr [EAX]
105cc1ab: 8b5204  MOV EDX,dword ptr [EDX + 0x4]
105cc1ae: 6a06  PUSH 0x6
105cc1b0: 6a01  PUSH 0x1
105cc1b2: 56  PUSH ESI
105cc1b3: 51  PUSH ECX
105cc1b4: 8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
105cc1b8: 51  PUSH ECX
105cc1b9: 8bc8  MOV ECX,EAX
105cc1bb: ffd2  CALL EDX
105cc1bd: 8ad8  MOV BL,AL
105cc1bf: 8b442410  MOV EAX,dword ptr [ESP + 0x10]
105cc1c3: 85c0  TEST EAX,EAX
105cc1c5: 7409  JZ 0x105cc1d0
105cc1c7: 50  PUSH EAX
105cc1c8: e8c3cc3400  CALL 0x10918e90
105cc1cd: 83c404  ADD ESP,0x4
105cc1d0: 8ac3  MOV AL,BL
105cc1d2: 5b  POP EBX
105cc1d3: 5e  POP ESI
105cc1d4: 83c418  ADD ESP,0x18
105cc1d7: c3  RET
105cc1d8: 8b44240c  MOV EAX,dword ptr [ESP + 0xc]
105cc1dc: 85c0  TEST EAX,EAX
105cc1de: 7409  JZ 0x105cc1e9
105cc1e0: 50  PUSH EAX
105cc1e1: e8aacc3400  CALL 0x10918e90
105cc1e6: 83c404  ADD ESP,0x4
105cc1e9: 32c0  XOR AL,AL
105cc1eb: 5e  POP ESI
105cc1ec: 83c418  ADD ESP,0x18
105cc1ef: c3  RET
