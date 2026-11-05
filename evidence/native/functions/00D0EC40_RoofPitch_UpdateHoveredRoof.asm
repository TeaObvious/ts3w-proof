# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00d0ec40 RoofPitch_UpdateHoveredRoof
# Body [[00d0ec40, 00d0ed8d]]; owned bytes=334
00d0ec40  55  PUSH EBP
00d0ec41  8bec  MOV EBP,ESP
00d0ec43  83e4f0  AND ESP,0xfffffff0
00d0ec46  83ec74  SUB ESP,0x74
00d0ec49  53  PUSH EBX
00d0ec4a  56  PUSH ESI
00d0ec4b  8bf1  MOV ESI,ECX
00d0ec4d  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00d0ec50  8b98ac020000  MOV EBX,dword ptr [EAX + 0x2ac]
00d0ec56  33c9  XOR ECX,ECX
00d0ec58  3bd9  CMP EBX,ECX
00d0ec5a  57  PUSH EDI
00d0ec5b  0f8424010000  JZ 0x00d0ed85
00d0ec61  8b550c  MOV EDX,dword ptr [EBP + 0xc]
00d0ec64  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00d0ec6c  51  PUSH ECX
00d0ec6d  51  PUSH ECX
00d0ec6e  51  PUSH ECX
00d0ec6f  894c2440  MOV dword ptr [ESP + 0x40],ECX
00d0ec73  884c2446  MOV byte ptr [ESP + 0x46],CL
00d0ec77  884c244a  MOV byte ptr [ESP + 0x4a],CL
00d0ec7b  884c244d  MOV byte ptr [ESP + 0x4d],CL
00d0ec7f  894c246c  MOV dword ptr [ESP + 0x6c],ECX
00d0ec83  8d4c242c  LEA ECX,[ESP + 0x2c]
00d0ec87  51  PUSH ECX
00d0ec88  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
00d0ec8b  52  PUSH EDX
00d0ec8c  51  PUSH ECX
00d0ec8d  50  PUSH EAX
00d0ec8e  8bce  MOV ECX,ESI
00d0ec90  f30f11442448  MOVSS dword ptr [ESP + 0x48],XMM0
00d0ec96  f30f1144244c  MOVSS dword ptr [ESP + 0x4c],XMM0
00d0ec9c  c6442454ff  MOV byte ptr [ESP + 0x54],0xff
00d0eca1  c6442455ff  MOV byte ptr [ESP + 0x55],0xff
00d0eca6  c6442457ff  MOV byte ptr [ESP + 0x57],0xff
00d0ecab  c6442458ff  MOV byte ptr [ESP + 0x58],0xff
00d0ecb0  c6442459ff  MOV byte ptr [ESP + 0x59],0xff
00d0ecb5  c644245bff  MOV byte ptr [ESP + 0x5b],0xff
00d0ecba  c644245cff  MOV byte ptr [ESP + 0x5c],0xff
00d0ecbf  e8ac57fcff  CALL 0x00cd4470
00d0ecc4  84c0  TEST AL,AL
00d0ecc6  0f848f000000  JZ 0x00d0ed5b
00d0eccc  837c242006  CMP dword ptr [ESP + 0x20],0x6
00d0ecd1  8d7e5c  LEA EDI,[ESI + 0x5c]
00d0ecd4  7551  JNZ 0x00d0ed27
00d0ecd6  8b442464  MOV EAX,dword ptr [ESP + 0x64]
00d0ecda  3b07  CMP EAX,dword ptr [EDI]
00d0ecdc  747d  JZ 0x00d0ed5b
00d0ecde  50  PUSH EAX
00d0ecdf  8bcb  MOV ECX,EBX
00d0ece1  e82a72e8ff  CALL 0x00b95f10
00d0ece6  84c0  TEST AL,AL
00d0ece8  7471  JZ 0x00d0ed5b
00d0ecea  8b5640  MOV EDX,dword ptr [ESI + 0x40]
00d0eced  8b463c  MOV EAX,dword ptr [ESI + 0x3c]
00d0ecf0  8b1c90  MOV EBX,dword ptr [EAX + EDX*0x4]
00d0ecf3  8d4e38  LEA ECX,[ESI + 0x38]
00d0ecf6  57  PUSH EDI
00d0ecf7  8d54241c  LEA EDX,[ESP + 0x1c]
00d0ecfb  52  PUSH EDX
00d0ecfc  e8bf39baff  CALL 0x008b26c0
00d0ed01  3918  CMP dword ptr [EAX],EBX
00d0ed03  750c  JNZ 0x00d0ed11
00d0ed05  8b07  MOV EAX,dword ptr [EDI]
00d0ed07  6a00  PUSH 0x0
00d0ed09  50  PUSH EAX
00d0ed0a  8bce  MOV ECX,ESI
00d0ed0c  e86ffdffff  CALL 0x00d0ea80
00d0ed11  8b4c2464  MOV ECX,dword ptr [ESP + 0x64]
00d0ed15  6a01  PUSH 0x1
00d0ed17  51  PUSH ECX
00d0ed18  8bce  MOV ECX,ESI
00d0ed1a  e861fdffff  CALL 0x00d0ea80
00d0ed1f  8b542464  MOV EDX,dword ptr [ESP + 0x64]
00d0ed23  8917  MOV dword ptr [EDI],EDX
00d0ed25  eb34  JMP 0x00d0ed5b
00d0ed27  8b07  MOV EAX,dword ptr [EDI]
00d0ed29  83f8ff  CMP EAX,-0x1
00d0ed2c  742d  JZ 0x00d0ed5b
00d0ed2e  8b4640  MOV EAX,dword ptr [ESI + 0x40]
00d0ed31  8b563c  MOV EDX,dword ptr [ESI + 0x3c]
00d0ed34  8b1c82  MOV EBX,dword ptr [EDX + EAX*0x4]
00d0ed37  8d4e38  LEA ECX,[ESI + 0x38]
00d0ed3a  57  PUSH EDI
00d0ed3b  8d44241c  LEA EAX,[ESP + 0x1c]
00d0ed3f  50  PUSH EAX
00d0ed40  e87b39baff  CALL 0x008b26c0
00d0ed45  3918  CMP dword ptr [EAX],EBX
00d0ed47  750c  JNZ 0x00d0ed55
00d0ed49  8b07  MOV EAX,dword ptr [EDI]
00d0ed4b  6a00  PUSH 0x0
00d0ed4d  50  PUSH EAX
00d0ed4e  8bce  MOV ECX,ESI
00d0ed50  e82bfdffff  CALL 0x00d0ea80
00d0ed55  c707ffffffff  MOV dword ptr [EDI],0xffffffff
00d0ed5b  8b4c2460  MOV ECX,dword ptr [ESP + 0x60]
00d0ed5f  85c9  TEST ECX,ECX
00d0ed61  7422  JZ 0x00d0ed85
00d0ed63  8d4104  LEA EAX,[ECX + 0x4]
00d0ed66  8bd0  MOV EDX,EAX
00d0ed68  83ceff  OR ESI,0xffffffff
00d0ed6b  f00fc132  XADD.LOCK dword ptr [EDX],ESI
00d0ed6f  4e  DEC ESI
00d0ed70  7513  JNZ 0x00d0ed85
00d0ed72  ba01000000  MOV EDX,0x1
00d0ed77  8710  XCHG dword ptr [EAX],EDX
00d0ed79  85c9  TEST ECX,ECX
00d0ed7b  7408  JZ 0x00d0ed85
00d0ed7d  8b01  MOV EAX,dword ptr [ECX]
00d0ed7f  8b10  MOV EDX,dword ptr [EAX]
00d0ed81  6a01  PUSH 0x1
00d0ed83  ffd2  CALL EDX
00d0ed85  5f  POP EDI
00d0ed86  5e  POP ESI
00d0ed87  5b  POP EBX
00d0ed88  8be5  MOV ESP,EBP
00d0ed8a  5d  POP EBP
00d0ed8b  c20800  RET 0x8
