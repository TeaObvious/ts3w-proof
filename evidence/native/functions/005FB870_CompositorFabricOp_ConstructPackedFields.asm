# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 005fb870 CompositorFabricOp_ConstructPackedFields
# Body [[005fb870, 005fba9d]]; owned bytes=558
005fb870  55  PUSH EBP
005fb871  8bec  MOV EBP,ESP
005fb873  83e4f0  AND ESP,0xfffffff0
005fb876  83ec28  SUB ESP,0x28
005fb879  33c0  XOR EAX,EAX
005fb87b  56  PUSH ESI
005fb87c  8bf1  MOV ESI,ECX
005fb87e  0fb64e0b  MOVZX ECX,byte ptr [ESI + 0xb]
005fb882  88460a  MOV byte ptr [ESI + 0xa],AL
005fb885  894604  MOV dword ptr [ESI + 0x4],EAX
005fb888  66894608  MOV word ptr [ESI + 0x8],AX
005fb88c  89460c  MOV dword ptr [ESI + 0xc],EAX
005fb88f  80e1fa  AND CL,0xfa
005fb892  80c902  OR CL,0x2
005fb895  884e0b  MOV byte ptr [ESI + 0xb],CL
005fb898  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
005fb89b  c7066074fe00  MOV dword ptr [ESI],0xfe7460
005fb8a1  8b11  MOV EDX,dword ptr [ECX]
005fb8a3  895610  MOV dword ptr [ESI + 0x10],EDX
005fb8a6  8b5104  MOV EDX,dword ptr [ECX + 0x4]
005fb8a9  895614  MOV dword ptr [ESI + 0x14],EDX
005fb8ac  8b5108  MOV EDX,dword ptr [ECX + 0x8]
005fb8af  895618  MOV dword ptr [ESI + 0x18],EDX
005fb8b2  8b490c  MOV ECX,dword ptr [ECX + 0xc]
005fb8b5  8b550c  MOV EDX,dword ptr [EBP + 0xc]
005fb8b8  894e1c  MOV dword ptr [ESI + 0x1c],ECX
005fb8bb  668b4d10  MOV CX,word ptr [EBP + 0x10]
005fb8bf  894620  MOV dword ptr [ESI + 0x20],EAX
005fb8c2  894624  MOV dword ptr [ESI + 0x24],EAX
005fb8c5  894628  MOV dword ptr [ESI + 0x28],EAX
005fb8c8  66894e34  MOV word ptr [ESI + 0x34],CX
005fb8cc  8b4d44  MOV ECX,dword ptr [EBP + 0x44]
005fb8cf  895630  MOV dword ptr [ESI + 0x30],EDX
005fb8d2  668b5514  MOV DX,word ptr [EBP + 0x14]
005fb8d6  66895636  MOV word ptr [ESI + 0x36],DX
005fb8da  89462c  MOV dword ptr [ESI + 0x2c],EAX
005fb8dd  8b11  MOV EDX,dword ptr [ECX]
005fb8df  89564c  MOV dword ptr [ESI + 0x4c],EDX
005fb8e2  8b5104  MOV EDX,dword ptr [ECX + 0x4]
005fb8e5  895650  MOV dword ptr [ESI + 0x50],EDX
005fb8e8  8b490c  MOV ECX,dword ptr [ECX + 0xc]
005fb8eb  8a552c  MOV DL,byte ptr [EBP + 0x2c]
005fb8ee  894e54  MOV dword ptr [ESI + 0x54],ECX
005fb8f1  8a4d30  MOV CL,byte ptr [EBP + 0x30]
005fb8f4  f30f10453c  MOVSS XMM0,dword ptr [EBP + 0x3c]
005fb8f9  f30f59053441fa00  MULSS XMM0,dword ptr [0x00fa4134]
005fb901  894658  MOV dword ptr [ESI + 0x58],EAX
005fb904  8a4528  MOV AL,byte ptr [EBP + 0x28]
005fb907  804e630f  OR byte ptr [ESI + 0x63],0xf
005fb90b  c0e204  SHL DL,0x4
005fb90e  240f  AND AL,0xf
005fb910  0ad0  OR DL,AL
005fb912  0fb6460a  MOVZX EAX,byte ptr [ESI + 0xa]
005fb916  885662  MOV byte ptr [ESI + 0x62],DL
005fb919  8a5524  MOV DL,byte ptr [EBP + 0x24]
005fb91c  80e101  AND CL,0x1
005fb91f  02c9  ADD CL,CL
005fb921  80e201  AND DL,0x1
005fb924  0aca  OR CL,DL
005fb926  8a5534  MOV DL,byte ptr [EBP + 0x34]
005fb929  c0e105  SHL CL,0x5
005fb92c  2490  AND AL,0x90
005fb92e  0ac8  OR CL,AL
005fb930  f30f2cc0  CVTTSS2SI EAX,XMM0
005fb934  66894660  MOV word ptr [ESI + 0x60],AX
005fb938  8b4540  MOV EAX,dword ptr [EBP + 0x40]
005fb93b  80e20f  AND DL,0xf
005fb93e  0aca  OR CL,DL
005fb940  884e0a  MOV byte ptr [ESI + 0xa],CL
005fb943  f30f10400c  MOVSS XMM0,dword ptr [EAX + 0xc]
005fb948  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
005fb94e  f30f104008  MOVSS XMM0,dword ptr [EAX + 0x8]
005fb953  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
005fb959  f30f104004  MOVSS XMM0,dword ptr [EAX + 0x4]
005fb95e  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
005fb964  f30f1000  MOVSS XMM0,dword ptr [EAX]
005fb968  57  PUSH EDI
005fb969  8d4c2420  LEA ECX,[ESP + 0x20]
005fb96d  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
005fb973  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
005fb978  51  PUSH ECX
005fb979  8d4e5c  LEA ECX,[ESI + 0x5c]
005fb97c  0f29442424  MOVAPS xmmword ptr [ESP + 0x24],XMM0
005fb981  e8da190100  CALL 0x0060d360
005fb986  8b4518  MOV EAX,dword ptr [EBP + 0x18]
005fb989  f30f1008  MOVSS XMM1,dword ptr [EAX]
005fb98d  f30f105008  MOVSS XMM2,dword ptr [EAX + 0x8]
005fb992  f30f10053441fa00  MOVSS XMM0,dword ptr [0x00fa4134]
005fb99a  f30f105804  MOVSS XMM3,dword ptr [EAX + 0x4]
005fb99f  f30f10600c  MOVSS XMM4,dword ptr [EAX + 0xc]
005fb9a4  f30f59c8  MULSS XMM1,XMM0
005fb9a8  f30f2cd1  CVTTSS2SI EDX,XMM1
005fb9ac  0fbfca  MOVSX ECX,DX
005fb9af  f30f2ac9  CVTSI2SS XMM1,ECX
005fb9b3  f30f59d0  MULSS XMM2,XMM0
005fb9b7  f30f2cd2  CVTTSS2SI EDX,XMM2
005fb9bb  0fbfca  MOVSX ECX,DX
005fb9be  f30f2ad1  CVTSI2SS XMM2,ECX
005fb9c2  f30f59d8  MULSS XMM3,XMM0
005fb9c6  f30f2cd3  CVTTSS2SI EDX,XMM3
005fb9ca  0fbfca  MOVSX ECX,DX
005fb9cd  f30f59e0  MULSS XMM4,XMM0
005fb9d1  f30f2cd4  CVTTSS2SI EDX,XMM4
005fb9d5  0fbfc2  MOVSX EAX,DX
005fb9d8  f30f2ae0  CVTSI2SS XMM4,EAX
005fb9dc  f30f2cc1  CVTTSS2SI EAX,XMM1
005fb9e0  6689463c  MOV word ptr [ESI + 0x3c],AX
005fb9e4  8b451c  MOV EAX,dword ptr [EBP + 0x1c]
005fb9e7  f30f2ad9  CVTSI2SS XMM3,ECX
005fb9eb  f30f2ccb  CVTTSS2SI ECX,XMM3
005fb9ef  66894e3e  MOV word ptr [ESI + 0x3e],CX
005fb9f3  f30f2cd2  CVTTSS2SI EDX,XMM2
005fb9f7  66895640  MOV word ptr [ESI + 0x40],DX
005fb9fb  f30f2cfc  CVTTSS2SI EDI,XMM4
005fb9ff  66897e42  MOV word ptr [ESI + 0x42],DI
005fba03  f30f1008  MOVSS XMM1,dword ptr [EAX]
005fba07  f30f105008  MOVSS XMM2,dword ptr [EAX + 0x8]
005fba0c  f30f105804  MOVSS XMM3,dword ptr [EAX + 0x4]
005fba11  f30f10600c  MOVSS XMM4,dword ptr [EAX + 0xc]
005fba16  f30f59c8  MULSS XMM1,XMM0
005fba1a  f30f2cc9  CVTTSS2SI ECX,XMM1
005fba1e  0fbfd1  MOVSX EDX,CX
005fba21  f30f2aca  CVTSI2SS XMM1,EDX
005fba25  f30f59d0  MULSS XMM2,XMM0
005fba29  f30f2cca  CVTTSS2SI ECX,XMM2
005fba2d  0fbfd1  MOVSX EDX,CX
005fba30  f30f2ad2  CVTSI2SS XMM2,EDX
005fba34  f30f59d8  MULSS XMM3,XMM0
005fba38  f30f2ccb  CVTTSS2SI ECX,XMM3
005fba3c  0fbfd1  MOVSX EDX,CX
005fba3f  f30f59e0  MULSS XMM4,XMM0
005fba43  f30f2cc4  CVTTSS2SI EAX,XMM4
005fba47  0fbfc8  MOVSX ECX,AX
005fba4a  f30f2cc1  CVTTSS2SI EAX,XMM1
005fba4e  f30f104d20  MOVSS XMM1,dword ptr [EBP + 0x20]
005fba53  f30f2ada  CVTSI2SS XMM3,EDX
005fba57  f30f2cd2  CVTTSS2SI EDX,XMM2
005fba5b  66895648  MOV word ptr [ESI + 0x48],DX
005fba5f  f30f59c8  MULSS XMM1,XMM0
005fba63  66894644  MOV word ptr [ESI + 0x44],AX
005fba67  f30f2cd1  CVTTSS2SI EDX,XMM1
005fba6b  f30f104d38  MOVSS XMM1,dword ptr [EBP + 0x38]
005fba70  f30f2ae1  CVTSI2SS XMM4,ECX
005fba74  f30f2cfc  CVTTSS2SI EDI,XMM4
005fba78  66897e4a  MOV word ptr [ESI + 0x4a],DI
005fba7c  f30f2ccb  CVTTSS2SI ECX,XMM3
005fba80  66894e46  MOV word ptr [ESI + 0x46],CX
005fba84  f30f59c8  MULSS XMM1,XMM0
005fba88  f30f2cc1  CVTTSS2SI EAX,XMM1
005fba8c  6689463a  MOV word ptr [ESI + 0x3a],AX
005fba90  5f  POP EDI
005fba91  66895638  MOV word ptr [ESI + 0x38],DX
005fba95  8bc6  MOV EAX,ESI
005fba97  5e  POP ESI
005fba98  8be5  MOV ESP,EBP
005fba9a  5d  POP EBP
005fba9b  c24000  RET 0x40
