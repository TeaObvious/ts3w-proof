# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 108de680..108de71c; CAW_DbpfCloseOwnedIo
108de680: 53  PUSH EBX
108de681: 56  PUSH ESI
108de682: 8bf1  MOV ESI,ECX
108de684: 8b4614  MOV EAX,dword ptr [ESI + 0x14]
108de687: 85c0  TEST EAX,EAX
108de689: 7433  JZ 0x108de6be
108de68b: a802  TEST AL,0x2
108de68d: 7424  JZ 0x108de6b3
108de68f: e8fcf4ffff  CALL 0x108ddb90
108de694: 807c240c00  CMP byte ptr [ESP + 0xc],0x0
108de699: 8ad8  MOV BL,AL
108de69b: 7418  JZ 0x108de6b5
108de69d: 84db  TEST BL,BL
108de69f: 7414  JZ 0x108de6b5
108de6a1: 8b06  MOV EAX,dword ptr [ESI]
108de6a3: 8b5024  MOV EDX,dword ptr [EAX + 0x24]
108de6a6: 8bce  MOV ECX,ESI
108de6a8: ffd2  CALL EDX
108de6aa: 8bce  MOV ECX,ESI
108de6ac: e88ff1ffff  CALL 0x108dd840
108de6b1: eb0d  JMP 0x108de6c0
108de6b3: b301  MOV BL,0x1
108de6b5: 8bce  MOV ECX,ESI
108de6b7: e884f1ffff  CALL 0x108dd840
108de6bc: eb02  JMP 0x108de6c0
108de6be: b301  MOV BL,0x1
108de6c0: 8d4634  LEA EAX,[ESI + 0x34]
108de6c3: 398660020000  CMP dword ptr [ESI + 0x260],EAX
108de6c9: 751b  JNZ 0x108de6e6
108de6cb: 8b8e60020000  MOV ECX,dword ptr [ESI + 0x260]
108de6d1: 85c9  TEST ECX,ECX
108de6d3: 7411  JZ 0x108de6e6
108de6d5: c7866002000000000000  MOV dword ptr [ESI + 0x260],0x0
108de6df: 8b11  MOV EDX,dword ptr [ECX]
108de6e1: 8b4208  MOV EAX,dword ptr [EDX + 0x8]
108de6e4: ffd0  CALL EAX
108de6e6: 83bed002000000  CMP dword ptr [ESI + 0x2d0],0x0
108de6ed: 740d  JZ 0x108de6fc
108de6ef: 8b8ed0020000  MOV ECX,dword ptr [ESI + 0x2d0]
108de6f5: 8b11  MOV EDX,dword ptr [ECX]
108de6f7: 8b4210  MOV EAX,dword ptr [EDX + 0x10]
108de6fa: ffd0  CALL EAX
108de6fc: 6a00  PUSH 0x0
108de6fe: 8d8e44030000  LEA ECX,[ESI + 0x344]
108de704: e8e7270000  CALL 0x108e0ef0
108de709: 6a00  PUSH 0x0
108de70b: 8d8e68030000  LEA ECX,[ESI + 0x368]
108de711: e8da270000  CALL 0x108e0ef0
108de716: 5e  POP ESI
108de717: 8ac3  MOV AL,BL
108de719: 5b  POP EBX
108de71a: c20400  RET 0x4
