# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10068bd0..10068c33; CAW_DirtyRectIncludeRasterCell
10068bd0: 8b442404  MOV EAX,dword ptr [ESP + 0x4]
10068bd4: 8b10  MOV EDX,dword ptr [EAX]
10068bd6: 53  PUSH EBX
10068bd7: 56  PUSH ESI
10068bd8: 8b7008  MOV ESI,dword ptr [EAX + 0x8]
10068bdb: 3bd6  CMP EDX,ESI
10068bdd: 57  PUSH EDI
10068bde: 740a  JZ 0x10068bea
10068be0: 8b7804  MOV EDI,dword ptr [EAX + 0x4]
10068be3: 8b580c  MOV EBX,dword ptr [EAX + 0xc]
10068be6: 3bfb  CMP EDI,EBX
10068be8: 751d  JNZ 0x10068c07
10068bea: 8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
10068bee: 8b542418  MOV EDX,dword ptr [ESP + 0x18]
10068bf2: 5f  POP EDI
10068bf3: 8908  MOV dword ptr [EAX],ECX
10068bf5: 83c101  ADD ECX,0x1
10068bf8: 895004  MOV dword ptr [EAX + 0x4],EDX
10068bfb: 83c201  ADD EDX,0x1
10068bfe: 5e  POP ESI
10068bff: 894808  MOV dword ptr [EAX + 0x8],ECX
10068c02: 89500c  MOV dword ptr [EAX + 0xc],EDX
10068c05: 5b  POP EBX
10068c06: c3  RET
10068c07: 8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
10068c0b: 3bca  CMP ECX,EDX
10068c0d: 7d02  JGE 0x10068c11
10068c0f: 8908  MOV dword ptr [EAX],ECX
10068c11: 3bce  CMP ECX,ESI
10068c13: 7c06  JL 0x10068c1b
10068c15: 83c101  ADD ECX,0x1
10068c18: 894808  MOV dword ptr [EAX + 0x8],ECX
10068c1b: 8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
10068c1f: 3bcf  CMP ECX,EDI
10068c21: 7d03  JGE 0x10068c26
10068c23: 894804  MOV dword ptr [EAX + 0x4],ECX
10068c26: 3bcb  CMP ECX,EBX
10068c28: 7c06  JL 0x10068c30
10068c2a: 83c101  ADD ECX,0x1
10068c2d: 89480c  MOV dword ptr [EAX + 0xc],ECX
10068c30: 5f  POP EDI
10068c31: 5e  POP ESI
10068c32: 5b  POP EBX
10068c33: c3  RET
