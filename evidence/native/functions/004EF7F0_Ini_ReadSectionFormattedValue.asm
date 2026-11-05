# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int Ini_ReadSectionFormattedValue(pointer ini, ushort * sectionUtf16, ushort * entryUtf16, ushort * formatUtf16, ...)
Owned ranges: [[004ef7f0, 004ef86f]]

004ef7f0  83ec10  SUB ESP,0x10
004ef7f3  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
004ef7f7  56  PUSH ESI
004ef7f8  8d542404  LEA EDX,[ESP + 0x4]
004ef7fc  52  PUSH EDX
004ef7fd  8b542424  MOV EDX,dword ptr [ESP + 0x24]
004ef801  b8548e1c01  MOV EAX,0x11c8e54
004ef806  89442408  MOV dword ptr [ESP + 0x8],EAX
004ef80a  8944240c  MOV dword ptr [ESP + 0xc],EAX
004ef80e  8b01  MOV EAX,dword ptr [ECX]
004ef810  8b402c  MOV EAX,dword ptr [EAX + 0x2c]
004ef813  52  PUSH EDX
004ef814  8b542424  MOV EDX,dword ptr [ESP + 0x24]
004ef818  52  PUSH EDX
004ef819  33f6  XOR ESI,ESI
004ef81b  c744241c44a2fb00  MOV dword ptr [ESP + 0x1c],0xfba244
004ef823  c7442418568e1c01  MOV dword ptr [ESP + 0x18],0x11c8e56
004ef82b  ffd0  CALL EAX
004ef82d  85c0  TEST EAX,EAX
004ef82f  7c19  JL 0x004ef84a
004ef831  8b542424  MOV EDX,dword ptr [ESP + 0x24]
004ef835  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004ef839  8d4c2428  LEA ECX,[ESP + 0x28]
004ef83d  51  PUSH ECX
004ef83e  52  PUSH EDX
004ef83f  50  PUSH EAX
004ef840  e85be60000  CALL 0x004fdea0
004ef845  83c40c  ADD ESP,0xc
004ef848  8bf0  MOV ESI,EAX
004ef84a  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
004ef84e  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004ef852  2bc8  SUB ECX,EAX
004ef854  83e1fe  AND ECX,0xfffffffe
004ef857  83f902  CMP ECX,0x2
004ef85a  7e0d  JLE 0x004ef869
004ef85c  85c0  TEST EAX,EAX
004ef85e  7409  JZ 0x004ef869
004ef860  50  PUSH EAX
004ef861  e87a4cffff  CALL 0x004e44e0
004ef866  83c404  ADD ESP,0x4
004ef869  8bc6  MOV EAX,ESI
004ef86b  5e  POP ESI
004ef86c  83c410  ADD ESP,0x10
004ef86f  c3  RET
