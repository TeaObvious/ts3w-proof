# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786150 (ScriptCore.World::World_DesignModeSwap_SetSourceBuildBuyImpl)
Paired Ghidra pseudocode: 00786150_ScriptCore_World_World_DesignModeSwap_SetSourceBuildBuyImpl.c
Window: [0x00786150, 0x007861d0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x007861d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786150: 55 8b ec 83 e4 f0 83 ec 10 e8 32 32 fe ff 8b 4d
00786160: 08 8b d1 81 e2 00 00 00 ff 81 fa 00 00 00 45 74
00786170: 06 32 c0 8b e5 5d c3 8b 10 51 8b c8 8b 82 cc 00
00786180: 00 00 ff d0 85 c0 74 e9 f3 0f 10 4d 18 f3 0f 10
00786190: 45 10 8b 55 0c f3 0f 11 4c 24 08 f3 0f 10 4d 14
007861a0: 8d 0c 24 51 f3 0f 11 44 24 10 f3 0f 11 4c 24 08
007861b0: f3 0f 11 44 24 04 0f 28 44 24 04 52 8b c8 0f 29
007861c0: 44 24 08 e8 18 8e 2d 00 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
00786150 <.text+0x385150>:
  786150:	55                                              	push   ebp
  786151:	8b ec                                           	mov    ebp,esp
  786153:	83 e4 f0                                        	and    esp,0xfffffff0
  786156:	83 ec 10                                        	sub    esp,0x10
  786159:	e8 32 32 fe ff                                  	call   0x769390
  78615e:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  786161:	8b d1                                           	mov    edx,ecx
  786163:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  786169:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
  78616f:	74 06                                           	je     0x786177
  786171:	32 c0                                           	xor    al,al
  786173:	8b e5                                           	mov    esp,ebp
  786175:	5d                                              	pop    ebp
  786176:	c3                                              	ret
  786177:	8b 10                                           	mov    edx,DWORD PTR [eax]
  786179:	51                                              	push   ecx
  78617a:	8b c8                                           	mov    ecx,eax
  78617c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  786182:	ff d0                                           	call   eax
  786184:	85 c0                                           	test   eax,eax
  786186:	74 e9                                           	je     0x786171
  786188:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  78618d:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
  786192:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  786195:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  78619b:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  7861a0:	8d 0c 24                                        	lea    ecx,[esp]
  7861a3:	51                                              	push   ecx
  7861a4:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  7861aa:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  7861b0:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
  7861b6:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
  7861bb:	52                                              	push   edx
  7861bc:	8b c8                                           	mov    ecx,eax
  7861be:	0f 29 44 24 08                                  	movaps XMMWORD PTR [esp+0x8],xmm0
  7861c3:	e8 18 8e 2d 00                                  	call   0xa5efe0
  7861c8:	8b e5                                           	mov    esp,ebp
  7861ca:	5d                                              	pop    ebp
  7861cb:	c3                                              	ret
  7861cc:	cc                                              	int3
  7861cd:	cc                                              	int3
  7861ce:	cc                                              	int3
  7861cf:	cc                                              	int3
