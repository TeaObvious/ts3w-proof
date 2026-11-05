# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int * FUN_004e6f20(void * this, uint param_1, uint param_2)
Owned ranges: [[004e6f20, 004e6f61]]

004e6f20  56  PUSH ESI
004e6f21  57  PUSH EDI
004e6f22  8bf9  MOV EDI,ECX
004e6f24  8bb7e4040000  MOV ESI,dword ptr [EDI + 0x4e4]
004e6f2a  85f6  TEST ESI,ESI
004e6f2c  740b  JZ 0x004e6f39
004e6f2e  56  PUSH ESI
004e6f2f  ff152c61f900  CALL dword ptr [0x00f9612c]
004e6f35  83461801  ADD dword ptr [ESI + 0x18],0x1
004e6f39  8b442410  MOV EAX,dword ptr [ESP + 0x10]
004e6f3d  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
004e6f41  50  PUSH EAX
004e6f42  51  PUSH ECX
004e6f43  8bcf  MOV ECX,EDI
004e6f45  e846f4ffff  CALL 0x004e6390
004e6f4a  85f6  TEST ESI,ESI
004e6f4c  8bf8  MOV EDI,EAX
004e6f4e  740b  JZ 0x004e6f5b
004e6f50  834618ff  ADD dword ptr [ESI + 0x18],-0x1
004e6f54  56  PUSH ESI
004e6f55  ff153061f900  CALL dword ptr [0x00f96130]
004e6f5b  8bc7  MOV EAX,EDI
004e6f5d  5f  POP EDI
004e6f5e  5e  POP ESI
004e6f5f  c20800  RET 0x8
