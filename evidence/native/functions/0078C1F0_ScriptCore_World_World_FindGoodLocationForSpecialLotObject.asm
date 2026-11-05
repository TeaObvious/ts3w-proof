# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078c1f0 (ScriptCore.World::World_FindGoodLocationForSpecialLotObject)
Paired Ghidra pseudocode: 0078C1F0_ScriptCore_World_World_FindGoodLocationForSpecialLotObject.c
Window: [0x0078c1f0, 0x0078c2c0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078c2c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078c1f0: 55 8b ec 83 e4 f0 8b 55 1c 83 ec 20 8d 44 24 10
0078c200: 50 8b 45 18 8d 4c 24 04 51 8b 4d 14 52 8b 55 10
0078c210: 50 8b 45 0c 51 8b 4d 08 52 50 51 e8 b0 d3 4e 00
0078c220: 83 c4 20 84 c0 0f 84 87 00 00 00 8b 45 20 85 c0
0078c230: 74 2f 0f 28 04 24 0f 29 04 24 f3 0f 10 0c 24 0f
0078c240: 29 04 24 f3 0f 11 08 f3 0f 10 4c 24 04 0f 29 04
0078c250: 24 f3 0f 10 44 24 08 f3 0f 11 48 04 f3 0f 11 40
0078c260: 08 8b 45 24 85 c0 74 44 0f 28 44 24 10 0f 29 44
0078c270: 24 10 f3 0f 10 4c 24 10 0f 29 44 24 10 f3 0f 11
0078c280: 08 f3 0f 10 4c 24 14 0f 29 44 24 10 f3 0f 11 48
0078c290: 04 f3 0f 10 4c 24 18 0f 29 44 24 10 f3 0f 10 44
0078c2a0: 24 1c f3 0f 11 48 08 f3 0f 11 40 0c b0 01 8b e5
0078c2b0: 5d c3 32 c0 8b e5 5d c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078c1f0 <.text+0x38b1f0>:
  78c1f0:	55                                              	push   ebp
  78c1f1:	8b ec                                           	mov    ebp,esp
  78c1f3:	83 e4 f0                                        	and    esp,0xfffffff0
  78c1f6:	8b 55 1c                                        	mov    edx,DWORD PTR [ebp+0x1c]
  78c1f9:	83 ec 20                                        	sub    esp,0x20
  78c1fc:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  78c200:	50                                              	push   eax
  78c201:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
  78c204:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  78c208:	51                                              	push   ecx
  78c209:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  78c20c:	52                                              	push   edx
  78c20d:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  78c210:	50                                              	push   eax
  78c211:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  78c214:	51                                              	push   ecx
  78c215:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  78c218:	52                                              	push   edx
  78c219:	50                                              	push   eax
  78c21a:	51                                              	push   ecx
  78c21b:	e8 b0 d3 4e 00                                  	call   0xc795d0
  78c220:	83 c4 20                                        	add    esp,0x20
  78c223:	84 c0                                           	test   al,al
  78c225:	0f 84 87 00 00 00                               	je     0x78c2b2
  78c22b:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
  78c22e:	85 c0                                           	test   eax,eax
  78c230:	74 2f                                           	je     0x78c261
  78c232:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
  78c236:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
  78c23a:	f3 0f 10 0c 24                                  	movss  xmm1,DWORD PTR [esp]
  78c23f:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
  78c243:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  78c247:	f3 0f 10 4c 24 04                               	movss  xmm1,DWORD PTR [esp+0x4]
  78c24d:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
  78c251:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  78c257:	f3 0f 11 48 04                                  	movss  DWORD PTR [eax+0x4],xmm1
  78c25c:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
  78c261:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
  78c264:	85 c0                                           	test   eax,eax
  78c266:	74 44                                           	je     0x78c2ac
  78c268:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  78c26d:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  78c272:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
  78c278:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  78c27d:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  78c281:	f3 0f 10 4c 24 14                               	movss  xmm1,DWORD PTR [esp+0x14]
  78c287:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  78c28c:	f3 0f 11 48 04                                  	movss  DWORD PTR [eax+0x4],xmm1
  78c291:	f3 0f 10 4c 24 18                               	movss  xmm1,DWORD PTR [esp+0x18]
  78c297:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  78c29c:	f3 0f 10 44 24 1c                               	movss  xmm0,DWORD PTR [esp+0x1c]
  78c2a2:	f3 0f 11 48 08                                  	movss  DWORD PTR [eax+0x8],xmm1
  78c2a7:	f3 0f 11 40 0c                                  	movss  DWORD PTR [eax+0xc],xmm0
  78c2ac:	b0 01                                           	mov    al,0x1
  78c2ae:	8b e5                                           	mov    esp,ebp
  78c2b0:	5d                                              	pop    ebp
  78c2b1:	c3                                              	ret
  78c2b2:	32 c0                                           	xor    al,al
  78c2b4:	8b e5                                           	mov    esp,ebp
  78c2b6:	5d                                              	pop    ebp
  78c2b7:	c3                                              	ret
  78c2b8:	cc                                              	int3
  78c2b9:	cc                                              	int3
  78c2ba:	cc                                              	int3
  78c2bb:	cc                                              	int3
  78c2bc:	cc                                              	int3
  78c2bd:	cc                                              	int3
  78c2be:	cc                                              	int3
  78c2bf:	cc                                              	int3
