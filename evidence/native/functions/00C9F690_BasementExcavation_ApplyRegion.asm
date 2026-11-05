# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool BasementExcavation_ApplyRegion(undefined4 * param_1, undefined4 param_2, char * param_3, char * param_4, float param_5, void * param_6, int * param_7, int * * param_8, pointer unusedCallerContext)
Owned ranges: [[00c9f690, 00c9f7be]]

00c9f690  83ec18  SUB ESP,0x18
00c9f693  53  PUSH EBX
00c9f694  55  PUSH EBP
00c9f695  56  PUSH ESI
00c9f696  8b742428  MOV ESI,dword ptr [ESP + 0x28]
00c9f69a  57  PUSH EDI
00c9f69b  6a01  PUSH 0x1
00c9f69d  56  PUSH ESI
00c9f69e  e8edd8ffff  CALL 0x00c9cf90
00c9f6a3  d9442444  FLD float ptr [ESP + 0x44]
00c9f6a7  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
00c9f6ab  0fb608  MOVZX ECX,byte ptr [EAX]
00c9f6ae  0fb65001  MOVZX EDX,byte ptr [EAX + 0x1]
00c9f6b2  0fb64002  MOVZX EAX,byte ptr [EAX + 0x2]
00c9f6b6  8b5c2448  MOV EBX,dword ptr [ESP + 0x48]
00c9f6ba  8b7c2438  MOV EDI,dword ptr [ESP + 0x38]
00c9f6be  2c01  SUB AL,0x1
00c9f6c0  8844241e  MOV byte ptr [ESP + 0x1e],AL
00c9f6c4  8b442440  MOV EAX,dword ptr [ESP + 0x40]
00c9f6c8  83c408  ADD ESP,0x8
00c9f6cb  884c2414  MOV byte ptr [ESP + 0x14],CL
00c9f6cf  0fb608  MOVZX ECX,byte ptr [EAX]
00c9f6d2  53  PUSH EBX
00c9f6d3  51  PUSH ECX
00c9f6d4  8854241d  MOV byte ptr [ESP + 0x1d],DL
00c9f6d8  0fb65001  MOVZX EDX,byte ptr [EAX + 0x1]
00c9f6dc  d91c24  FSTP float ptr [ESP]
00c9f6df  0fb64002  MOVZX EAX,byte ptr [EAX + 0x2]
00c9f6e3  884c2418  MOV byte ptr [ESP + 0x18],CL
00c9f6e7  8d4c2418  LEA ECX,[ESP + 0x18]
00c9f6eb  51  PUSH ECX
00c9f6ec  8854241d  MOV byte ptr [ESP + 0x1d],DL
00c9f6f0  8d542420  LEA EDX,[ESP + 0x20]
00c9f6f4  52  PUSH EDX
00c9f6f5  2c01  SUB AL,0x1
00c9f6f7  57  PUSH EDI
00c9f6f8  56  PUSH ESI
00c9f6f9  8844242a  MOV byte ptr [ESP + 0x2a],AL
00c9f6fd  e84ee6ffff  CALL 0x00c9dd50
00c9f702  53  PUSH EBX
00c9f703  6a01  PUSH 0x1
00c9f705  8d442430  LEA EAX,[ESP + 0x30]
00c9f709  50  PUSH EAX
00c9f70a  8d4c2438  LEA ECX,[ESP + 0x38]
00c9f70e  51  PUSH ECX
00c9f70f  57  PUSH EDI
00c9f710  56  PUSH ESI
00c9f711  e89adaffff  CALL 0x00c9d1b0
00c9f716  6a00  PUSH 0x0
00c9f718  53  PUSH EBX
00c9f719  6a00  PUSH 0x0
00c9f71b  8d54244c  LEA EDX,[ESP + 0x4c]
00c9f71f  52  PUSH EDX
00c9f720  8d442454  LEA EAX,[ESP + 0x54]
00c9f724  50  PUSH EAX
00c9f725  57  PUSH EDI
00c9f726  56  PUSH ESI
00c9f727  e854f0ffff  CALL 0x00c9e780
00c9f72c  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00c9f732  83c44c  ADD ESP,0x4c
00c9f735  e8e6bbfeff  CALL 0x00c8b320
00c9f73a  8be8  MOV EBP,EAX
00c9f73c  33c0  XOR EAX,EAX
00c9f73e  8d4c2418  LEA ECX,[ESP + 0x18]
00c9f742  51  PUSH ECX
00c9f743  50  PUSH EAX
00c9f744  8d542418  LEA EDX,[ESP + 0x18]
00c9f748  89442420  MOV dword ptr [ESP + 0x20],EAX
00c9f74c  89442424  MOV dword ptr [ESP + 0x24],EAX
00c9f750  89442428  MOV dword ptr [ESP + 0x28],EAX
00c9f754  52  PUSH EDX
00c9f755  8d442420  LEA EAX,[ESP + 0x20]
00c9f759  50  PUSH EAX
00c9f75a  57  PUSH EDI
00c9f75b  c7442438e0d60701  MOV dword ptr [ESP + 0x38],0x107d6e0
00c9f763  e8e8dcfbff  CALL 0x00c5d450
00c9f768  8b4c245c  MOV ECX,dword ptr [ESP + 0x5c]
00c9f76c  6a00  PUSH 0x0
00c9f76e  53  PUSH EBX
00c9f76f  51  PUSH ECX
00c9f770  8d542438  LEA EDX,[ESP + 0x38]
00c9f774  52  PUSH EDX
00c9f775  55  PUSH EBP
00c9f776  57  PUSH EDI
00c9f777  56  PUSH ESI
00c9f778  e893ebffff  CALL 0x00c9e310
00c9f77d  8b442474  MOV EAX,dword ptr [ESP + 0x74]
00c9f781  53  PUSH EBX
00c9f782  50  PUSH EAX
00c9f783  8d4c2448  LEA ECX,[ESP + 0x48]
00c9f787  51  PUSH ECX
00c9f788  8d542450  LEA EDX,[ESP + 0x50]
00c9f78c  52  PUSH EDX
00c9f78d  6a01  PUSH 0x1
00c9f78f  57  PUSH EDI
00c9f790  56  PUSH ESI
00c9f791  e85afaffff  CALL 0x00c9f1f0
00c9f796  83c44c  ADD ESP,0x4c
00c9f799  6a00  PUSH 0x0
00c9f79b  56  PUSH ESI
00c9f79c  e8efd7ffff  CALL 0x00c9cf90
00c9f7a1  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00c9f7a5  83c408  ADD ESP,0x8
00c9f7a8  85c0  TEST EAX,EAX
00c9f7aa  5f  POP EDI
00c9f7ab  5e  POP ESI
00c9f7ac  5d  POP EBP
00c9f7ad  5b  POP EBX
00c9f7ae  7409  JZ 0x00c9f7b9
00c9f7b0  50  PUSH EAX
00c9f7b1  e82a4d84ff  CALL 0x004e44e0
00c9f7b6  83c404  ADD ESP,0x4
00c9f7b9  b001  MOV AL,0x1
00c9f7bb  83c418  ADD ESP,0x18
00c9f7be  c3  RET
