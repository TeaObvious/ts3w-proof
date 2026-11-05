# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6ed0 (ScriptCore.CASUtils::CASUtils_SimOutfitGetHairBaseColorImpl)
Paired Ghidra pseudocode: 005A6ED0_ScriptCore_CASUtils_CASUtils_SimOutfitGetHairBaseColorImpl.c
Window: [0x005a6ed0, 0x005a6f60) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6ed0: 33 c0 56 8b 74 24 08 89 06 89 46 04 57 8b 7c 24
005a6ee0: 10 89 46 08 8b c7 25 00 00 00 ff 3d 00 00 00 35
005a6ef0: 75 5a e8 99 24 1c 00 8b 10 8b c8 8b 82 cc 00 00
005a6f00: 00 57 ff d0 85 c0 74 44 8b 40 5c f3 0f 10 05 64
005a6f10: e5 fa 00 8b c8 c1 e9 10 0f b6 d1 8b c8 f3 0f 2a
005a6f20: ca f3 0f 59 c8 c1 e9 08 f3 0f 11 0e 0f b6 d1 0f
005a6f30: b6 c0 f3 0f 2a ca f3 0f 59 c8 f3 0f 11 4e 04 f3
005a6f40: 0f 2a c8 f3 0f 59 c8 f3 0f 11 4e 08 5f 8b c6 5e
005a6f50: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6ed0 <.text+0x1a5ed0>:
  5a6ed0:	33 c0                                           	xor    eax,eax
  5a6ed2:	56                                              	push   esi
  5a6ed3:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6ed7:	89 06                                           	mov    DWORD PTR [esi],eax
  5a6ed9:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5a6edc:	57                                              	push   edi
  5a6edd:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  5a6ee1:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a6ee4:	8b c7                                           	mov    eax,edi
  5a6ee6:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6eeb:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6ef0:	75 5a                                           	jne    0x5a6f4c
  5a6ef2:	e8 99 24 1c 00                                  	call   0x769390
  5a6ef7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6ef9:	8b c8                                           	mov    ecx,eax
  5a6efb:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6f01:	57                                              	push   edi
  5a6f02:	ff d0                                           	call   eax
  5a6f04:	85 c0                                           	test   eax,eax
  5a6f06:	74 44                                           	je     0x5a6f4c
  5a6f08:	8b 40 5c                                        	mov    eax,DWORD PTR [eax+0x5c]
  5a6f0b:	f3 0f 10 05 64 e5 fa 00                         	movss  xmm0,DWORD PTR ds:0xfae564
  5a6f13:	8b c8                                           	mov    ecx,eax
  5a6f15:	c1 e9 10                                        	shr    ecx,0x10
  5a6f18:	0f b6 d1                                        	movzx  edx,cl
  5a6f1b:	8b c8                                           	mov    ecx,eax
  5a6f1d:	f3 0f 2a ca                                     	cvtsi2ss xmm1,edx
  5a6f21:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5a6f25:	c1 e9 08                                        	shr    ecx,0x8
  5a6f28:	f3 0f 11 0e                                     	movss  DWORD PTR [esi],xmm1
  5a6f2c:	0f b6 d1                                        	movzx  edx,cl
  5a6f2f:	0f b6 c0                                        	movzx  eax,al
  5a6f32:	f3 0f 2a ca                                     	cvtsi2ss xmm1,edx
  5a6f36:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5a6f3a:	f3 0f 11 4e 04                                  	movss  DWORD PTR [esi+0x4],xmm1
  5a6f3f:	f3 0f 2a c8                                     	cvtsi2ss xmm1,eax
  5a6f43:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5a6f47:	f3 0f 11 4e 08                                  	movss  DWORD PTR [esi+0x8],xmm1
  5a6f4c:	5f                                              	pop    edi
  5a6f4d:	8b c6                                           	mov    eax,esi
  5a6f4f:	5e                                              	pop    esi
  5a6f50:	c3                                              	ret
  5a6f51:	cc                                              	int3
  5a6f52:	cc                                              	int3
  5a6f53:	cc                                              	int3
  5a6f54:	cc                                              	int3
  5a6f55:	cc                                              	int3
  5a6f56:	cc                                              	int3
  5a6f57:	cc                                              	int3
  5a6f58:	cc                                              	int3
  5a6f59:	cc                                              	int3
  5a6f5a:	cc                                              	int3
  5a6f5b:	cc                                              	int3
  5a6f5c:	cc                                              	int3
  5a6f5d:	cc                                              	int3
  5a6f5e:	cc                                              	int3
  5a6f5f:	cc                                              	int3
