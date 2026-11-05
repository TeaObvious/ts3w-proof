# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined1 FUN_00726c70(void * this, int * param_1, undefined4 * param_2, int * param_3, int param_4)
Owned ranges: [[00726c70, 00726c96]]

00726c70  83ec5c  SUB ESP,0x5c
00726c73  8b01  MOV EAX,dword ptr [ECX]
00726c75  8b5040  MOV EDX,dword ptr [EAX + 0x40]
00726c78  894c2404  MOV dword ptr [ESP + 0x4],ECX
00726c7c  ffd2  CALL EDX
00726c7e  3944246c  CMP dword ptr [ESP + 0x6c],EAX
00726c82  7413  JZ 0x00726c97
00726c84  8b4c2460  MOV ECX,dword ptr [ESP + 0x60]
00726c88  8b01  MOV EAX,dword ptr [ECX]
00726c8a  8b5020  MOV EDX,dword ptr [EAX + 0x20]
00726c8d  ffd2  CALL EDX
00726c8f  32c0  XOR AL,AL
00726c91  83c45c  ADD ESP,0x5c
00726c94  c21000  RET 0x10
