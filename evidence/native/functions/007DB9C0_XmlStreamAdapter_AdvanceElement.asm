# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function XmlStreamAdapter_AdvanceElement Entry 007db9c0
OWNED_RANGE 007db9c0:007dbad1
007db9c0: 83ec1c  SUB ESP,0x1c
007db9c3: 53  PUSH EBX
007db9c4: 56  PUSH ESI
007db9c5: 57  PUSH EDI
007db9c6: 8bf1  MOV ESI,ECX
007db9c8: bf01000000  MOV EDI,0x1
007db9cd: 397e48  CMP dword ptr [ESI + 0x48],EDI
007db9d0: 0f85f3000000  JNZ 0x007dbac9
007db9d6: 8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007db9d9: b8548e1c01  MOV EAX,0x11c8e54
007db9de: c744242448b80101  MOV dword ptr [ESP + 0x24],0x101b848
007db9e6: 89442418  MOV dword ptr [ESP + 0x18],EAX
007db9ea: 8944241c  MOV dword ptr [ESP + 0x1c],EAX
007db9ee: c7442420568e1c01  MOV dword ptr [ESP + 0x20],0x11c8e56
007db9f6: e85557c9ff  CALL 0x00471150
007db9fb: 8ad8  MOV BL,AL
007db9fd: 80e301  AND BL,0x1
007dba00: 397e48  CMP dword ptr [ESI + 0x48],EDI
007dba03: 750d  JNZ 0x007dba12
007dba05: 8b4608  MOV EAX,dword ptr [ESI + 0x8]
007dba08: 83780800  CMP dword ptr [EAX + 0x8],0x0
007dba0c: 0f8598000000  JNZ 0x007dbaaa
007dba12: 8bce  MOV ECX,ESI
007dba14: e897e8ffff  CALL 0x007da2b0
007dba19: 22d8  AND BL,AL
007dba1b: 397e48  CMP dword ptr [ESI + 0x48],EDI
007dba1e: 750c  JNZ 0x007dba2c
007dba20: 8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007dba23: e8e854c9ff  CALL 0x00470f10
007dba28: 84c0  TEST AL,AL
007dba2a: 7404  JZ 0x007dba30
007dba2c: 32db  XOR BL,BL
007dba2e: eb52  JMP 0x007dba82
007dba30: 84db  TEST BL,BL
007dba32: 744e  JZ 0x007dba82
007dba34: 8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007dba37: e81455c9ff  CALL 0x00470f50
007dba3c: 50  PUSH EAX
007dba3d: 8d4c241c  LEA ECX,[ESP + 0x1c]
007dba41: e80ad5c2ff  CALL 0x00408f50
007dba46: 8b4e2c  MOV ECX,dword ptr [ESI + 0x2c]
007dba49: 8b5628  MOV EDX,dword ptr [ESI + 0x28]
007dba4c: 8b3c8a  MOV EDI,dword ptr [EDX + ECX*0x4]
007dba4f: 83c624  ADD ESI,0x24
007dba52: 8d442418  LEA EAX,[ESP + 0x18]
007dba56: 50  PUSH EAX
007dba57: 8d4c2410  LEA ECX,[ESP + 0x10]
007dba5b: 51  PUSH ECX
007dba5c: 8bce  MOV ECX,ESI
007dba5e: e89df9ffff  CALL 0x007db400
007dba63: 3938  CMP dword ptr [EAX],EDI
007dba65: 751b  JNZ 0x007dba82
007dba67: c644240c00  MOV byte ptr [ESP + 0xc],0x0
007dba6c: 8b54240c  MOV EDX,dword ptr [ESP + 0xc]
007dba70: 52  PUSH EDX
007dba71: 8d44241c  LEA EAX,[ESP + 0x1c]
007dba75: 50  PUSH EAX
007dba76: 8d4c2414  LEA ECX,[ESP + 0x14]
007dba7a: 51  PUSH ECX
007dba7b: 8bce  MOV ECX,ESI
007dba7d: e87efaffff  CALL 0x007db500
007dba82: 8b542420  MOV EDX,dword ptr [ESP + 0x20]
007dba86: 8b442418  MOV EAX,dword ptr [ESP + 0x18]
007dba8a: 2bd0  SUB EDX,EAX
007dba8c: 83e2fe  AND EDX,0xfffffffe
007dba8f: 83fa02  CMP EDX,0x2
007dba92: 7e0d  JLE 0x007dbaa1
007dba94: 85c0  TEST EAX,EAX
007dba96: 7409  JZ 0x007dbaa1
007dba98: 50  PUSH EAX
007dba99: e8428ad0ff  CALL 0x004e44e0
007dba9e: 83c404  ADD ESP,0x4
007dbaa1: 5f  POP EDI
007dbaa2: 5e  POP ESI
007dbaa3: 8ac3  MOV AL,BL
007dbaa5: 5b  POP EBX
007dbaa6: 83c41c  ADD ESP,0x1c
007dbaa9: c3  RET
007dbaaa: 8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
007dbaae: 8b442418  MOV EAX,dword ptr [ESP + 0x18]
007dbab2: 2bc8  SUB ECX,EAX
007dbab4: 83e1fe  AND ECX,0xfffffffe
007dbab7: 83f902  CMP ECX,0x2
007dbaba: 7e0d  JLE 0x007dbac9
007dbabc: 85c0  TEST EAX,EAX
007dbabe: 7409  JZ 0x007dbac9
007dbac0: 50  PUSH EAX
007dbac1: e81a8ad0ff  CALL 0x004e44e0
007dbac6: 83c404  ADD ESP,0x4
007dbac9: 5f  POP EDI
007dbaca: 5e  POP ESI
007dbacb: 32c0  XOR AL,AL
007dbacd: 5b  POP EBX
007dbace: 83c41c  ADD ESP,0x1c
007dbad1: c3  RET
Total instructions: 95; owned bytes: 274
