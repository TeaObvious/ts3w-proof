# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined Lot_CompleteObjectAdmission(void * this, void * param_1)
Owned ranges: [[00ab2d40, 00ab2d8a]]

00ab2d40  56  PUSH ESI
00ab2d41  57  PUSH EDI
00ab2d42  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00ab2d46  85ff  TEST EDI,EDI
00ab2d48  8bf1  MOV ESI,ECX
00ab2d4a  7420  JZ 0x00ab2d6c
00ab2d4c  a108df1e01  MOV EAX,[0x011edf08]
00ab2d51  50  PUSH EAX
00ab2d52  8bcf  MOV ECX,EDI
00ab2d54  e80715e8ff  CALL 0x00934260
00ab2d59  85c0  TEST EAX,EAX
00ab2d5b  740f  JZ 0x00ab2d6c
00ab2d5d  8b4e4c  MOV ECX,dword ptr [ESI + 0x4c]
00ab2d60  8b5648  MOV EDX,dword ptr [ESI + 0x48]
00ab2d63  51  PUSH ECX
00ab2d64  52  PUSH EDX
00ab2d65  8bc8  MOV ECX,EAX
00ab2d67  e8d47f1d00  CALL 0x00c8ad40
00ab2d6c  56  PUSH ESI
00ab2d6d  b001  MOV AL,0x1
00ab2d6f  57  PUSH EDI
00ab2d70  6a09  PUSH 0x9
00ab2d72  888625040000  MOV byte ptr [ESI + 0x425],AL
00ab2d78  888634030000  MOV byte ptr [ESI + 0x334],AL
00ab2d7e  e83d29e8ff  CALL 0x009356c0
00ab2d83  83c40c  ADD ESP,0xc
00ab2d86  5f  POP EDI
00ab2d87  5e  POP ESI
00ab2d88  c20400  RET 0x4
