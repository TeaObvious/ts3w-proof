# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined ObjectProduct_CopyFloorPlacementFields(void * this, undefined4 * param_1, undefined4 * param_2, undefined4 * param_3, undefined4 * param_4, undefined4 * param_5, undefined4 * param_6)
Owned ranges: [[00c977f0, 00c97855]]

00c977f0  8b81f0000000  MOV EAX,dword ptr [ECX + 0xf0]
00c977f6  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00c977fa  8902  MOV dword ptr [EDX],EAX
00c977fc  d98158010000  FLD float ptr [ECX + 0x158]
00c97802  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c97806  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00c9780a  d918  FSTP float ptr [EAX]
00c9780c  d9815c010000  FLD float ptr [ECX + 0x15c]
00c97812  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00c97816  d91a  FSTP float ptr [EDX]
00c97818  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00c9781c  d98160010000  FLD float ptr [ECX + 0x160]
00c97822  d918  FSTP float ptr [EAX]
00c97824  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00c97828  d98164010000  FLD float ptr [ECX + 0x164]
00c9782e  d91a  FSTP float ptr [EDX]
00c97830  8b9148010000  MOV EDX,dword ptr [ECX + 0x148]
00c97836  8910  MOV dword ptr [EAX],EDX
00c97838  8b914c010000  MOV EDX,dword ptr [ECX + 0x14c]
00c9783e  895004  MOV dword ptr [EAX + 0x4],EDX
00c97841  8b9150010000  MOV EDX,dword ptr [ECX + 0x150]
00c97847  895008  MOV dword ptr [EAX + 0x8],EDX
00c9784a  8b8954010000  MOV ECX,dword ptr [ECX + 0x154]
00c97850  89480c  MOV dword ptr [EAX + 0xc],ECX
00c97853  c21800  RET 0x18
