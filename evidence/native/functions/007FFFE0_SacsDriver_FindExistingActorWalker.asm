# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int SacsDriver_FindExistingActorWalker(void * this, int param_1)
Owned ranges: [[007fffe0, 00800005]]

007fffe0  8b4110  MOV EAX,dword ptr [ECX + 0x10]
007fffe3  8b4914  MOV ECX,dword ptr [ECX + 0x14]
007fffe6  3bc1  CMP EAX,ECX
007fffe8  7411  JZ 0x007ffffb
007fffea  8b542404  MOV EDX,dword ptr [ESP + 0x4]
007fffee  8bff  MOV EDI,EDI
007ffff0  3910  CMP dword ptr [EAX],EDX
007ffff2  740c  JZ 0x00800000
007ffff4  83c008  ADD EAX,0x8
007ffff7  3bc1  CMP EAX,ECX
007ffff9  75f5  JNZ 0x007ffff0
007ffffb  33c0  XOR EAX,EAX
007ffffd  c20400  RET 0x4
00800000  8b4004  MOV EAX,dword ptr [EAX + 0x4]
00800003  c20400  RET 0x4
