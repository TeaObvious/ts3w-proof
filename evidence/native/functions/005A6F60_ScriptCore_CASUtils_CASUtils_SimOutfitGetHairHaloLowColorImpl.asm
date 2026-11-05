# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6f60 (ScriptCore.CASUtils::CASUtils_SimOutfitGetHairHaloLowColorImpl)
Paired Ghidra pseudocode: 005A6F60_ScriptCore_CASUtils_CASUtils_SimOutfitGetHairHaloLowColorImpl.c
Window: [0x005a6f60, 0x005a6ff0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6ff0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6f60: 33 c0 56 8b 74 24 08 89 06 89 46 04 57 8b 7c 24
005a6f70: 10 89 46 08 8b c7 25 00 00 00 ff 3d 00 00 00 35
005a6f80: 75 5a e8 09 24 1c 00 8b 10 8b c8 8b 82 cc 00 00
005a6f90: 00 57 ff d0 85 c0 74 44 8b 40 60 f3 0f 10 05 64
005a6fa0: e5 fa 00 8b c8 c1 e9 10 0f b6 d1 8b c8 f3 0f 2a
005a6fb0: ca f3 0f 59 c8 c1 e9 08 f3 0f 11 0e 0f b6 d1 0f
005a6fc0: b6 c0 f3 0f 2a ca f3 0f 59 c8 f3 0f 11 4e 04 f3
005a6fd0: 0f 2a c8 f3 0f 59 c8 f3 0f 11 4e 08 5f 8b c6 5e
005a6fe0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6f60 <.text+0x1a5f60>:
  5a6f60:	33 c0                                           	xor    eax,eax
  5a6f62:	56                                              	push   esi
  5a6f63:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6f67:	89 06                                           	mov    DWORD PTR [esi],eax
  5a6f69:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5a6f6c:	57                                              	push   edi
  5a6f6d:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  5a6f71:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a6f74:	8b c7                                           	mov    eax,edi
  5a6f76:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6f7b:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6f80:	75 5a                                           	jne    0x5a6fdc
  5a6f82:	e8 09 24 1c 00                                  	call   0x769390
  5a6f87:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6f89:	8b c8                                           	mov    ecx,eax
  5a6f8b:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6f91:	57                                              	push   edi
  5a6f92:	ff d0                                           	call   eax
  5a6f94:	85 c0                                           	test   eax,eax
  5a6f96:	74 44                                           	je     0x5a6fdc
  5a6f98:	8b 40 60                                        	mov    eax,DWORD PTR [eax+0x60]
  5a6f9b:	f3 0f 10 05 64 e5 fa 00                         	movss  xmm0,DWORD PTR ds:0xfae564
  5a6fa3:	8b c8                                           	mov    ecx,eax
  5a6fa5:	c1 e9 10                                        	shr    ecx,0x10
  5a6fa8:	0f b6 d1                                        	movzx  edx,cl
  5a6fab:	8b c8                                           	mov    ecx,eax
  5a6fad:	f3 0f 2a ca                                     	cvtsi2ss xmm1,edx
  5a6fb1:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5a6fb5:	c1 e9 08                                        	shr    ecx,0x8
  5a6fb8:	f3 0f 11 0e                                     	movss  DWORD PTR [esi],xmm1
  5a6fbc:	0f b6 d1                                        	movzx  edx,cl
  5a6fbf:	0f b6 c0                                        	movzx  eax,al
  5a6fc2:	f3 0f 2a ca                                     	cvtsi2ss xmm1,edx
  5a6fc6:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5a6fca:	f3 0f 11 4e 04                                  	movss  DWORD PTR [esi+0x4],xmm1
  5a6fcf:	f3 0f 2a c8                                     	cvtsi2ss xmm1,eax
  5a6fd3:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5a6fd7:	f3 0f 11 4e 08                                  	movss  DWORD PTR [esi+0x8],xmm1
  5a6fdc:	5f                                              	pop    edi
  5a6fdd:	8b c6                                           	mov    eax,esi
  5a6fdf:	5e                                              	pop    esi
  5a6fe0:	c3                                              	ret
  5a6fe1:	cc                                              	int3
  5a6fe2:	cc                                              	int3
  5a6fe3:	cc                                              	int3
  5a6fe4:	cc                                              	int3
  5a6fe5:	cc                                              	int3
  5a6fe6:	cc                                              	int3
  5a6fe7:	cc                                              	int3
  5a6fe8:	cc                                              	int3
  5a6fe9:	cc                                              	int3
  5a6fea:	cc                                              	int3
  5a6feb:	cc                                              	int3
  5a6fec:	cc                                              	int3
  5a6fed:	cc                                              	int3
  5a6fee:	cc                                              	int3
  5a6fef:	cc                                              	int3
