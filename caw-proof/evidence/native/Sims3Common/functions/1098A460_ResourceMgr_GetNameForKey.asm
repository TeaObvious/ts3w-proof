# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 1098a460..1098a4f8; ResourceMgr_GetNameForKey
1098a460: 83ec20  SUB ESP,0x20
1098a463: 8b442424  MOV EAX,dword ptr [ESP + 0x24]
1098a467: 8b08  MOV ECX,dword ptr [EAX]
1098a469: 8b5004  MOV EDX,dword ptr [EAX + 0x4]
1098a46c: 894c2418  MOV dword ptr [ESP + 0x18],ECX
1098a470: 8b4808  MOV ECX,dword ptr [EAX + 0x8]
1098a473: 8954241c  MOV dword ptr [ESP + 0x1c],EDX
1098a477: 8b500c  MOV EDX,dword ptr [EAX + 0xc]
1098a47a: b84482ca10  MOV EAX,0x10ca8244
1098a47f: 56  PUSH ESI
1098a480: 894c2414  MOV dword ptr [ESP + 0x14],ECX
1098a484: 89542418  MOV dword ptr [ESP + 0x18],EDX
1098a488: c7442410406eb910  MOV dword ptr [ESP + 0x10],0x10b96e40
1098a490: 89442404  MOV dword ptr [ESP + 0x4],EAX
1098a494: 89442408  MOV dword ptr [ESP + 0x8],EAX
1098a498: c744240c4682ca10  MOV dword ptr [ESP + 0xc],0x10ca8246
1098a4a0: e82bacf5ff  CALL 0x108e50d0
1098a4a5: 8b10  MOV EDX,dword ptr [EAX]
1098a4a7: 8b5244  MOV EDX,dword ptr [EDX + 0x44]
1098a4aa: 8d4c2414  LEA ECX,[ESP + 0x14]
1098a4ae: 51  PUSH ECX
1098a4af: 8bc8  MOV ECX,EAX
1098a4b1: ffd2  CALL EDX
1098a4b3: 50  PUSH EAX
1098a4b4: 8d442408  LEA EAX,[ESP + 0x8]
1098a4b8: 50  PUSH EAX
1098a4b9: 8d4c241c  LEA ECX,[ESP + 0x1c]
1098a4bd: 51  PUSH ECX
1098a4be: e8fda5f5ff  CALL 0x108e4ac0
1098a4c3: 8b542410  MOV EDX,dword ptr [ESP + 0x10]
1098a4c7: 83c40c  ADD ESP,0xc
1098a4ca: 52  PUSH EDX
1098a4cb: ff15c4b6aa10  CALL dword ptr [0x10aab6c4]
1098a4d1: 8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
1098a4d5: 8bf0  MOV ESI,EAX
1098a4d7: 8b442404  MOV EAX,dword ptr [ESP + 0x4]
1098a4db: 2bc8  SUB ECX,EAX
1098a4dd: 83e1fe  AND ECX,0xfffffffe
1098a4e0: 83f902  CMP ECX,0x2
1098a4e3: 7e0d  JLE 0x1098a4f2
1098a4e5: 85c0  TEST EAX,EAX
1098a4e7: 7409  JZ 0x1098a4f2
1098a4e9: 50  PUSH EAX
1098a4ea: e8a1e9f8ff  CALL 0x10918e90
1098a4ef: 83c404  ADD ESP,0x4
1098a4f2: 8bc6  MOV EAX,ESI
1098a4f4: 5e  POP ESI
1098a4f5: 83c420  ADD ESP,0x20
1098a4f8: c3  RET
