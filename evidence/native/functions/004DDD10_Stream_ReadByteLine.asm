# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Stream_ReadByteLine
Paired actual annotated Ghidra pseudocode: 004DDD10_Stream_ReadByteLine.c
Owned ranges: [[004ddd10, 004dddf0]]
Envelope bytes=225

GHIDRA LISTING (original bytes; nonowned alignment explicit)
004ddd10  51  PUSH ECX
004ddd11  53  PUSH EBX
004ddd12  55  PUSH EBP
004ddd13  56  PUSH ESI
004ddd14  8b742414  MOV ESI,dword ptr [ESP + 0x14]
004ddd18  57  PUSH EDI
004ddd19  8b7c241c  MOV EDI,dword ptr [ESP + 0x1c]
004ddd1d  33db  XOR EBX,EBX
004ddd1f  33ed  XOR EBP,EBP
004ddd21  3bfb  CMP EDI,EBX
004ddd23  895c2410  MOV dword ptr [ESP + 0x10],EBX
004ddd27  750e  JNZ 0x004ddd37
004ddd29  8b06  MOV EAX,dword ptr [ESI]
004ddd2b  8b5024  MOV EDX,dword ptr [EAX + 0x24]
004ddd2e  53  PUSH EBX
004ddd2f  8bce  MOV ECX,ESI
004ddd31  ffd2  CALL EDX
004ddd33  89442410  MOV dword ptr [ESP + 0x10],EAX
004ddd37  8b06  MOV EAX,dword ptr [ESI]
004ddd39  8b5030  MOV EDX,dword ptr [EAX + 0x30]
004ddd3c  6a01  PUSH 0x1
004ddd3e  8d4c2420  LEA ECX,[ESP + 0x20]
004ddd42  51  PUSH ECX
004ddd43  8bce  MOV ECX,ESI
004ddd45  ffd2  CALL EDX
004ddd47  83f801  CMP EAX,0x1
004ddd4a  7545  JNZ 0x004ddd91
004ddd4c  8d642400  LEA ESP,[ESP]
004ddd50  8a4c241c  MOV CL,byte ptr [ESP + 0x1c]
004ddd54  83c301  ADD EBX,0x1
004ddd57  80f90d  CMP CL,0xd
004ddd5a  7449  JZ 0x004ddda5
004ddd5c  80f90a  CMP CL,0xa
004ddd5f  7444  JZ 0x004ddda5
004ddd61  85ff  TEST EDI,EDI
004ddd63  7410  JZ 0x004ddd75
004ddd65  8b442420  MOV EAX,dword ptr [ESP + 0x20]
004ddd69  83c0ff  ADD EAX,-0x1
004ddd6c  3be8  CMP EBP,EAX
004ddd6e  7305  JNC 0x004ddd75
004ddd70  880f  MOV byte ptr [EDI],CL
004ddd72  83c701  ADD EDI,0x1
004ddd75  8b16  MOV EDX,dword ptr [ESI]
004ddd77  8b5230  MOV EDX,dword ptr [EDX + 0x30]
004ddd7a  6a01  PUSH 0x1
004ddd7c  8d442420  LEA EAX,[ESP + 0x20]
004ddd80  50  PUSH EAX
004ddd81  8bce  MOV ECX,ESI
004ddd83  83c501  ADD EBP,0x1
004ddd86  ffd2  CALL EDX
004ddd88  83f801  CMP EAX,0x1
004ddd8b  74c3  JZ 0x004ddd50
004ddd8d  85db  TEST EBX,EBX
004ddd8f  7505  JNZ 0x004ddd96
004ddd91  bdfeffffff  MOV EBP,0xfffffffe
004ddd96  85ff  TEST EDI,EDI
004ddd98  743f  JZ 0x004dddd9
004ddd9a  c60700  MOV byte ptr [EDI],0x0
004ddd9d  5f  POP EDI
004ddd9e  5e  POP ESI
004ddd9f  8bc5  MOV EAX,EBP
004ddda1  5d  POP EBP
004ddda2  5b  POP EBX
004ddda3  59  POP ECX
004ddda4  c3  RET
004ddda5  80f90d  CMP CL,0xd
004ddda8  884c2418  MOV byte ptr [ESP + 0x18],CL
004dddac  7510  JNZ 0x004dddbe
004dddae  8b06  MOV EAX,dword ptr [ESI]
004dddb0  8b5030  MOV EDX,dword ptr [EAX + 0x30]
004dddb3  6a01  PUSH 0x1
004dddb5  8d4c241c  LEA ECX,[ESP + 0x1c]
004dddb9  51  PUSH ECX
004dddba  8bce  MOV ECX,ESI
004dddbc  ffd2  CALL EDX
004dddbe  83f801  CMP EAX,0x1
004dddc1  75d3  JNZ 0x004ddd96
004dddc3  807c24180a  CMP byte ptr [ESP + 0x18],0xa
004dddc8  74cc  JZ 0x004ddd96
004dddca  8b06  MOV EAX,dword ptr [ESI]
004dddcc  8b5028  MOV EDX,dword ptr [EAX + 0x28]
004dddcf  6a01  PUSH 0x1
004dddd1  6aff  PUSH -0x1
004dddd3  8bce  MOV ECX,ESI
004dddd5  ffd2  CALL EDX
004dddd7  ebbd  JMP 0x004ddd96
004dddd9  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
004ddddd  8b06  MOV EAX,dword ptr [ESI]
004ddddf  8b5028  MOV EDX,dword ptr [EAX + 0x28]
004ddde2  6a00  PUSH 0x0
004ddde4  51  PUSH ECX
004ddde5  8bce  MOV ECX,ESI
004ddde7  ffd2  CALL EDX
004ddde9  5f  POP EDI
004dddea  5e  POP ESI
004dddeb  8bc5  MOV EAX,EBP
004ddded  5d  POP EBP
004dddee  5b  POP EBX
004dddef  59  POP ECX
004dddf0  c3  RET
Owned instructions=100 owned bytes=225 gap/nonowned bytes=0
