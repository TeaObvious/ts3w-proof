# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 1098ac80..1098ad47; ResourceMgr_ClosePackage
1098ac80: 83ec08  SUB ESP,0x8
1098ac83: 53  PUSH EBX
1098ac84: 56  PUSH ESI
1098ac85: 57  PUSH EDI
1098ac86: e845a4f5ff  CALL 0x108e50d0
1098ac8b: 8bd8  MOV EBX,EAX
1098ac8d: 85db  TEST EBX,EBX
1098ac8f: 7509  JNZ 0x1098ac9a
1098ac91: 33c0  XOR EAX,EAX
1098ac93: 5f  POP EDI
1098ac94: 5e  POP ESI
1098ac95: 5b  POP EBX
1098ac96: 83c408  ADD ESP,0x8
1098ac99: c3  RET
1098ac9a: 8b357880cb10  MOV ESI,dword ptr [0x10cb8078]
1098aca0: 8d442418  LEA EAX,[ESP + 0x18]
1098aca4: 50  PUSH EAX
1098aca5: 8d4c2410  LEA ECX,[ESP + 0x10]
1098aca9: 51  PUSH ECX
1098acaa: 8bce  MOV ECX,ESI
1098acac: e85fd7d1ff  CALL 0x106a8410
1098acb1: 8b5608  MOV EDX,dword ptr [ESI + 0x8]
1098acb4: 8b4604  MOV EAX,dword ptr [ESI + 0x4]
1098acb7: 8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
1098acbb: 3b3c90  CMP EDI,dword ptr [EAX + EDX*0x4]
1098acbe: 74d1  JZ 0x1098ac91
1098acc0: 8b7704  MOV ESI,dword ptr [EDI + 0x4]
1098acc3: 85f6  TEST ESI,ESI
1098acc5: 740a  JZ 0x1098acd1
1098acc7: 8b5604  MOV EDX,dword ptr [ESI + 0x4]
1098acca: 8b02  MOV EAX,dword ptr [EDX]
1098accc: 8d4e04  LEA ECX,[ESI + 0x4]
1098accf: ffd0  CALL EAX
1098acd1: 8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
1098acd5: 83ec08  SUB ESP,0x8
1098acd8: 8bc4  MOV EAX,ESP
1098acda: 8d542414  LEA EDX,[ESP + 0x14]
1098acde: 8938  MOV dword ptr [EAX],EDI
1098ace0: 894804  MOV dword ptr [EAX + 0x4],ECX
1098ace3: 8b0d7880cb10  MOV ECX,dword ptr [0x10cb8078]
1098ace9: 52  PUSH EDX
1098acea: e8512e6dff  CALL 0x1005db40
1098acef: 8b06  MOV EAX,dword ptr [ESI]
1098acf1: 8b500c  MOV EDX,dword ptr [EAX + 0xc]
1098acf4: 8bce  MOV ECX,ESI
1098acf6: ffd2  CALL EDX
1098acf8: 3d44bd432a  CMP EAX,0x2a43bd44
1098acfd: 7514  JNZ 0x1098ad13
1098acff: 8b06  MOV EAX,dword ptr [ESI]
1098ad01: 8b5020  MOV EDX,dword ptr [EAX + 0x20]
1098ad04: 8bce  MOV ECX,ESI
1098ad06: ffd2  CALL EDX
1098ad08: a802  TEST AL,0x2
1098ad0a: 7407  JZ 0x1098ad13
1098ad0c: 8bce  MOV ECX,ESI
1098ad0e: e83d4ef5ff  CALL 0x108dfb50
1098ad13: 8b4604  MOV EAX,dword ptr [ESI + 0x4]
1098ad16: 8b5004  MOV EDX,dword ptr [EAX + 0x4]
1098ad19: 8d7e04  LEA EDI,[ESI + 0x4]
1098ad1c: 8bcf  MOV ECX,EDI
1098ad1e: ffd2  CALL EDX
1098ad20: 8b03  MOV EAX,dword ptr [EBX]
1098ad22: 8b5034  MOV EDX,dword ptr [EAX + 0x34]
1098ad25: 6a00  PUSH 0x0
1098ad27: 56  PUSH ESI
1098ad28: 6a00  PUSH 0x0
1098ad2a: 8bcb  MOV ECX,EBX
1098ad2c: ffd2  CALL EDX
1098ad2e: f6d8  NEG AL
1098ad30: 8bcf  MOV ECX,EDI
1098ad32: 1bc0  SBB EAX,EAX
1098ad34: f7d8  NEG EAX
1098ad36: 8bf0  MOV ESI,EAX
1098ad38: 8b07  MOV EAX,dword ptr [EDI]
1098ad3a: 8b5004  MOV EDX,dword ptr [EAX + 0x4]
1098ad3d: ffd2  CALL EDX
1098ad3f: 5f  POP EDI
1098ad40: 8bc6  MOV EAX,ESI
1098ad42: 5e  POP ESI
1098ad43: 5b  POP EBX
1098ad44: 83c408  ADD ESP,0x8
1098ad47: c3  RET
