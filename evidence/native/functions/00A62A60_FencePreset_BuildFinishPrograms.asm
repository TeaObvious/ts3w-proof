# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 FencePreset_BuildFinishPrograms(int param_1, int * param_2, uint param_3, void * param_4)
Owned ranges: [[00a62a60, 00a62dad]]

00a62a60  83ec48  SUB ESP,0x48
00a62a63  53  PUSH EBX
00a62a64  55  PUSH EBP
00a62a65  8b6c2458  MOV EBP,dword ptr [ESP + 0x58]
00a62a69  33db  XOR EBX,EBX
00a62a6b  3beb  CMP EBP,EBX
00a62a6d  56  PUSH ESI
00a62a6e  57  PUSH EDI
00a62a6f  0f842f030000  JZ 0x00a62da4
00a62a75  395c245c  CMP dword ptr [ESP + 0x5c],EBX
00a62a79  0f8425030000  JZ 0x00a62da4
00a62a7f  8bcd  MOV ECX,EBP
00a62a81  e83a202300  CALL 0x00c94ac0
00a62a86  8bf8  MOV EDI,EAX
00a62a88  3bfb  CMP EDI,EBX
00a62a8a  7610  JBE 0x00a62a9c
00a62a8c  8b442464  MOV EAX,dword ptr [ESP + 0x64]
00a62a90  50  PUSH EAX
00a62a91  8bcd  MOV ECX,EBP
00a62a93  e8e81c2300  CALL 0x00c94780
00a62a98  8bf0  MOV ESI,EAX
00a62a9a  eb02  JMP 0x00a62a9e
00a62a9c  33f6  XOR ESI,ESI
00a62a9e  3bfb  CMP EDI,EBX
00a62aa0  0f86fe020000  JBE 0x00a62da4
00a62aa6  8d4e01  LEA ECX,[ESI + 0x1]
00a62aa9  3bcf  CMP ECX,EDI
00a62aab  0f87f3020000  JA 0x00a62da4
00a62ab1  83feff  CMP ESI,-0x1
00a62ab4  0f84ea020000  JZ 0x00a62da4
00a62aba  8d4c2410  LEA ECX,[ESP + 0x10]
00a62abe  895c2410  MOV dword ptr [ESP + 0x10],EBX
00a62ac2  e8d9c4ceff  CALL 0x0074efa0
00a62ac7  50  PUSH EAX
00a62ac8  56  PUSH ESI
00a62ac9  8bcd  MOV ECX,EBP
00a62acb  e8a01b2300  CALL 0x00c94670
00a62ad0  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00a62ad4  33c9  XOR ECX,ECX
00a62ad6  3bc3  CMP EAX,EBX
00a62ad8  894c2460  MOV dword ptr [ESP + 0x60],ECX
00a62adc  741f  JZ 0x00a62afd
00a62ade  8d4c2460  LEA ECX,[ESP + 0x60]
00a62ae2  8bf0  MOV ESI,EAX
00a62ae4  e8b7c4ceff  CALL 0x0074efa0
00a62ae9  50  PUSH EAX
00a62aea  8bce  MOV ECX,ESI
00a62aec  e8ffd0b5ff  CALL 0x005bfbf0
00a62af1  84c0  TEST AL,AL
00a62af3  8b4c2460  MOV ECX,dword ptr [ESP + 0x60]
00a62af7  0f848d020000  JZ 0x00a62d8a
00a62afd  3bcb  CMP ECX,EBX
00a62aff  895c2448  MOV dword ptr [ESP + 0x48],EBX
00a62b03  895c244c  MOV dword ptr [ESP + 0x4c],EBX
00a62b07  895c2450  MOV dword ptr [ESP + 0x50],EBX
00a62b0b  c7442454841b0601  MOV dword ptr [ESP + 0x54],0x1061b84
00a62b13  0f8464020000  JZ 0x00a62d7d
00a62b19  e832c4b5ff  CALL 0x005bef50
00a62b1e  84c0  TEST AL,AL
00a62b20  0f8457020000  JZ 0x00a62d7d
00a62b26  8b4c2460  MOV ECX,dword ptr [ESP + 0x60]
00a62b2a  e851c4b5ff  CALL 0x005bef80
00a62b2f  84c0  TEST AL,AL
00a62b31  0f8446020000  JZ 0x00a62d7d
00a62b37  53  PUSH EBX
00a62b38  6a01  PUSH 0x1
00a62b3a  8d4c2450  LEA ECX,[ESP + 0x50]
00a62b3e  51  PUSH ECX
00a62b3f  8b4c246c  MOV ECX,dword ptr [ESP + 0x6c]
00a62b43  e8c8d7b5ff  CALL 0x005c0310
00a62b48  84c0  TEST AL,AL
00a62b4a  0f842d020000  JZ 0x00a62d7d
00a62b50  8b44244c  MOV EAX,dword ptr [ESP + 0x4c]
00a62b54  8b7c2448  MOV EDI,dword ptr [ESP + 0x48]
00a62b58  3bf8  CMP EDI,EAX
00a62b5a  8b6c2468  MOV EBP,dword ptr [ESP + 0x68]
00a62b5e  895c2418  MOV dword ptr [ESP + 0x18],EBX
00a62b62  895c241c  MOV dword ptr [ESP + 0x1c],EBX
00a62b66  895c2420  MOV dword ptr [ESP + 0x20],EBX
00a62b6a  895c2424  MOV dword ptr [ESP + 0x24],EBX
00a62b6e  895c2428  MOV dword ptr [ESP + 0x28],EBX
00a62b72  895c242c  MOV dword ptr [ESP + 0x2c],EBX
00a62b76  895c2430  MOV dword ptr [ESP + 0x30],EBX
00a62b7a  895c2434  MOV dword ptr [ESP + 0x34],EBX
00a62b7e  89442414  MOV dword ptr [ESP + 0x14],EAX
00a62b82  7469  JZ 0x00a62bed
00a62b84  8b37  MOV ESI,dword ptr [EDI]
00a62b86  57  PUSH EDI
00a62b87  8d4d04  LEA ECX,[EBP + 0x4]
00a62b8a  83c608  ADD ESI,0x8
00a62b8d  e8be480c00  CALL 0x00b27450
00a62b92  817e08c9ac4103  CMP dword ptr [ESI + 0x8],0x341acc9
00a62b99  7449  JZ 0x00a62be4
00a62b9b  385f08  CMP byte ptr [EDI + 0x8],BL
00a62b9e  741d  JZ 0x00a62bbd
00a62ba0  8b16  MOV EDX,dword ptr [ESI]
00a62ba2  89542428  MOV dword ptr [ESP + 0x28],EDX
00a62ba6  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00a62ba9  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00a62bad  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00a62bb0  894c2430  MOV dword ptr [ESP + 0x30],ECX
00a62bb4  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00a62bb7  89542434  MOV dword ptr [ESP + 0x34],EDX
00a62bbb  eb1b  JMP 0x00a62bd8
00a62bbd  8b06  MOV EAX,dword ptr [ESI]
00a62bbf  89442418  MOV dword ptr [ESP + 0x18],EAX
00a62bc3  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00a62bc6  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00a62bca  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a62bcd  89542420  MOV dword ptr [ESP + 0x20],EDX
00a62bd1  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00a62bd4  89442424  MOV dword ptr [ESP + 0x24],EAX
00a62bd8  395c2420  CMP dword ptr [ESP + 0x20],EBX
00a62bdc  7406  JZ 0x00a62be4
00a62bde  395c2430  CMP dword ptr [ESP + 0x30],EBX
00a62be2  7509  JNZ 0x00a62bed
00a62be4  83c70c  ADD EDI,0xc
00a62be7  3b7c2414  CMP EDI,dword ptr [ESP + 0x14]
00a62beb  7597  JNZ 0x00a62b84
00a62bed  e88ed2a4ff  CALL 0x004afe80
00a62bf2  837c242000  CMP dword ptr [ESP + 0x20],0x0
00a62bf7  8bd8  MOV EBX,EAX
00a62bf9  0f8474010000  JZ 0x00a62d73
00a62bff  8d4c2438  LEA ECX,[ESP + 0x38]
00a62c03  6810e14a04  PUSH 0x44ae110
00a62c08  51  PUSH ECX
00a62c09  e892d60c00  CALL 0x00b302a0
00a62c0e  8bc8  MOV ECX,EAX
00a62c10  e81b100d00  CALL 0x00b33c30
00a62c15  8b442460  MOV EAX,dword ptr [ESP + 0x60]
00a62c19  8b542438  MOV EDX,dword ptr [ESP + 0x38]
00a62c1d  895008  MOV dword ptr [EAX + 0x8],EDX
00a62c20  8b4c243c  MOV ECX,dword ptr [ESP + 0x3c]
00a62c24  83c008  ADD EAX,0x8
00a62c27  894804  MOV dword ptr [EAX + 0x4],ECX
00a62c2a  8b542440  MOV EDX,dword ptr [ESP + 0x40]
00a62c2e  895008  MOV dword ptr [EAX + 0x8],EDX
00a62c31  8b4c2444  MOV ECX,dword ptr [ESP + 0x44]
00a62c35  89480c  MOV dword ptr [EAX + 0xc],ECX
00a62c38  8b4c2460  MOV ECX,dword ptr [ESP + 0x60]
00a62c3c  e80fc6b5ff  CALL 0x005bf250
00a62c41  e83ad2a4ff  CALL 0x004afe80
00a62c46  8bf8  MOV EDI,EAX
00a62c48  8b37  MOV ESI,dword ptr [EDI]
00a62c4a  8d542460  LEA EDX,[ESP + 0x60]
00a62c4e  6a01  PUSH 0x1
00a62c50  52  PUSH EDX
00a62c51  83c65c  ADD ESI,0x5c
00a62c54  e847b6ffff  CALL 0x00a5e2a0
00a62c59  83c404  ADD ESP,0x4
00a62c5c  50  PUSH EAX
00a62c5d  8b06  MOV EAX,dword ptr [ESI]
00a62c5f  8bcf  MOV ECX,EDI
00a62c61  ffd0  CALL EAX
00a62c63  8b74245c  MOV ESI,dword ptr [ESP + 0x5c]
00a62c67  8d4c2418  LEA ECX,[ESP + 0x18]
00a62c6b  51  PUSH ECX
00a62c6c  8bce  MOV ECX,ESI
00a62c6e  e84ddd0400  CALL 0x00ab09c0
00a62c73  837c243000  CMP dword ptr [ESP + 0x30],0x0
00a62c78  740c  JZ 0x00a62c86
00a62c7a  8d542428  LEA EDX,[ESP + 0x28]
00a62c7e  52  PUSH EDX
00a62c7f  8bce  MOV ECX,ESI
00a62c81  e83add0400  CALL 0x00ab09c0
00a62c86  8d442438  LEA EAX,[ESP + 0x38]
00a62c8a  50  PUSH EAX
00a62c8b  8bce  MOV ECX,ESI
00a62c8d  e85edd0400  CALL 0x00ab09f0
00a62c92  8b7d08  MOV EDI,dword ptr [EBP + 0x8]
00a62c95  2b7d04  SUB EDI,dword ptr [EBP + 0x4]
00a62c98  c1ff02  SAR EDI,0x2
00a62c9b  83ef01  SUB EDI,0x1
00a62c9e  7842  JS 0x00a62ce2
00a62ca0  8b4d04  MOV ECX,dword ptr [EBP + 0x4]
00a62ca3  8b34b9  MOV ESI,dword ptr [ECX + EDI*0x4]
00a62ca6  85f6  TEST ESI,ESI
00a62ca8  7418  JZ 0x00a62cc2
00a62caa  8b16  MOV EDX,dword ptr [ESI]
00a62cac  8b02  MOV EAX,dword ptr [EDX]
00a62cae  8bce  MOV ECX,ESI
00a62cb0  ffd0  CALL EAX
00a62cb2  8b16  MOV EDX,dword ptr [ESI]
00a62cb4  8b420c  MOV EAX,dword ptr [EDX + 0xc]
00a62cb7  68d19e2602  PUSH 0x2269ed1
00a62cbc  8bce  MOV ECX,ESI
00a62cbe  ffd0  CALL EAX
00a62cc0  eb02  JMP 0x00a62cc4
00a62cc2  33c0  XOR EAX,EAX
00a62cc4  8b13  MOV EDX,dword ptr [EBX]
00a62cc6  6a01  PUSH 0x1
00a62cc8  50  PUSH EAX
00a62cc9  8b425c  MOV EAX,dword ptr [EDX + 0x5c]
00a62ccc  8bcb  MOV ECX,EBX
00a62cce  ffd0  CALL EAX
00a62cd0  85f6  TEST ESI,ESI
00a62cd2  7409  JZ 0x00a62cdd
00a62cd4  8b16  MOV EDX,dword ptr [ESI]
00a62cd6  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00a62cd9  8bce  MOV ECX,ESI
00a62cdb  ffd0  CALL EAX
00a62cdd  83ef01  SUB EDI,0x1
00a62ce0  79be  JNS 0x00a62ca0
00a62ce2  8d4c2460  LEA ECX,[ESP + 0x60]
00a62ce6  51  PUSH ECX
00a62ce7  8bcd  MOV ECX,EBP
00a62ce9  e82268b4ff  CALL 0x005a9510
00a62cee  8b542438  MOV EDX,dword ptr [ESP + 0x38]
00a62cf2  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
00a62cf6  8b4c2440  MOV ECX,dword ptr [ESP + 0x40]
00a62cfa  895518  MOV dword ptr [EBP + 0x18],EDX
00a62cfd  8b542444  MOV EDX,dword ptr [ESP + 0x44]
00a62d01  89451c  MOV dword ptr [EBP + 0x1c],EAX
00a62d04  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00a62d08  894d20  MOV dword ptr [EBP + 0x20],ECX
00a62d0b  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00a62d0f  894528  MOV dword ptr [EBP + 0x28],EAX
00a62d12  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00a62d16  894d2c  MOV dword ptr [EBP + 0x2c],ECX
00a62d19  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00a62d1d  895524  MOV dword ptr [EBP + 0x24],EDX
00a62d20  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00a62d24  894d38  MOV dword ptr [EBP + 0x38],ECX
00a62d27  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00a62d2b  895530  MOV dword ptr [EBP + 0x30],EDX
00a62d2e  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00a62d32  894534  MOV dword ptr [EBP + 0x34],EAX
00a62d35  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00a62d39  89553c  MOV dword ptr [EBP + 0x3c],EDX
00a62d3c  894540  MOV dword ptr [EBP + 0x40],EAX
00a62d3f  894d44  MOV dword ptr [EBP + 0x44],ECX
00a62d42  8d4c2448  LEA ECX,[ESP + 0x48]
00a62d46  e88585b4ff  CALL 0x005ab2d0
00a62d4b  8b4c2460  MOV ECX,dword ptr [ESP + 0x60]
00a62d4f  85c9  TEST ECX,ECX
00a62d51  7407  JZ 0x00a62d5a
00a62d53  8b11  MOV EDX,dword ptr [ECX]
00a62d55  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00a62d58  ffd0  CALL EAX
00a62d5a  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00a62d5e  85c9  TEST ECX,ECX
00a62d60  7407  JZ 0x00a62d69
00a62d62  8b11  MOV EDX,dword ptr [ECX]
00a62d64  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00a62d67  ffd0  CALL EAX
00a62d69  5f  POP EDI
00a62d6a  5e  POP ESI
00a62d6b  5d  POP EBP
00a62d6c  b001  MOV AL,0x1
00a62d6e  5b  POP EBX
00a62d6f  83c448  ADD ESP,0x48
00a62d72  c3  RET
00a62d73  8d4d04  LEA ECX,[EBP + 0x4]
00a62d76  e825a52e00  CALL 0x00d4d2a0
00a62d7b  33db  XOR EBX,EBX
00a62d7d  8d4c2448  LEA ECX,[ESP + 0x48]
00a62d81  e84a85b4ff  CALL 0x005ab2d0
00a62d86  8b4c2460  MOV ECX,dword ptr [ESP + 0x60]
00a62d8a  3bcb  CMP ECX,EBX
00a62d8c  7407  JZ 0x00a62d95
00a62d8e  8b11  MOV EDX,dword ptr [ECX]
00a62d90  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00a62d93  ffd0  CALL EAX
00a62d95  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00a62d99  3bcb  CMP ECX,EBX
00a62d9b  7407  JZ 0x00a62da4
00a62d9d  8b11  MOV EDX,dword ptr [ECX]
00a62d9f  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00a62da2  ffd0  CALL EAX
00a62da4  5f  POP EDI
00a62da5  5e  POP ESI
00a62da6  5d  POP EBP
00a62da7  32c0  XOR AL,AL
00a62da9  5b  POP EBX
00a62daa  83c448  ADD ESP,0x48
00a62dad  c3  RET
