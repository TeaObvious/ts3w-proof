# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer ByteWorldGrid_Construct(void * this, char * allocationTag)
Owned ranges: [[00a81060, 00a8108e]]

00a81060  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00a81064  8bc1  MOV EAX,ECX
00a81066  33c9  XOR ECX,ECX
00a81068  3bd1  CMP EDX,ECX
00a8106a  894804  MOV dword ptr [EAX + 0x4],ECX
00a8106d  894808  MOV dword ptr [EAX + 0x8],ECX
00a81070  89480c  MOV dword ptr [EAX + 0xc],ECX
00a81073  c70004320601  MOV dword ptr [EAX],0x1063204
00a81079  7505  JNZ 0x00a81080
00a8107b  ba7c99f900  MOV EDX,0xf9997c
00a81080  894810  MOV dword ptr [EAX + 0x10],ECX
00a81083  894814  MOV dword ptr [EAX + 0x14],ECX
00a81086  894818  MOV dword ptr [EAX + 0x18],ECX
00a81089  89501c  MOV dword ptr [EAX + 0x1c],EDX
00a8108c  c20400  RET 0x4
