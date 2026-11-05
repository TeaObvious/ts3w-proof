# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008a1970 (AudioEmitter_EvaluateDistanceCurve)
Paired Ghidra pseudocode: 008A1970_AudioEmitter_EvaluateDistanceCurve.c
Window: [0x008a1970, 0x008a1a30) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x008a1a30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008a1970: f3 0f 10 54 24 04 f3 0f 10 4c 24 10 0f 2f d1 76
008a1980: 05 d9 ee c2 10 00 0f 28 c1 f3 0f 5c 4c 24 0c f3
008a1990: 0f 5c c2 f3 0f 5e c1 f3 0f 10 0d f0 98 f9 00 f3
008a19a0: 0f 5c c8 f3 0f 11 4c 24 04 8b 44 24 04 0f 57 c9
008a19b0: c1 f8 1f 56 f3 0f 11 44 24 14 8b 74 24 14 f3 0f
008a19c0: 10 05 f8 98 f9 00 8b d0 f7 d2 f3 0f 11 4c 24 08
008a19d0: 23 54 24 08 23 f0 0b d6 89 54 24 08 f3 0f 10 4c
008a19e0: 24 08 0f 28 d0 f3 0f 5c d1 f3 0f 11 54 24 08 8b
008a19f0: 44 24 08 c1 f8 1f f3 0f 11 44 24 14 8b 74 24 14
008a1a00: 8b d0 f3 0f 11 4c 24 08 f7 d2 23 54 24 08 23 f0
008a1a10: 0b d6 89 54 24 08 f3 0f 5c 44 24 08 51 83 c1 10
008a1a20: f3 0f 11 04 24 e8 46 81 00 00 5e c2 10 00 cc cc

LINEAR DISASSEMBLY
008a1970 <.text+0x4a0970>:
  8a1970:	f3 0f 10 54 24 04                               	movss  xmm2,DWORD PTR [esp+0x4]
  8a1976:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
  8a197c:	0f 2f d1                                        	comiss xmm2,xmm1
  8a197f:	76 05                                           	jbe    0x8a1986
  8a1981:	d9 ee                                           	fldz
  8a1983:	c2 10 00                                        	ret    0x10
  8a1986:	0f 28 c1                                        	movaps xmm0,xmm1
  8a1989:	f3 0f 5c 4c 24 0c                               	subss  xmm1,DWORD PTR [esp+0xc]
  8a198f:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  8a1993:	f3 0f 5e c1                                     	divss  xmm0,xmm1
  8a1997:	f3 0f 10 0d f0 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f0
  8a199f:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  8a19a3:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  8a19a9:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  8a19ad:	0f 57 c9                                        	xorps  xmm1,xmm1
  8a19b0:	c1 f8 1f                                        	sar    eax,0x1f
  8a19b3:	56                                              	push   esi
  8a19b4:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  8a19ba:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  8a19be:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  8a19c6:	8b d0                                           	mov    edx,eax
  8a19c8:	f7 d2                                           	not    edx
  8a19ca:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  8a19d0:	23 54 24 08                                     	and    edx,DWORD PTR [esp+0x8]
  8a19d4:	23 f0                                           	and    esi,eax
  8a19d6:	0b d6                                           	or     edx,esi
  8a19d8:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  8a19dc:	f3 0f 10 4c 24 08                               	movss  xmm1,DWORD PTR [esp+0x8]
  8a19e2:	0f 28 d0                                        	movaps xmm2,xmm0
  8a19e5:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  8a19e9:	f3 0f 11 54 24 08                               	movss  DWORD PTR [esp+0x8],xmm2
  8a19ef:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  8a19f3:	c1 f8 1f                                        	sar    eax,0x1f
  8a19f6:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  8a19fc:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  8a1a00:	8b d0                                           	mov    edx,eax
  8a1a02:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  8a1a08:	f7 d2                                           	not    edx
  8a1a0a:	23 54 24 08                                     	and    edx,DWORD PTR [esp+0x8]
  8a1a0e:	23 f0                                           	and    esi,eax
  8a1a10:	0b d6                                           	or     edx,esi
  8a1a12:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  8a1a16:	f3 0f 5c 44 24 08                               	subss  xmm0,DWORD PTR [esp+0x8]
  8a1a1c:	51                                              	push   ecx
  8a1a1d:	83 c1 10                                        	add    ecx,0x10
  8a1a20:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  8a1a25:	e8 46 81 00 00                                  	call   0x8a9b70
  8a1a2a:	5e                                              	pop    esi
  8a1a2b:	c2 10 00                                        	ret    0x10
  8a1a2e:	cc                                              	int3
  8a1a2f:	cc                                              	int3
