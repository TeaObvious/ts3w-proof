# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Geometry_PolygonsEqualCyclicTolerance(undefined4 * param_1, undefined4 * param_2)
Owned ranges: [[007ce9a0, 007cea93]]

007ce9a0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007ce9a4  55  PUSH EBP
007ce9a5  56  PUSH ESI
007ce9a6  8b7004  MOV ESI,dword ptr [EAX + 0x4]
007ce9a9  57  PUSH EDI
007ce9aa  8b38  MOV EDI,dword ptr [EAX]
007ce9ac  8b442414  MOV EAX,dword ptr [ESP + 0x14]
007ce9b0  8b28  MOV EBP,dword ptr [EAX]
007ce9b2  8b4004  MOV EAX,dword ptr [EAX + 0x4]
007ce9b5  2bf7  SUB ESI,EDI
007ce9b7  2bc5  SUB EAX,EBP
007ce9b9  c1fe03  SAR ESI,0x3
007ce9bc  c1f803  SAR EAX,0x3
007ce9bf  3bf0  CMP ESI,EAX
007ce9c1  756d  JNZ 0x007cea30
007ce9c3  f605d4981d0101  TEST byte ptr [0x011d98d4],0x1
007ce9ca  7519  JNZ 0x007ce9e5
007ce9cc  f30f1015e898f900  MOVSS XMM2,dword ptr [0x00f998e8]
007ce9d4  830dd4981d0101  OR dword ptr [0x011d98d4],0x1
007ce9db  f30f1115d0981d01  MOVSS dword ptr [0x011d98d0],XMM2
007ce9e3  eb08  JMP 0x007ce9ed
007ce9e5  f30f1015d0981d01  MOVSS XMM2,dword ptr [0x011d98d0]
007ce9ed  33c9  XOR ECX,ECX
007ce9ef  85c0  TEST EAX,EAX
007ce9f1  763d  JBE 0x007cea30
007ce9f3  f30f101f  MOVSS XMM3,dword ptr [EDI]
007ce9f7  f30f106704  MOVSS XMM4,dword ptr [EDI + 0x4]
007ce9fc  8bd5  MOV EDX,EBP
007ce9fe  8bff  MOV EDI,EDI
007cea00  0f28cc  MOVAPS XMM1,XMM4
007cea03  f30f5c4a04  SUBSS XMM1,dword ptr [EDX + 0x4]
007cea08  0f28e9  MOVAPS XMM5,XMM1
007cea0b  f30f59e9  MULSS XMM5,XMM1
007cea0f  0f28c3  MOVAPS XMM0,XMM3
007cea12  f30f5c02  SUBSS XMM0,dword ptr [EDX]
007cea16  0f28c8  MOVAPS XMM1,XMM0
007cea19  f30f59c8  MULSS XMM1,XMM0
007cea1d  f30f58e9  ADDSS XMM5,XMM1
007cea21  83c101  ADD ECX,0x1
007cea24  0f2fd5  COMISS XMM2,XMM5
007cea27  770d  JA 0x007cea36
007cea29  83c208  ADD EDX,0x8
007cea2c  3bc8  CMP ECX,EAX
007cea2e  72d0  JC 0x007cea00
007cea30  5f  POP EDI
007cea31  5e  POP ESI
007cea32  32c0  XOR AL,AL
007cea34  5d  POP EBP
007cea35  c3  RET
007cea36  53  PUSH EBX
007cea37  bb01000000  MOV EBX,0x1
007cea3c  3bf3  CMP ESI,EBX
007cea3e  7646  JBE 0x007cea86
007cea40  83c708  ADD EDI,0x8
007cea43  33d2  XOR EDX,EDX
007cea45  8bc1  MOV EAX,ECX
007cea47  f7f6  DIV ESI
007cea49  f30f1007  MOVSS XMM0,dword ptr [EDI]
007cea4d  f30f5c44d500  SUBSS XMM0,dword ptr [EBP + EDX*0x8]
007cea53  f30f104f04  MOVSS XMM1,dword ptr [EDI + 0x4]
007cea58  f30f5c4cd504  SUBSS XMM1,dword ptr [EBP + EDX*0x8 + 0x4]
007cea5e  0f28d8  MOVAPS XMM3,XMM0
007cea61  f30f59d8  MULSS XMM3,XMM0
007cea65  0f28c1  MOVAPS XMM0,XMM1
007cea68  f30f59c1  MULSS XMM0,XMM1
007cea6c  f30f58d8  ADDSS XMM3,XMM0
007cea70  0f2fda  COMISS XMM3,XMM2
007cea73  8d44d500  LEA EAX,[EBP + EDX*0x8]
007cea77  7314  JNC 0x007cea8d
007cea79  83c301  ADD EBX,0x1
007cea7c  83c708  ADD EDI,0x8
007cea7f  83c101  ADD ECX,0x1
007cea82  3bde  CMP EBX,ESI
007cea84  72bd  JC 0x007cea43
007cea86  5b  POP EBX
007cea87  5f  POP EDI
007cea88  5e  POP ESI
007cea89  b001  MOV AL,0x1
007cea8b  5d  POP EBP
007cea8c  c3  RET
007cea8d  5b  POP EBX
007cea8e  5f  POP EDI
007cea8f  5e  POP ESI
007cea90  32c0  XOR AL,AL
007cea92  5d  POP EBP
007cea93  c3  RET
