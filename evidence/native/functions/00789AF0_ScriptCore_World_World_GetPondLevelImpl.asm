# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00789af0 (ScriptCore.World::World_GetPondLevelImpl)
Paired Ghidra pseudocode: 00789AF0_ScriptCore_World_World_GetPondLevelImpl.c
Window: [0x00789af0, 0x00789b70) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00789b70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00789af0: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 10 85
00789b00: c9 74 5f d9 45 0c 6a 01 83 ec 08 d9 5c 24 04 d9
00789b10: 45 08 d9 1c 24 e8 06 73 4d 00 8b 45 10 f3 0f 10
00789b20: 05 18 b2 fa 00 d9 10 d8 25 84 18 01 01 0f c6 c0
00789b30: 00 d9 5c 24 0c f3 0f 10 4c 24 0c 0f c6 c9 00 0f
00789b40: 59 c1 0f 5f c1 f3 0f 10 0d 94 18 01 01 0f c6 c9
00789b50: 00 0f c2 c1 02 0f 50 c8 83 f9 0f 0f 94 c0 8b e5
00789b60: 5d c3 32 c0 8b e5 5d c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00789af0 <.text+0x388af0>:
  789af0:	55                                              	push   ebp
  789af1:	8b ec                                           	mov    ebp,esp
  789af3:	83 e4 f0                                        	and    esp,0xfffffff0
  789af6:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  789afc:	83 ec 10                                        	sub    esp,0x10
  789aff:	85 c9                                           	test   ecx,ecx
  789b01:	74 5f                                           	je     0x789b62
  789b03:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
  789b06:	6a 01                                           	push   0x1
  789b08:	83 ec 08                                        	sub    esp,0x8
  789b0b:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  789b0f:	d9 45 08                                        	fld    DWORD PTR [ebp+0x8]
  789b12:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  789b15:	e8 06 73 4d 00                                  	call   0xc60e20
  789b1a:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  789b1d:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  789b25:	d9 10                                           	fst    DWORD PTR [eax]
  789b27:	d8 25 84 18 01 01                               	fsub   DWORD PTR ds:0x1011884
  789b2d:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  789b31:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  789b35:	f3 0f 10 4c 24 0c                               	movss  xmm1,DWORD PTR [esp+0xc]
  789b3b:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  789b3f:	0f 59 c1                                        	mulps  xmm0,xmm1
  789b42:	0f 5f c1                                        	maxps  xmm0,xmm1
  789b45:	f3 0f 10 0d 94 18 01 01                         	movss  xmm1,DWORD PTR ds:0x1011894
  789b4d:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  789b51:	0f c2 c1 02                                     	cmpleps xmm0,xmm1
  789b55:	0f 50 c8                                        	movmskps ecx,xmm0
  789b58:	83 f9 0f                                        	cmp    ecx,0xf
  789b5b:	0f 94 c0                                        	sete   al
  789b5e:	8b e5                                           	mov    esp,ebp
  789b60:	5d                                              	pop    ebp
  789b61:	c3                                              	ret
  789b62:	32 c0                                           	xor    al,al
  789b64:	8b e5                                           	mov    esp,ebp
  789b66:	5d                                              	pop    ebp
  789b67:	c3                                              	ret
  789b68:	cc                                              	int3
  789b69:	cc                                              	int3
  789b6a:	cc                                              	int3
  789b6b:	cc                                              	int3
  789b6c:	cc                                              	int3
  789b6d:	cc                                              	int3
  789b6e:	cc                                              	int3
  789b6f:	cc                                              	int3
