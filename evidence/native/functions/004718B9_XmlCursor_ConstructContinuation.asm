# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name XmlCursor_ConstructContinuation
Owned ranges: [[004718b9, 00471934]]
Signature: void * __thiscall XmlCursor_ConstructContinuation(undefined4 param_1, int * param_2, short * param_3)
Physical ABI: NOT an independently called function: reached by fallthrough after718B0 saved EBX; inherits ECX receiver, EAX allocator, EBX0, ZF, original stack frame plus saved EBX. Later RETC restores original constructor frame.

004718b9  56  PUSH ESI ; Continuation of718B0; live EAX/EBX/ZF and the already-saved EBX stack word are required.
004718ba  8bf1  MOV ESI,ECX
004718bc  891e  MOV dword ptr [ESI],EBX
004718be  885e04  MOV byte ptr [ESI + 0x4],BL
004718c1  895e08  MOV dword ptr [ESI + 0x8],EBX
004718c4  895e0c  MOV dword ptr [ESI + 0xc],EBX
004718c7  895e10  MOV dword ptr [ESI + 0x10],EBX
004718ca  7505  JNZ 0x004718d1 ; Allocator branch consumes flags from CMP at718B7; PUSH/MOV did not alter those flags.
004718cc  e8efe04b00  CALL 0x0092f9c0
004718d1  53  PUSH EBX
004718d2  53  PUSH EBX
004718d3  53  PUSH EBX
004718d4  6aff  PUSH -0x1
004718d6  53  PUSH EBX
004718d7  8d4e18  LEA ECX,[ESI + 0x18]
004718da  894614  MOV dword ptr [ESI + 0x14],EAX
004718dd  e8ce730700  CALL 0x004e8cb0
004718e2  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
004718e6  3bcb  CMP ECX,EBX
004718e8  894e3c  MOV dword ptr [ESI + 0x3c],ECX
004718eb  7407  JZ 0x004718f4
004718ed  8b01  MOV EAX,dword ptr [ECX] ; Retain nonnull stream through its virtual+4 before further cursor initialization.
004718ef  8b5004  MOV EDX,dword ptr [EAX + 0x4]
004718f2  ffd2  CALL EDX
004718f4  53  PUSH EBX
004718f5  53  PUSH EBX
004718f6  53  PUSH EBX
004718f7  8d4e60  LEA ECX,[ESI + 0x60]
004718fa  895e40  MOV dword ptr [ESI + 0x40],EBX
004718fd  895e44  MOV dword ptr [ESI + 0x44],EBX
00471900  895e48  MOV dword ptr [ESI + 0x48],EBX
00471903  895e4c  MOV dword ptr [ESI + 0x4c],EBX
00471906  895e50  MOV dword ptr [ESI + 0x50],EBX
00471909  895e54  MOV dword ptr [ESI + 0x54],EBX
0047190c  895e58  MOV dword ptr [ESI + 0x58],EBX
0047190f  895e5c  MOV dword ptr [ESI + 0x5c],EBX
00471912  e849db0600  CALL 0x004df460
00471917  53  PUSH EBX
00471918  e883ea0400  CALL 0x004c03a0 ; Create parser with encoding null and no namespace separator through4C03A0.
0047191d  8906  MOV dword ptr [ESI],EAX
0047191f  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00471923  83c404  ADD ESP,0x4
00471926  50  PUSH EAX
00471927  8bce  MOV ECX,ESI
00471929  e892feffff  CALL 0x004717c0
0047192e  8bc6  MOV EAX,ESI
00471930  5e  POP ESI
00471931  5b  POP EBX
00471932  c20c00  RET 0xc ; RET C completes original constructor entry; this is not a separate three-argument call boundary.
