# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 005fae00 CompositorClearOp_ConstructPackedFields
# Body [[005fae00, 005faf51]]; owned bytes=338
005fae00  55  PUSH EBP
005fae01  8bec  MOV EBP,ESP
005fae03  83e4f0  AND ESP,0xfffffff0
005fae06  83ec28  SUB ESP,0x28
005fae09  56  PUSH ESI
005fae0a  8bf1  MOV ESI,ECX
005fae0c  0fb6460b  MOVZX EAX,byte ptr [ESI + 0xb]
005fae10  24fa  AND AL,0xfa
005fae12  0c02  OR AL,0x2
005fae14  88460b  MOV byte ptr [ESI + 0xb],AL
005fae17  8b4528  MOV EAX,dword ptr [EBP + 0x28]
005fae1a  33c9  XOR ECX,ECX
005fae1c  884e0a  MOV byte ptr [ESI + 0xa],CL
005fae1f  894e04  MOV dword ptr [ESI + 0x4],ECX
005fae22  66894e08  MOV word ptr [ESI + 0x8],CX
005fae26  c706f072fe00  MOV dword ptr [ESI],0xfe72f0
005fae2c  8b10  MOV EDX,dword ptr [EAX]
005fae2e  89560c  MOV dword ptr [ESI + 0xc],EDX
005fae31  8b5004  MOV EDX,dword ptr [EAX + 0x4]
005fae34  895610  MOV dword ptr [ESI + 0x10],EDX
005fae37  8b400c  MOV EAX,dword ptr [EAX + 0xc]
005fae3a  8b550c  MOV EDX,dword ptr [EBP + 0xc]
005fae3d  894614  MOV dword ptr [ESI + 0x14],EAX
005fae40  8a4518  MOV AL,byte ptr [EBP + 0x18]
005fae43  f30f104520  MOVSS XMM0,dword ptr [EBP + 0x20]
005fae48  f30f59053441fa00  MULSS XMM0,dword ptr [0x00fa4134]
005fae50  895618  MOV dword ptr [ESI + 0x18],EDX
005fae53  8a5510  MOV DL,byte ptr [EBP + 0x10]
005fae56  894e24  MOV dword ptr [ESI + 0x24],ECX
005fae59  8a4d14  MOV CL,byte ptr [EBP + 0x14]
005fae5c  c0e004  SHL AL,0x4
005fae5f  80e10f  AND CL,0xf
005fae62  0ac1  OR AL,CL
005fae64  8a4d1c  MOV CL,byte ptr [EBP + 0x1c]
005fae67  88462e  MOV byte ptr [ESI + 0x2e],AL
005fae6a  0fb6460a  MOVZX EAX,byte ptr [ESI + 0xa]
005fae6e  80e201  AND DL,0x1
005fae71  c0e205  SHL DL,0x5
005fae74  24d0  AND AL,0xd0
005fae76  0ad0  OR DL,AL
005fae78  8b4524  MOV EAX,dword ptr [EBP + 0x24]
005fae7b  80e10f  AND CL,0xf
005fae7e  0ad1  OR DL,CL
005fae80  88560a  MOV byte ptr [ESI + 0xa],DL
005fae83  f30f2cd0  CVTTSS2SI EDX,XMM0
005fae87  6689562c  MOV word ptr [ESI + 0x2c],DX
005fae8b  f30f10400c  MOVSS XMM0,dword ptr [EAX + 0xc]
005fae90  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
005fae96  f30f104008  MOVSS XMM0,dword ptr [EAX + 0x8]
005fae9b  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
005faea1  f30f104004  MOVSS XMM0,dword ptr [EAX + 0x4]
005faea6  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
005faeac  f30f1000  MOVSS XMM0,dword ptr [EAX]
005faeb0  57  PUSH EDI
005faeb1  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
005faeb7  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
005faebc  8d442420  LEA EAX,[ESP + 0x20]
005faec0  50  PUSH EAX
005faec1  8d4e28  LEA ECX,[ESI + 0x28]
005faec4  0f29442424  MOVAPS xmmword ptr [ESP + 0x24],XMM0
005faec9  e892240100  CALL 0x0060d360
005faece  8b4508  MOV EAX,dword ptr [EBP + 0x8]
005faed1  f30f10053441fa00  MOVSS XMM0,dword ptr [0x00fa4134]
005faed9  f30f1008  MOVSS XMM1,dword ptr [EAX]
005faedd  f30f105008  MOVSS XMM2,dword ptr [EAX + 0x8]
005faee2  f30f105804  MOVSS XMM3,dword ptr [EAX + 0x4]
005faee7  f30f10600c  MOVSS XMM4,dword ptr [EAX + 0xc]
005faeec  f30f59c8  MULSS XMM1,XMM0
005faef0  f30f2cc9  CVTTSS2SI ECX,XMM1
005faef4  0fbfd1  MOVSX EDX,CX
005faef7  f30f59d0  MULSS XMM2,XMM0
005faefb  f30f2aca  CVTSI2SS XMM1,EDX
005faeff  f30f2cca  CVTTSS2SI ECX,XMM2
005faf03  0fbfd1  MOVSX EDX,CX
005faf06  f30f59d8  MULSS XMM3,XMM0
005faf0a  f30f2ccb  CVTTSS2SI ECX,XMM3
005faf0e  f30f59e0  MULSS XMM4,XMM0
005faf12  f30f2ad2  CVTSI2SS XMM2,EDX
005faf16  0fbfd1  MOVSX EDX,CX
005faf19  f30f2cc4  CVTTSS2SI EAX,XMM4
005faf1d  0fbfc8  MOVSX ECX,AX
005faf20  f30f2ada  CVTSI2SS XMM3,EDX
005faf24  f30f2ac1  CVTSI2SS XMM0,ECX
005faf28  f30f2cc1  CVTTSS2SI EAX,XMM1
005faf2c  f30f2ccb  CVTTSS2SI ECX,XMM3
005faf30  f30f2cf8  CVTTSS2SI EDI,XMM0
005faf34  66897e22  MOV word ptr [ESI + 0x22],DI
005faf38  6689461c  MOV word ptr [ESI + 0x1c],AX
005faf3c  f30f2cd2  CVTTSS2SI EDX,XMM2
005faf40  5f  POP EDI
005faf41  66894e1e  MOV word ptr [ESI + 0x1e],CX
005faf45  66895620  MOV word ptr [ESI + 0x20],DX
005faf49  8bc6  MOV EAX,ESI
005faf4b  5e  POP ESI
005faf4c  8be5  MOV ESP,EBP
005faf4e  5d  POP EBP
005faf4f  c22400  RET 0x24
