# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[007894a0, 007894fd]]
Actual pseudocode: 007894A0_FUN_007894a0.c

007894a0  8bc1  MOV EAX,ECX
007894a2  c700784aff00  MOV dword ptr [EAX],0xff4a78
007894a8  33c9  XOR ECX,ECX
007894aa  8d5004  LEA EDX,[EAX + 0x4]
007894ad  870a  XCHG dword ptr [EDX],ECX
007894af  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
007894b3  8b542408  MOV EDX,dword ptr [ESP + 0x8]
007894b7  c7400854b4f900  MOV dword ptr [EAX + 0x8],0xf9b454
007894be  c7400c8c2bfa00  MOV dword ptr [EAX + 0xc],0xfa2b8c
007894c5  894810  MOV dword ptr [EAX + 0x10],ECX
007894c8  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007894cc  895014  MOV dword ptr [EAX + 0x14],EDX
007894cf  8b542410  MOV EDX,dword ptr [ESP + 0x10]
007894d3  894818  MOV dword ptr [EAX + 0x18],ECX
007894d6  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
007894da  c70084190101  MOV dword ptr [EAX],0x1011984
007894e0  c7400878190101  MOV dword ptr [EAX + 0x8],0x1011978
007894e7  c7400c68190101  MOV dword ptr [EAX + 0xc],0x1011968
007894ee  89501c  MOV dword ptr [EAX + 0x1c],EDX
007894f1  894820  MOV dword ptr [EAX + 0x20],ECX
007894f4  c7402400000000  MOV dword ptr [EAX + 0x24],0x0
007894fb  c21400  RET 0x14
