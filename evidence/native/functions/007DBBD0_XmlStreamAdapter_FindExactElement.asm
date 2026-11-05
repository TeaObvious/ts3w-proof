# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function XmlStreamAdapter_FindExactElement Entry 007dbbd0
OWNED_RANGE 007dbbd0:007dbc9c
OWNED_RANGE 007dbca0:007dbd36
NONOWNED_ALIGNMENT 007dbc9d..007dbc9f
007dbbd0: 83ec1c  SUB ESP,0x1c
007dbbd3: 53  PUSH EBX
007dbbd4: 55  PUSH EBP
007dbbd5: 8be9  MOV EBP,ECX
007dbbd7: 837d4801  CMP dword ptr [EBP + 0x48],0x1
007dbbdb: 56  PUSH ESI
007dbbdc: 57  PUSH EDI
007dbbdd: 896c2410  MOV dword ptr [ESP + 0x10],EBP
007dbbe1: 0f8507010000  JNZ 0x007dbcee
007dbbe7: 8b442430  MOV EAX,dword ptr [ESP + 0x30]
007dbbeb: 33ff  XOR EDI,EDI
007dbbed: 3bc7  CMP EAX,EDI
007dbbef: 0f84f9000000  JZ 0x007dbcee
007dbbf5: 50  PUSH EAX
007dbbf6: 8d4c2420  LEA ECX,[ESP + 0x20]
007dbbfa: 897c2420  MOV dword ptr [ESP + 0x20],EDI
007dbbfe: 897c2424  MOV dword ptr [ESP + 0x24],EDI
007dbc02: 897c2428  MOV dword ptr [ESP + 0x28],EDI
007dbc06: c744242c48b80101  MOV dword ptr [ESP + 0x2c],0x101b848
007dbc0e: e87df9c2ff  CALL 0x0040b590
007dbc13: 8b452c  MOV EAX,dword ptr [EBP + 0x2c]
007dbc16: 8b5528  MOV EDX,dword ptr [EBP + 0x28]
007dbc19: 8b3482  MOV ESI,dword ptr [EDX + EAX*0x4]
007dbc1c: 8d4d24  LEA ECX,[EBP + 0x24]
007dbc1f: 8d44241c  LEA EAX,[ESP + 0x1c]
007dbc23: 50  PUSH EAX
007dbc24: 8d542418  LEA EDX,[ESP + 0x18]
007dbc28: 52  PUSH EDX
007dbc29: e8d2f7ffff  CALL 0x007db400
007dbc2e: 3930  CMP dword ptr [EAX],ESI
007dbc30: 7408  JZ 0x007dbc3a
007dbc32: 57  PUSH EDI
007dbc33: 8bcd  MOV ECX,EBP
007dbc35: e8f6e5ffff  CALL 0x007da230
007dbc3a: 8bcd  MOV ECX,EBP
007dbc3c: e87ffdffff  CALL 0x007db9c0
007dbc41: 84c0  TEST AL,AL
007dbc43: 8b5c241c  MOV EBX,dword ptr [ESP + 0x1c]
007dbc47: 0f8486000000  JZ 0x007dbcd3
007dbc4d: 8b7c2420  MOV EDI,dword ptr [ESP + 0x20]
007dbc51: 2bfb  SUB EDI,EBX
007dbc53: d1ff  SAR EDI,0x1
007dbc55: 897c2414  MOV dword ptr [ESP + 0x14],EDI
007dbc59: 8da42400000000  LEA ESP,[ESP]
007dbc60: 8b4d08  MOV ECX,dword ptr [EBP + 0x8]
007dbc63: e8e852c9ff  CALL 0x00470f50
007dbc68: 66833800  CMP word ptr [EAX],0x0
007dbc6c: 8bc8  MOV ECX,EAX
007dbc6e: 7409  JZ 0x007dbc79
007dbc70: 83c102  ADD ECX,0x2
007dbc73: 66833900  CMP word ptr [ECX],0x0
007dbc77: 75f7  JNZ 0x007dbc70
007dbc79: 2bc8  SUB ECX,EAX
007dbc7b: d1f9  SAR ECX,0x1
007dbc7d: 03c9  ADD ECX,ECX
007dbc7f: d1f9  SAR ECX,0x1
007dbc81: 3bcf  CMP ECX,EDI
007dbc83: 894c2430  MOV dword ptr [ESP + 0x30],ECX
007dbc87: 8d542430  LEA EDX,[ESP + 0x30]
007dbc8b: 7c04  JL 0x007dbc91
007dbc8d: 8d542414  LEA EDX,[ESP + 0x14]
007dbc91: 8b32  MOV ESI,dword ptr [EDX]
007dbc93: 85f6  TEST ESI,ESI
007dbc95: 8bd0  MOV EDX,EAX
007dbc97: 8bc3  MOV EAX,EBX
007dbc99: 761c  JBE 0x007dbcb7
007dbc9b: eb03  JMP 0x007dbca0
007dbca0: 668b28  MOV BP,word ptr [EAX]
007dbca3: 663b2a  CMP BP,word ptr [EDX]
007dbca6: 7552  JNZ 0x007dbcfa
007dbca8: 83c002  ADD EAX,0x2
007dbcab: 83c202  ADD EDX,0x2
007dbcae: 83ee01  SUB ESI,0x1
007dbcb1: 75ed  JNZ 0x007dbca0
007dbcb3: 8b6c2410  MOV EBP,dword ptr [ESP + 0x10]
007dbcb7: 3bf9  CMP EDI,ECX
007dbcb9: 7c0b  JL 0x007dbcc6
007dbcbb: 33c0  XOR EAX,EAX
007dbcbd: 3bf9  CMP EDI,ECX
007dbcbf: 0f9fc0  SETG AL
007dbcc2: 85c0  TEST EAX,EAX
007dbcc4: 744a  JZ 0x007dbd10
007dbcc6: 8bcd  MOV ECX,EBP
007dbcc8: e8f3fcffff  CALL 0x007db9c0
007dbccd: 84c0  TEST AL,AL
007dbccf: 758f  JNZ 0x007dbc60
007dbcd1: 33ff  XOR EDI,EDI
007dbcd3: 8b542424  MOV EDX,dword ptr [ESP + 0x24]
007dbcd7: 2bd3  SUB EDX,EBX
007dbcd9: 83e2fe  AND EDX,0xfffffffe
007dbcdc: 83fa02  CMP EDX,0x2
007dbcdf: 7e0d  JLE 0x007dbcee
007dbce1: 3bdf  CMP EBX,EDI
007dbce3: 7409  JZ 0x007dbcee
007dbce5: 53  PUSH EBX
007dbce6: e8f587d0ff  CALL 0x004e44e0
007dbceb: 83c404  ADD ESP,0x4
007dbcee: 5f  POP EDI
007dbcef: 5e  POP ESI
007dbcf0: 5d  POP EBP
007dbcf1: 32c0  XOR AL,AL
007dbcf3: 5b  POP EBX
007dbcf4: 83c41c  ADD ESP,0x1c
007dbcf7: c20400  RET 0x4
007dbcfa: 0fb700  MOVZX EAX,word ptr [EAX]
007dbcfd: 663b02  CMP AX,word ptr [EDX]
007dbd00: 1bc0  SBB EAX,EAX
007dbd02: 83e0fe  AND EAX,0xfffffffe
007dbd05: 83c001  ADD EAX,0x1
007dbd08: 74a9  JZ 0x007dbcb3
007dbd0a: 8b6c2410  MOV EBP,dword ptr [ESP + 0x10]
007dbd0e: ebb2  JMP 0x007dbcc2
007dbd10: 8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
007dbd14: 2bcb  SUB ECX,EBX
007dbd16: 83e1fe  AND ECX,0xfffffffe
007dbd19: 83f902  CMP ECX,0x2
007dbd1c: 7e0d  JLE 0x007dbd2b
007dbd1e: 85db  TEST EBX,EBX
007dbd20: 7409  JZ 0x007dbd2b
007dbd22: 53  PUSH EBX
007dbd23: e8b887d0ff  CALL 0x004e44e0
007dbd28: 83c404  ADD ESP,0x4
007dbd2b: 5f  POP EDI
007dbd2c: 5e  POP ESI
007dbd2d: 5d  POP EBP
007dbd2e: b001  MOV AL,0x1
007dbd30: 5b  POP EBX
007dbd31: 83c41c  ADD ESP,0x1c
007dbd34: c20400  RET 0x4
Total instructions: 129; owned bytes: 356
