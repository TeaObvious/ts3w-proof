# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1a20 (CASUtils_SimOutfitGetSkinToneIndexImpl)
Paired Ghidra pseudocode: 103A1A20_CASUtils_SimOutfitGetSkinToneIndexImpl.c
Window: [0x103a1a20, 0x103a1a70) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1a70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1a20: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1a30: 35 74 0f 0f 57 c0 f3 0f 11 44 24 08 d9 44 24 08
103a1a40: 5e c3 e8 d9 96 1b 00 8b 10 8b c8 8b 82 cc 00 00
103a1a50: 00 56 ff d0 85 c0 74 db f3 0f 10 40 50 f3 0f 11
103a1a60: 44 24 08 d9 44 24 08 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1a20 <.text+0x3a0a20>:
103a1a20:	56                                              	push   esi
103a1a21:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1a25:	8b c6                                           	mov    eax,esi
103a1a27:	25 00 00 00 ff                                  	and    eax,0xff000000
103a1a2c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1a31:	74 0f                                           	je     0x103a1a42
103a1a33:	0f 57 c0                                        	xorps  xmm0,xmm0
103a1a36:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1a3c:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1a40:	5e                                              	pop    esi
103a1a41:	c3                                              	ret
103a1a42:	e8 d9 96 1b 00                                  	call   0x1055b120
103a1a47:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1a49:	8b c8                                           	mov    ecx,eax
103a1a4b:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1a51:	56                                              	push   esi
103a1a52:	ff d0                                           	call   eax
103a1a54:	85 c0                                           	test   eax,eax
103a1a56:	74 db                                           	je     0x103a1a33
103a1a58:	f3 0f 10 40 50                                  	movss  xmm0,DWORD PTR [eax+0x50]
103a1a5d:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1a63:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1a67:	5e                                              	pop    esi
103a1a68:	c3                                              	ret
103a1a69:	cc                                              	int3
103a1a6a:	cc                                              	int3
103a1a6b:	cc                                              	int3
103a1a6c:	cc                                              	int3
103a1a6d:	cc                                              	int3
103a1a6e:	cc                                              	int3
103a1a6f:	cc                                              	int3
