# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uchar LotGrid_ReadExternalDimensions(void * this, pointer context, uint resourceGroup, uint instanceLow, uint instanceHigh, int minimumLevel, int maximumLevel, uint * widthOutput, uint * depthOutput, uint * elementCountOutput)
Owned ranges: [[00c6da60, 00c6db8e]]

00c6da60  83ec10  SUB ESP,0x10
00c6da63  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00c6da67  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00c6da6b  56  PUSH ESI
00c6da6c  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00c6da70  837e0400  CMP dword ptr [ESI + 0x4],0x0
00c6da74  57  PUSH EDI
00c6da75  8bf9  MOV EDI,ECX
00c6da77  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00c6da7b  89442408  MOV dword ptr [ESP + 0x8],EAX
00c6da7f  894c240c  MOV dword ptr [ESP + 0xc],ECX
00c6da83  c74424103a5325b1  MOV dword ptr [ESP + 0x10],0xb125533a
00c6da8b  89542414  MOV dword ptr [ESP + 0x14],EDX
00c6da8f  7516  JNZ 0x00c6daa7
00c6da91  6a00  PUSH 0x0
00c6da93  8d44240c  LEA EAX,[ESP + 0xc]
00c6da97  50  PUSH EAX
00c6da98  8bce  MOV ECX,ESI
00c6da9a  e821aab6ff  CALL 0x007d84c0
00c6da9f  84c0  TEST AL,AL
00c6daa1  0f84dd000000  JZ 0x00c6db84
00c6daa7  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c6daaa  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c6daad  53  PUSH EBX
00c6daae  55  PUSH EBP
00c6daaf  51  PUSH ECX
00c6dab0  8d542430  LEA EDX,[ESP + 0x30]
00c6dab4  52  PUSH EDX
00c6dab5  50  PUSH EAX
00c6dab6  e8c5fe86ff  CALL 0x004dd980
00c6dabb  83c40c  ADD ESP,0xc
00c6dabe  8bce  MOV ECX,ESI
00c6dac0  50  PUSH EAX
00c6dac1  e82a9fb6ff  CALL 0x007d79f0
00c6dac6  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c6dac9  8b5c243c  MOV EBX,dword ptr [ESP + 0x3c]
00c6dacd  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c6dad0  51  PUSH ECX
00c6dad1  53  PUSH EBX
00c6dad2  52  PUSH EDX
00c6dad3  e8a8fe86ff  CALL 0x004dd980
00c6dad8  83c40c  ADD ESP,0xc
00c6dadb  8bce  MOV ECX,ESI
00c6dadd  50  PUSH EAX
00c6dade  e80d9fb6ff  CALL 0x007d79f0
00c6dae3  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c6dae6  8b6c2440  MOV EBP,dword ptr [ESP + 0x40]
00c6daea  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c6daed  50  PUSH EAX
00c6daee  55  PUSH EBP
00c6daef  51  PUSH ECX
00c6daf0  e88bfe86ff  CALL 0x004dd980
00c6daf5  83c40c  ADD ESP,0xc
00c6daf8  8bce  MOV ECX,ESI
00c6dafa  50  PUSH EAX
00c6dafb  e8f09eb6ff  CALL 0x007d79f0
00c6db00  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00c6db03  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c6db06  52  PUSH EDX
00c6db07  8d44242c  LEA EAX,[ESP + 0x2c]
00c6db0b  50  PUSH EAX
00c6db0c  51  PUSH ECX
00c6db0d  e86efe86ff  CALL 0x004dd980
00c6db12  83c40c  ADD ESP,0xc
00c6db15  8bce  MOV ECX,ESI
00c6db17  50  PUSH EAX
00c6db18  e8d39eb6ff  CALL 0x007d79f0
00c6db1d  8b13  MOV EDX,dword ptr [EBX]
00c6db1f  0faf5500  IMUL EDX,dword ptr [EBP]
00c6db23  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00c6db27  8b4c2444  MOV ECX,dword ptr [ESP + 0x44]
00c6db2b  0fafd0  IMUL EDX,EAX
00c6db2e  8911  MOV dword ptr [ECX],EDX
00c6db30  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00c6db34  85c9  TEST ECX,ECX
00c6db36  7d14  JGE 0x00c6db4c
00c6db38  8b17  MOV EDX,dword ptr [EDI]
00c6db3a  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c6db3d  6a00  PUSH 0x0
00c6db3f  f7d9  NEG ECX
00c6db41  6a00  PUSH 0x0
00c6db43  51  PUSH ECX
00c6db44  8bcf  MOV ECX,EDI
00c6db46  ffd0  CALL EAX
00c6db48  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00c6db4c  8b6f04  MOV EBP,dword ptr [EDI + 0x4]
00c6db4f  8b5f08  MOV EBX,dword ptr [EDI + 0x8]
00c6db52  8b17  MOV EDX,dword ptr [EDI]
00c6db54  8b5208  MOV EDX,dword ptr [EDX + 0x8]
00c6db57  8bcd  MOV ECX,EBP
00c6db59  0fafcb  IMUL ECX,EBX
00c6db5c  0fafc8  IMUL ECX,EAX
00c6db5f  51  PUSH ECX
00c6db60  8bcf  MOV ECX,EDI
00c6db62  89442428  MOV dword ptr [ESP + 0x28],EAX
00c6db66  ffd2  CALL EDX
00c6db68  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00c6db6c  896f04  MOV dword ptr [EDI + 0x4],EBP
00c6db6f  895f08  MOV dword ptr [EDI + 0x8],EBX
00c6db72  89470c  MOV dword ptr [EDI + 0xc],EAX
00c6db75  807e1400  CMP byte ptr [ESI + 0x14],0x0
00c6db79  5d  POP EBP
00c6db7a  5b  POP EBX
00c6db7b  7507  JNZ 0x00c6db84
00c6db7d  8bce  MOV ECX,ESI
00c6db7f  e8ec9eb6ff  CALL 0x007d7a70
00c6db84  8a4614  MOV AL,byte ptr [ESI + 0x14]
00c6db87  5f  POP EDI
00c6db88  5e  POP ESI
00c6db89  83c410  ADD ESP,0x10
00c6db8c  c22400  RET 0x24
