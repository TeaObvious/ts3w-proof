# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined1 RoomLight_IsSunnyRoom(void * this, short param_1)
Owned ranges: [[006a63f0, 006a6444]]

006a63f0  668b442404  MOV AX,word ptr [ESP + 0x4]
006a63f5  83ec08  SUB ESP,0x8
006a63f8  6685c0  TEST AX,AX
006a63fb  7508  JNZ 0x006a6405
006a63fd  b001  MOV AL,0x1
006a63ff  83c408  ADD ESP,0x8
006a6402  c20400  RET 0x4
006a6405  56  PUSH ESI
006a6406  8db130020000  LEA ESI,[ECX + 0x230]
006a640c  8d4c2410  LEA ECX,[ESP + 0x10]
006a6410  0fbfc0  MOVSX EAX,AX
006a6413  51  PUSH ECX
006a6414  8d542408  LEA EDX,[ESP + 0x8]
006a6418  52  PUSH EDX
006a6419  8bce  MOV ECX,ESI
006a641b  89442418  MOV dword ptr [ESP + 0x18],EAX
006a641f  e82cfcffff  CALL 0x006a6050
006a6424  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
006a6427  8b5604  MOV EDX,dword ptr [ESI + 0x4]
006a642a  8b442404  MOV EAX,dword ptr [ESP + 0x4]
006a642e  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
006a6431  5e  POP ESI
006a6432  7409  JZ 0x006a643d
006a6434  8a4070  MOV AL,byte ptr [EAX + 0x70]
006a6437  83c408  ADD ESP,0x8
006a643a  c20400  RET 0x4
006a643d  32c0  XOR AL,AL
006a643f  83c408  ADD ESP,0x8
006a6442  c20400  RET 0x4
