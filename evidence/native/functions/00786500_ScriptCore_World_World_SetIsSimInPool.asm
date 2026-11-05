# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786500 (ScriptCore.World::World_SetIsSimInPool)
Paired Ghidra pseudocode: 00786500_ScriptCore_World_World_SetIsSimInPool.c
Window: [0x00786500, 0x00786570) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786500: 55 8b ec 83 e4 f0 83 ec 50 8b 45 08 8b 4d 0c f3
00786510: 0f 10 45 14 33 d2 38 55 10 89 44 24 08 0f 95 c2
00786520: 8d 04 24 50 c7 44 24 04 a3 80 88 1c c7 44 24 08
00786530: 00 00 00 00 89 4c 24 10 f3 0f 11 44 24 18 89 54
00786540: 24 14 e8 39 ce f0 ff 8b 4c 24 08 83 c4 04 85 c9
00786550: 74 0b 8b 11 8b 12 8d 44 24 10 50 ff d2 8b e5 5d
00786560: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786500 <.text+0x385500>:
  786500:	55                                              	push   ebp
  786501:	8b ec                                           	mov    ebp,esp
  786503:	83 e4 f0                                        	and    esp,0xfffffff0
  786506:	83 ec 50                                        	sub    esp,0x50
  786509:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  78650c:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  78650f:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
  786514:	33 d2                                           	xor    edx,edx
  786516:	38 55 10                                        	cmp    BYTE PTR [ebp+0x10],dl
  786519:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  78651d:	0f 95 c2                                        	setne  dl
  786520:	8d 04 24                                        	lea    eax,[esp]
  786523:	50                                              	push   eax
  786524:	c7 44 24 04 a3 80 88 1c                         	mov    DWORD PTR [esp+0x4],0x1c8880a3
  78652c:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  786534:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  786538:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  78653e:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  786542:	e8 39 ce f0 ff                                  	call   0x693380
  786547:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78654b:	83 c4 04                                        	add    esp,0x4
  78654e:	85 c9                                           	test   ecx,ecx
  786550:	74 0b                                           	je     0x78655d
  786552:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  786554:	8b 12                                           	mov    edx,DWORD PTR [edx]
  786556:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  78655a:	50                                              	push   eax
  78655b:	ff d2                                           	call   edx
  78655d:	8b e5                                           	mov    esp,ebp
  78655f:	5d                                              	pop    ebp
  786560:	c3                                              	ret
  786561:	cc                                              	int3
  786562:	cc                                              	int3
  786563:	cc                                              	int3
  786564:	cc                                              	int3
  786565:	cc                                              	int3
  786566:	cc                                              	int3
  786567:	cc                                              	int3
  786568:	cc                                              	int3
  786569:	cc                                              	int3
  78656a:	cc                                              	int3
  78656b:	cc                                              	int3
  78656c:	cc                                              	int3
  78656d:	cc                                              	int3
  78656e:	cc                                              	int3
  78656f:	cc                                              	int3
