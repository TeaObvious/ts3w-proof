# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078a0b0 (ScriptCore.World::World_GetScreenSpacePosImpl)
Paired Ghidra pseudocode: 0078A0B0_ScriptCore_World_World_GetScreenSpacePosImpl.c
Window: [0x0078a0b0, 0x0078a170) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078a170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078a0b0: 55 8b ec 83 e4 f0 83 ec 3c 0f 57 c0 53 32 db f3
0078a0c0: 0f 11 44 24 08 f3 0f 11 44 24 0c e8 00 fb 1d 00
0078a0d0: 8b c8 e8 19 7f 79 00 85 c0 74 77 8b c8 e8 fe 9c
0078a0e0: d8 ff f3 0f 10 4d 10 f3 0f 10 45 08 8b 40 0c 8d
0078a0f0: 4c 24 30 f3 0f 11 4c 24 18 f3 0f 10 4d 0c 51 8d
0078a100: 54 24 24 f3 0f 11 44 24 20 f3 0f 11 4c 24 18 f3
0078a110: 0f 11 44 24 14 0f 28 44 24 14 52 50 0f 29 44 24
0078a120: 2c e8 0a 55 04 00 0f 28 44 24 3c 0f 29 44 24 3c
0078a130: f3 0f 10 4c 24 3c 0f 29 44 24 3c f3 0f 10 44 24
0078a140: 40 83 c4 0c 8a d8 f3 0f 11 4c 24 08 f3 0f 11 44
0078a150: 24 0c 8b 45 14 8b 4c 24 08 8b 54 24 0c 89 08 89
0078a160: 50 04 8a c3 5b 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078a0b0 <.text+0x3890b0>:
  78a0b0:	55                                              	push   ebp
  78a0b1:	8b ec                                           	mov    ebp,esp
  78a0b3:	83 e4 f0                                        	and    esp,0xfffffff0
  78a0b6:	83 ec 3c                                        	sub    esp,0x3c
  78a0b9:	0f 57 c0                                        	xorps  xmm0,xmm0
  78a0bc:	53                                              	push   ebx
  78a0bd:	32 db                                           	xor    bl,bl
  78a0bf:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  78a0c5:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  78a0cb:	e8 00 fb 1d 00                                  	call   0x969bd0
  78a0d0:	8b c8                                           	mov    ecx,eax
  78a0d2:	e8 19 7f 79 00                                  	call   0xf21ff0
  78a0d7:	85 c0                                           	test   eax,eax
  78a0d9:	74 77                                           	je     0x78a152
  78a0db:	8b c8                                           	mov    ecx,eax
  78a0dd:	e8 fe 9c d8 ff                                  	call   0x513de0
  78a0e2:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  78a0e7:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  78a0ec:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  78a0ef:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  78a0f3:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  78a0f9:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  78a0fe:	51                                              	push   ecx
  78a0ff:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  78a103:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  78a109:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  78a10f:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78a115:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
  78a11a:	52                                              	push   edx
  78a11b:	50                                              	push   eax
  78a11c:	0f 29 44 24 2c                                  	movaps XMMWORD PTR [esp+0x2c],xmm0
  78a121:	e8 0a 55 04 00                                  	call   0x7cf630
  78a126:	0f 28 44 24 3c                                  	movaps xmm0,XMMWORD PTR [esp+0x3c]
  78a12b:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
  78a130:	f3 0f 10 4c 24 3c                               	movss  xmm1,DWORD PTR [esp+0x3c]
  78a136:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
  78a13b:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [esp+0x40]
  78a141:	83 c4 0c                                        	add    esp,0xc
  78a144:	8a d8                                           	mov    bl,al
  78a146:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  78a14c:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  78a152:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  78a155:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78a159:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78a15d:	89 08                                           	mov    DWORD PTR [eax],ecx
  78a15f:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  78a162:	8a c3                                           	mov    al,bl
  78a164:	5b                                              	pop    ebx
  78a165:	8b e5                                           	mov    esp,ebp
  78a167:	5d                                              	pop    ebp
  78a168:	c3                                              	ret
  78a169:	cc                                              	int3
  78a16a:	cc                                              	int3
  78a16b:	cc                                              	int3
  78a16c:	cc                                              	int3
  78a16d:	cc                                              	int3
  78a16e:	cc                                              	int3
  78a16f:	cc                                              	int3
