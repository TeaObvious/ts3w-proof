# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer UInt16WorldGrid_Construct(void * this, char * allocationTag)
Owned ranges: [[00a81090, 00a810be]]

00a81090  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00a81094  8bc1  MOV EAX,ECX
00a81096  33c9  XOR ECX,ECX
00a81098  3bd1  CMP EDX,ECX
00a8109a  894804  MOV dword ptr [EAX + 0x4],ECX
00a8109d  894808  MOV dword ptr [EAX + 0x8],ECX
00a810a0  89480c  MOV dword ptr [EAX + 0xc],ECX
00a810a3  c70010320601  MOV dword ptr [EAX],0x1063210
00a810a9  7505  JNZ 0x00a810b0
00a810ab  ba7c99f900  MOV EDX,0xf9997c
00a810b0  894810  MOV dword ptr [EAX + 0x10],ECX
00a810b3  894814  MOV dword ptr [EAX + 0x14],ECX
00a810b6  894818  MOV dword ptr [EAX + 0x18],ECX
00a810b9  89501c  MOV dword ptr [EAX + 0x1c],EDX
00a810bc  c20400  RET 0x4
