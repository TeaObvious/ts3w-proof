# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004dd920, 004dd96c]]
Signature: uint Stream_ReadUtf16UnitsEndian(int * param_1, ushort * param_2, uint unitCount, uint endianFlag)

004dd920  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
004dd924  8b01  MOV EAX,dword ptr [ECX]
004dd926  8b5030  MOV EDX,dword ptr [EAX + 0x30]
004dd929  53  PUSH EBX
004dd92a  56  PUSH ESI
004dd92b  8b742410  MOV ESI,dword ptr [ESP + 0x10]
004dd92f  57  PUSH EDI
004dd930  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
004dd934  8d1c3f  LEA EBX,[EDI + EDI*0x1]
004dd937  53  PUSH EBX
004dd938  56  PUSH ESI
004dd939  ffd2  CALL EDX
004dd93b  3bc3  CMP EAX,EBX
004dd93d  7528  JNZ 0x004dd967
004dd93f  b801000000  MOV EAX,0x1
004dd944  3944241c  CMP dword ptr [ESP + 0x1c],EAX
004dd948  741f  JZ 0x004dd969
004dd94a  85ff  TEST EDI,EDI
004dd94c  741b  JZ 0x004dd969
004dd94e  8bff  MOV EDI,EDI
004dd950  668b0e  MOV CX,word ptr [ESI]
004dd953  2bf8  SUB EDI,EAX
004dd955  66c1c108  ROL CX,0x8
004dd959  66890e  MOV word ptr [ESI],CX
004dd95c  83c602  ADD ESI,0x2
004dd95f  85ff  TEST EDI,EDI
004dd961  75ed  JNZ 0x004dd950
004dd963  5f  POP EDI
004dd964  5e  POP ESI
004dd965  5b  POP EBX
004dd966  c3  RET
004dd967  32c0  XOR AL,AL
004dd969  5f  POP EDI
004dd96a  5e  POP ESI
004dd96b  5b  POP EBX
004dd96c  c3  RET
