# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint ObjectRegistry_RegisterComponentType(void * this, void * descriptor)
Owned ranges: [[00937430, 00937498]]

00937430  53  PUSH EBX
00937431  56  PUSH ESI
00937432  57  PUSH EDI
00937433  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
00937437  8b07  MOV EAX,dword ptr [EDI]
00937439  8bf1  MOV ESI,ECX
0093743b  8b9ec4110000  MOV EBX,dword ptr [ESI + 0x11c4]
00937441  50  PUSH EAX
00937442  e8a98ce9ff  CALL 0x007d00f0
00937447  8b8ec8110000  MOV ECX,dword ptr [ESI + 0x11c8]
0093744d  89bc8e44100000  MOV dword ptr [ESI + ECX*0x4 + 0x1044],EDI
00937454  8b96c8110000  MOV EDX,dword ptr [ESI + 0x11c8]
0093745a  8b8ec4110000  MOV ECX,dword ptr [ESI + 0x11c4]
00937460  898c9644110000  MOV dword ptr [ESI + EDX*0x4 + 0x1144],ECX
00937467  8b96c8110000  MOV EDX,dword ptr [ESI + 0x11c8]
0093746d  898496c4100000  MOV dword ptr [ESI + EDX*0x4 + 0x10c4],EAX
00937474  d1a6c4110000  SHL dword ptr [ESI + 0x11c4],0x1
0093747a  8386c811000001  ADD dword ptr [ESI + 0x11c8],0x1
00937481  8b7f04  MOV EDI,dword ptr [EDI + 0x4]
00937484  83c404  ADD ESP,0x4
00937487  85ff  TEST EDI,EDI
00937489  7406  JZ 0x00937491
0093748b  53  PUSH EBX
0093748c  ffd7  CALL EDI
0093748e  83c404  ADD ESP,0x4
00937491  5f  POP EDI
00937492  5e  POP ESI
00937493  8bc3  MOV EAX,EBX
00937495  5b  POP EBX
00937496  c20400  RET 0x4
