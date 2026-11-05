# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00d3b8c0 WallTool_DragWithCostSound
# Body [[00d3b8c0, 00d3badc]]; owned bytes=541
00d3b8c0  83ec28  SUB ESP,0x28
00d3b8c3  56  PUSH ESI
00d3b8c4  8bf1  MOV ESI,ECX
00d3b8c6  807e6800  CMP byte ptr [ESI + 0x68],0x0
00d3b8ca  0f8506020000  JNZ 0x00d3bad6
00d3b8d0  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00d3b8d4  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00d3b8dc  53  PUSH EBX
00d3b8dd  8d44240c  LEA EAX,[ESP + 0xc]
00d3b8e1  50  PUSH EAX
00d3b8e2  51  PUSH ECX
00d3b8e3  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00d3b8e9  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00d3b8ef  c744241c00000000  MOV dword ptr [ESP + 0x1c],0x0
00d3b8f7  e8c4c3dbff  CALL 0x00af7cc0
00d3b8fc  8d5670  LEA EDX,[ESI + 0x70]
00d3b8ff  52  PUSH EDX
00d3b900  e85bfff1ff  CALL 0x00c5b860
00d3b905  d905b4850801  FLD float ptr [0x010885b4]
00d3b90b  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00d3b90f  8d9ef8000000  LEA EBX,[ESI + 0xf8]
00d3b915  83c40c  ADD ESP,0xc
00d3b918  394b08  CMP dword ptr [EBX + 0x8],ECX
00d3b91b  8ad0  MOV DL,AL
00d3b91d  7536  JNZ 0x00d3b955
00d3b91f  d903  FLD float ptr [EBX]
00d3b921  d864240c  FSUB float ptr [ESP + 0xc]
00d3b925  d9e1  FABS
00d3b927  d9c9  FXCH
00d3b929  dbf1  FCOMI ST0,ST1
00d3b92b  ddd9  FSTP ST1
00d3b92d  7226  JC 0x00d3b955
00d3b92f  d94304  FLD float ptr [EBX + 0x4]
00d3b932  d8642410  FSUB float ptr [ESP + 0x10]
00d3b936  d9e1  FABS
00d3b938  d9c9  FXCH
00d3b93a  dbf1  FCOMI ST0,ST1
00d3b93c  ddd9  FSTP ST1
00d3b93e  7215  JC 0x00d3b955
00d3b940  83be8000000001  CMP dword ptr [ESI + 0x80],0x1
00d3b947  0f8586010000  JNZ 0x00d3bad3
00d3b94d  84d2  TEST DL,DL
00d3b94f  0f857e010000  JNZ 0x00d3bad3
00d3b955  837e5c00  CMP dword ptr [ESI + 0x5c],0x0
00d3b959  8b8604010000  MOV EAX,dword ptr [ESI + 0x104]
00d3b95f  8b9608010000  MOV EDX,dword ptr [ESI + 0x108]
00d3b965  0f57c0  XORPS XMM0,XMM0
00d3b968  55  PUSH EBP
00d3b969  8bae0c010000  MOV EBP,dword ptr [ESI + 0x10c]
00d3b96f  57  PUSH EDI
00d3b970  8dbe04010000  LEA EDI,[ESI + 0x104]
00d3b976  89442420  MOV dword ptr [ESP + 0x20],EAX
00d3b97a  8b4708  MOV EAX,dword ptr [EDI + 0x8]
00d3b97d  89542424  MOV dword ptr [ESP + 0x24],EDX
00d3b981  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00d3b985  89442428  MOV dword ptr [ESP + 0x28],EAX
00d3b989  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00d3b98d  8913  MOV dword ptr [EBX],EDX
00d3b98f  8b5704  MOV EDX,dword ptr [EDI + 0x4]
00d3b992  894304  MOV dword ptr [EBX + 0x4],EAX
00d3b995  894b08  MOV dword ptr [EBX + 0x8],ECX
00d3b998  8b0f  MOV ECX,dword ptr [EDI]
00d3b99a  894c242c  MOV dword ptr [ESP + 0x2c],ECX
00d3b99e  89542430  MOV dword ptr [ESP + 0x30],EDX
00d3b9a2  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00d3b9a8  7463  JZ 0x00d3ba0d
00d3b9aa  6a01  PUSH 0x1
00d3b9ac  ddd8  FSTP ST0
00d3b9ae  8bce  MOV ECX,ESI
00d3b9b0  e8bbe6ffff  CALL 0x00d3a070
00d3b9b5  8b4e5c  MOV ECX,dword ptr [ESI + 0x5c]
00d3b9b8  8b01  MOV EAX,dword ptr [ECX]
00d3b9ba  8b5034  MOV EDX,dword ptr [EAX + 0x34]
00d3b9bd  ffd2  CALL EDX
00d3b9bf  d95c2410  FSTP float ptr [ESP + 0x10]
00d3b9c3  8b4e5c  MOV ECX,dword ptr [ESI + 0x5c]
00d3b9c6  8b01  MOV EAX,dword ptr [ECX]
00d3b9c8  8b5020  MOV EDX,dword ptr [EAX + 0x20]
00d3b9cb  ffd2  CALL EDX
00d3b9cd  8b4e60  MOV ECX,dword ptr [ESI + 0x60]
00d3b9d0  85c9  TEST ECX,ECX
00d3b9d2  7407  JZ 0x00d3b9db
00d3b9d4  8b01  MOV EAX,dword ptr [ECX]
00d3b9d6  8b5020  MOV EDX,dword ptr [EAX + 0x20]
00d3b9d9  ffd2  CALL EDX
00d3b9db  8bce  MOV ECX,ESI
00d3b9dd  e87e30f9ff  CALL 0x00ccea60
00d3b9e2  8bce  MOV ECX,ESI
00d3b9e4  e8277ef9ff  CALL 0x00cd3810
00d3b9e9  8bce  MOV ECX,ESI
00d3b9eb  e8607ef9ff  CALL 0x00cd3850
00d3b9f0  8b442440  MOV EAX,dword ptr [ESP + 0x40]
00d3b9f4  6a00  PUSH 0x0
00d3b9f6  50  PUSH EAX
00d3b9f7  8bce  MOV ECX,ESI
00d3b9f9  e842f8ffff  CALL 0x00d3b240
00d3b9fe  6a00  PUSH 0x0
00d3ba00  8bce  MOV ECX,ESI
00d3ba02  e869e6ffff  CALL 0x00d3a070
00d3ba07  d905b4850801  FLD float ptr [0x010885b4]
00d3ba0d  3b6f08  CMP EBP,dword ptr [EDI + 0x8]
00d3ba10  751d  JNZ 0x00d3ba2f
00d3ba12  d944242c  FLD float ptr [ESP + 0x2c]
00d3ba16  d827  FSUB float ptr [EDI]
00d3ba18  d9e1  FABS
00d3ba1a  dff1  FCOMIP ST0,ST1
00d3ba1c  7711  JA 0x00d3ba2f
00d3ba1e  d9442430  FLD float ptr [ESP + 0x30]
00d3ba22  d86704  FSUB float ptr [EDI + 0x4]
00d3ba25  d9e1  FABS
00d3ba27  dff1  FCOMIP ST0,ST1
00d3ba29  ddd8  FSTP ST0
00d3ba2b  767f  JBE 0x00d3baac
00d3ba2d  eb02  JMP 0x00d3ba31
00d3ba2f  ddd8  FSTP ST0
00d3ba31  8d4c2420  LEA ECX,[ESP + 0x20]
00d3ba35  51  PUSH ECX
00d3ba36  8bcb  MOV ECX,EBX
00d3ba38  e8e345d3ff  CALL 0x00a70020
00d3ba3d  84c0  TEST AL,AL
00d3ba3f  746b  JZ 0x00d3baac
00d3ba41  8b4e5c  MOV ECX,dword ptr [ESI + 0x5c]
00d3ba44  85c9  TEST ECX,ECX
00d3ba46  7416  JZ 0x00d3ba5e
00d3ba48  8b11  MOV EDX,dword ptr [ECX]
00d3ba4a  8b4234  MOV EAX,dword ptr [EDX + 0x34]
00d3ba4d  ffd0  CALL EAX
00d3ba4f  d95c2440  FSTP float ptr [ESP + 0x40]
00d3ba53  f30f10442440  MOVSS XMM0,dword ptr [ESP + 0x40]
00d3ba59  0f57c9  XORPS XMM1,XMM1
00d3ba5c  eb06  JMP 0x00d3ba64
00d3ba5e  0f57c9  XORPS XMM1,XMM1
00d3ba61  0f28c1  MOVAPS XMM0,XMM1
00d3ba64  f30f5c442410  SUBSS XMM0,dword ptr [ESP + 0x10]
00d3ba6a  f30f1015b0850801  MOVSS XMM2,dword ptr [0x010885b0]
00d3ba72  0f28d8  MOVAPS XMM3,XMM0
00d3ba75  f30f5cda  SUBSS XMM3,XMM2
00d3ba79  0f2fd9  COMISS XMM3,XMM1
00d3ba7c  7610  JBE 0x00d3ba8e
00d3ba7e  8b0dacc01e01  MOV ECX,dword ptr [0x011ec0ac]
00d3ba84  8b15a8c01e01  MOV EDX,dword ptr [0x011ec0a8]
00d3ba8a  51  PUSH ECX
00d3ba8b  52  PUSH EDX
00d3ba8c  eb16  JMP 0x00d3baa4
00d3ba8e  f30f58c2  ADDSS XMM0,XMM2
00d3ba92  0f2fc8  COMISS XMM1,XMM0
00d3ba95  7615  JBE 0x00d3baac
00d3ba97  a194c01e01  MOV EAX,[0x011ec094]
00d3ba9c  8b0d90c01e01  MOV ECX,dword ptr [0x011ec090]
00d3baa2  50  PUSH EAX
00d3baa3  51  PUSH ECX
00d3baa4  e8f749f9ff  CALL 0x00cd04a0
00d3baa9  83c408  ADD ESP,0x8
00d3baac  8b1598eb1e01  MOV EDX,dword ptr [0x011eeb98]
00d3bab2  52  PUSH EDX
00d3bab3  6a01  PUSH 0x1
00d3bab5  57  PUSH EDI
00d3bab6  8d44242c  LEA EAX,[ESP + 0x2c]
00d3baba  50  PUSH EAX
00d3babb  8d8e8c000000  LEA ECX,[ESI + 0x8c]
00d3bac1  51  PUSH ECX
00d3bac2  8bce  MOV ECX,ESI
00d3bac4  e8e7ebffff  CALL 0x00d3a6b0
00d3bac9  5f  POP EDI
00d3baca  5d  POP EBP
00d3bacb  5b  POP EBX
00d3bacc  5e  POP ESI
00d3bacd  83c428  ADD ESP,0x28
00d3bad0  c20800  RET 0x8
00d3bad3  ddd8  FSTP ST0
00d3bad5  5b  POP EBX
00d3bad6  5e  POP ESI
00d3bad7  83c428  ADD ESP,0x28
00d3bada  c20800  RET 0x8
