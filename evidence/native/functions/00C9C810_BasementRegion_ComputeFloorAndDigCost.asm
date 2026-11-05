# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: float10 BasementRegion_ComputeFloorAndDigCost(void * param_1, char param_2, char param_3, char * param_4, char * param_5, char param_6)
Owned ranges: [[00c9c810, 00c9ca6c] [00c9ca70, 00c9cb0d]]

00c9c810  83ec7c  SUB ESP,0x7c
00c9c813  0f57c0  XORPS XMM0,XMM0
00c9c816  53  PUSH EBX
00c9c817  8a9c248c000000  MOV BL,byte ptr [ESP + 0x8c]
00c9c81e  84db  TEST BL,BL
00c9c820  55  PUSH EBP
00c9c821  8bac2488000000  MOV EBP,dword ptr [ESP + 0x88]
00c9c828  56  PUSH ESI
00c9c829  8b3534e01e01  MOV ESI,dword ptr [0x011ee034]
00c9c82f  57  PUSH EDI
00c9c830  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00c9c836  743a  JZ 0x00c9c872
00c9c838  85ed  TEST EBP,EBP
00c9c83a  7410  JZ 0x00c9c84c
00c9c83c  80bdbc04000000  CMP byte ptr [EBP + 0x4bc],0x0
00c9c843  7407  JZ 0x00c9c84c
00c9c845  e876ebfeff  CALL 0x00c8b3c0
00c9c84a  eb05  JMP 0x00c9c851
00c9c84c  e85febfeff  CALL 0x00c8b3b0
00c9c851  8b08  MOV ECX,dword ptr [EAX]
00c9c853  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c9c856  894c2424  MOV dword ptr [ESP + 0x24],ECX
00c9c85a  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00c9c85d  89542428  MOV dword ptr [ESP + 0x28],EDX
00c9c861  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00c9c864  894c242c  MOV dword ptr [ESP + 0x2c],ECX
00c9c868  89542430  MOV dword ptr [ESP + 0x30],EDX
00c9c86c  8d442424  LEA EAX,[ESP + 0x24]
00c9c870  eb05  JMP 0x00c9c877
00c9c872  b8a0c81e01  MOV EAX,0x11ec8a0
00c9c877  8b08  MOV ECX,dword ptr [EAX]
00c9c879  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c9c87c  894c243c  MOV dword ptr [ESP + 0x3c],ECX
00c9c880  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00c9c883  89542440  MOV dword ptr [ESP + 0x40],EDX
00c9c887  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00c9c88a  8d44243c  LEA EAX,[ESP + 0x3c]
00c9c88e  894c2444  MOV dword ptr [ESP + 0x44],ECX
00c9c892  50  PUSH EAX
00c9c893  8bce  MOV ECX,ESI
00c9c895  8954244c  MOV dword ptr [ESP + 0x4c],EDX
00c9c899  e84222ffff  CALL 0x00c8eae0
00c9c89e  80bc24a400000000  CMP byte ptr [ESP + 0xa4],0x0
00c9c8a6  740a  JZ 0x00c9c8b2
00c9c8a8  f30f10051ce5f900  MOVSS XMM0,dword ptr [0x00f9e51c]
00c9c8b0  eb08  JMP 0x00c9c8ba
00c9c8b2  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00c9c8ba  85c0  TEST EAX,EAX
00c9c8bc  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00c9c8c2  7407  JZ 0x00c9c8cb
00c9c8c4  f30f104058  MOVSS XMM0,dword ptr [EAX + 0x58]
00c9c8c9  eb03  JMP 0x00c9c8ce
00c9c8cb  0f57c0  XORPS XMM0,XMM0
00c9c8ce  8bbd90020000  MOV EDI,dword ptr [EBP + 0x290]
00c9c8d4  f30f11442434  MOVSS dword ptr [ESP + 0x34],XMM0
00c9c8da  897c2438  MOV dword ptr [ESP + 0x38],EDI
00c9c8de  e84d35e1ff  CALL 0x00aafe30
00c9c8e3  8bc8  MOV ECX,EAX
00c9c8e5  e8b643e1ff  CALL 0x00ab0ca0
00c9c8ea  d95c241c  FSTP float ptr [ESP + 0x1c]
00c9c8ee  80bc249400000000  CMP byte ptr [ESP + 0x94],0x0
00c9c8f6  0f8545010000  JNZ 0x00c9ca41
00c9c8fc  8bbc24a0000000  MOV EDI,dword ptr [ESP + 0xa0]
00c9c903  8a1f  MOV BL,byte ptr [EDI]
00c9c905  8bac249c000000  MOV EBP,dword ptr [ESP + 0x9c]
00c9c90c  3a5d00  CMP BL,byte ptr [EBP]
00c9c90f  8bc7  MOV EAX,EDI
00c9c911  7c02  JL 0x00c9c915
00c9c913  8bc5  MOV EAX,EBP
00c9c915  0fbe08  MOVSX ECX,byte ptr [EAX]
00c9c918  8a5701  MOV DL,byte ptr [EDI + 0x1]
00c9c91b  3a5501  CMP DL,byte ptr [EBP + 0x1]
00c9c91e  894c2414  MOV dword ptr [ESP + 0x14],ECX
00c9c922  8d4f01  LEA ECX,[EDI + 0x1]
00c9c925  8d7501  LEA ESI,[EBP + 0x1]
00c9c928  8bc1  MOV EAX,ECX
00c9c92a  7c02  JL 0x00c9c92e
00c9c92c  8bc6  MOV EAX,ESI
00c9c92e  385d00  CMP byte ptr [EBP],BL
00c9c931  0fbe10  MOVSX EDX,byte ptr [EAX]
00c9c934  8bc7  MOV EAX,EDI
00c9c936  7c02  JL 0x00c9c93a
00c9c938  8bc5  MOV EAX,EBP
00c9c93a  8a1e  MOV BL,byte ptr [ESI]
00c9c93c  3a19  CMP BL,byte ptr [ECX]
00c9c93e  0fbe00  MOVSX EAX,byte ptr [EAX]
00c9c941  7c02  JL 0x00c9c945
00c9c943  8bce  MOV ECX,ESI
00c9c945  8a5c2414  MOV BL,byte ptr [ESP + 0x14]
00c9c949  2c01  SUB AL,0x1
00c9c94b  88442418  MOV byte ptr [ESP + 0x18],AL
00c9c94f  8a01  MOV AL,byte ptr [ECX]
00c9c951  8a4f02  MOV CL,byte ptr [EDI + 0x2]
00c9c954  88542415  MOV byte ptr [ESP + 0x15],DL
00c9c958  8a5502  MOV DL,byte ptr [EBP + 0x2]
00c9c95b  2c01  SUB AL,0x1
00c9c95d  88542416  MOV byte ptr [ESP + 0x16],DL
00c9c961  8d542418  LEA EDX,[ESP + 0x18]
00c9c965  88442419  MOV byte ptr [ESP + 0x19],AL
00c9c969  52  PUSH EDX
00c9c96a  8d442418  LEA EAX,[ESP + 0x18]
00c9c96e  884c241e  MOV byte ptr [ESP + 0x1e],CL
00c9c972  50  PUSH EAX
00c9c973  8d4c242c  LEA ECX,[ESP + 0x2c]
00c9c977  885c241c  MOV byte ptr [ESP + 0x1c],BL
00c9c97b  e870a2e5ff  CALL 0x00af6bf0
00c9c980  8d4c2424  LEA ECX,[ESP + 0x24]
00c9c984  e8079be5ff  CALL 0x00af6490
00c9c989  84c0  TEST AL,AL
00c9c98b  0f8571010000  JNZ 0x00c9cb02
00c9c991  8b7c2438  MOV EDI,dword ptr [ESP + 0x38]
00c9c995  8bac2490000000  MOV EBP,dword ptr [ESP + 0x90]
00c9c99c  8a9c2498000000  MOV BL,byte ptr [ESP + 0x98]
00c9c9a3  8d4c2424  LEA ECX,[ESP + 0x24]
00c9c9a7  e8349be5ff  CALL 0x00af64e0
00c9c9ac  8bf0  MOV ESI,EAX
00c9c9ae  56  PUSH ESI
00c9c9af  8bcd  MOV ECX,EBP
00c9c9b1  e85aa3e1ff  CALL 0x00ab6d10
00c9c9b6  3ac3  CMP AL,BL
00c9c9b8  7461  JZ 0x00c9ca1b
00c9c9ba  84db  TEST BL,BL
00c9c9bc  7422  JZ 0x00c9c9e0
00c9c9be  f30f1044241c  MOVSS XMM0,dword ptr [ESP + 0x1c]
00c9c9c4  f30f58442434  ADDSS XMM0,dword ptr [ESP + 0x34]
00c9c9ca  f30f5905c8f80601  MULSS XMM0,dword ptr [0x0106f8c8]
00c9c9d2  f30f58442410  ADDSS XMM0,dword ptr [ESP + 0x10]
00c9c9d8  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00c9c9de  eb3b  JMP 0x00c9ca1b
00c9c9e0  8d4c244c  LEA ECX,[ESP + 0x4c]
00c9c9e4  e887f0e5ff  CALL 0x00afba70
00c9c9e9  8d4c244c  LEA ECX,[ESP + 0x4c]
00c9c9ed  51  PUSH ECX
00c9c9ee  56  PUSH ESI
00c9c9ef  8bcf  MOV ECX,EDI
00c9c9f1  e89a30dfff  CALL 0x00a8fa90
00c9c9f6  8d54244c  LEA EDX,[ESP + 0x4c]
00c9c9fa  6a00  PUSH 0x0
00c9c9fc  52  PUSH EDX
00c9c9fd  e85e440100  CALL 0x00cb0e60
00c9ca02  d8442424  FADD float ptr [ESP + 0x24]
00c9ca06  83c408  ADD ESP,0x8
00c9ca09  d84c2420  FMUL float ptr [ESP + 0x20]
00c9ca0d  d80dc8f80601  FMUL float ptr [0x0106f8c8]
00c9ca13  d86c2410  FSUBR float ptr [ESP + 0x10]
00c9ca17  d95c2410  FSTP float ptr [ESP + 0x10]
00c9ca1b  8d4c2424  LEA ECX,[ESP + 0x24]
00c9ca1f  e87c9ae5ff  CALL 0x00af64a0
00c9ca24  8d4c2424  LEA ECX,[ESP + 0x24]
00c9ca28  e8639ae5ff  CALL 0x00af6490
00c9ca2d  84c0  TEST AL,AL
00c9ca2f  0f846effffff  JZ 0x00c9c9a3
00c9ca35  d9442410  FLD float ptr [ESP + 0x10]
00c9ca39  5f  POP EDI
00c9ca3a  5e  POP ESI
00c9ca3b  5d  POP EBP
00c9ca3c  5b  POP EBX
00c9ca3d  83c47c  ADD ESP,0x7c
00c9ca40  c3  RET
00c9ca41  8b8424a0000000  MOV EAX,dword ptr [ESP + 0xa0]
00c9ca48  8b8c249c000000  MOV ECX,dword ptr [ESP + 0x9c]
00c9ca4f  50  PUSH EAX
00c9ca50  51  PUSH ECX
00c9ca51  8d4c242c  LEA ECX,[ESP + 0x2c]
00c9ca55  e826a7e5ff  CALL 0x00af7180
00c9ca5a  8d4c2424  LEA ECX,[ESP + 0x24]
00c9ca5e  e86d9ee5ff  CALL 0x00af68d0
00c9ca63  84c0  TEST AL,AL
00c9ca65  0f8597000000  JNZ 0x00c9cb02
00c9ca6b  eb03  JMP 0x00c9ca70
00c9ca6d  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
00c9ca70  8d4c2424  LEA ECX,[ESP + 0x24]
00c9ca74  e8479ee5ff  CALL 0x00af68c0
00c9ca79  8bf0  MOV ESI,EAX
00c9ca7b  56  PUSH ESI
00c9ca7c  8bcd  MOV ECX,EBP
00c9ca7e  e88da2e1ff  CALL 0x00ab6d10
00c9ca83  3ac3  CMP AL,BL
00c9ca85  7461  JZ 0x00c9cae8
00c9ca87  84db  TEST BL,BL
00c9ca89  7422  JZ 0x00c9caad
00c9ca8b  f30f1044241c  MOVSS XMM0,dword ptr [ESP + 0x1c]
00c9ca91  f30f58442434  ADDSS XMM0,dword ptr [ESP + 0x34]
00c9ca97  f30f5905c8f80601  MULSS XMM0,dword ptr [0x0106f8c8]
00c9ca9f  f30f58442410  ADDSS XMM0,dword ptr [ESP + 0x10]
00c9caa5  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00c9caab  eb3b  JMP 0x00c9cae8
00c9caad  8d4c244c  LEA ECX,[ESP + 0x4c]
00c9cab1  e8baefe5ff  CALL 0x00afba70
00c9cab6  8d54244c  LEA EDX,[ESP + 0x4c]
00c9caba  52  PUSH EDX
00c9cabb  56  PUSH ESI
00c9cabc  8bcf  MOV ECX,EDI
00c9cabe  e8cd2fdfff  CALL 0x00a8fa90
00c9cac3  8d44244c  LEA EAX,[ESP + 0x4c]
00c9cac7  6a00  PUSH 0x0
00c9cac9  50  PUSH EAX
00c9caca  e891430100  CALL 0x00cb0e60
00c9cacf  d8442424  FADD float ptr [ESP + 0x24]
00c9cad3  83c408  ADD ESP,0x8
00c9cad6  d84c2420  FMUL float ptr [ESP + 0x20]
00c9cada  d80dc8f80601  FMUL float ptr [0x0106f8c8]
00c9cae0  d86c2410  FSUBR float ptr [ESP + 0x10]
00c9cae4  d95c2410  FSTP float ptr [ESP + 0x10]
00c9cae8  8d4c2424  LEA ECX,[ESP + 0x24]
00c9caec  e87fa3e5ff  CALL 0x00af6e70
00c9caf1  8d4c2424  LEA ECX,[ESP + 0x24]
00c9caf5  e8d69de5ff  CALL 0x00af68d0
00c9cafa  84c0  TEST AL,AL
00c9cafc  0f846effffff  JZ 0x00c9ca70
00c9cb02  d9442410  FLD float ptr [ESP + 0x10]
00c9cb06  5f  POP EDI
00c9cb07  5e  POP ESI
00c9cb08  5d  POP EBP
00c9cb09  5b  POP EBX
00c9cb0a  83c47c  ADD ESP,0x7c
00c9cb0d  c3  RET
