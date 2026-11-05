# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d83540 (ScriptCore.PersistImports::Serializer_GetAssemblyHashCode)
Paired Ghidra pseudocode: 00D83540_ScriptCore_PersistImports_Serializer_GetAssemblyHashCode.c
Window: [0x00d83540, 0x00d835a0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d835a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d83540: 8b 44 24 04 83 ec 08 85 c0 75 06 33 c0 83 c4 08
00d83550: c3 8b 40 04 50 e8 c6 4e 0e 00 8b 48 08 83 c4 04
00d83560: 85 c9 74 e7 8b 40 0c 6a 01 6a ff 6a ff 50 51 e8
00d83570: 7c 71 77 ff 8d 4c 24 14 83 c4 14 51 89 44 24 04
00d83580: 89 54 24 08 e8 97 24 0f 00 50 e8 c1 1f 0f 00 50
00d83590: e8 ab fe 11 00 83 c4 0c 83 c4 08 c3 cc cc cc cc

LINEAR DISASSEMBLY
00d83540 <.text+0x982540>:
  d83540:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  d83544:	83 ec 08                                        	sub    esp,0x8
  d83547:	85 c0                                           	test   eax,eax
  d83549:	75 06                                           	jne    0xd83551
  d8354b:	33 c0                                           	xor    eax,eax
  d8354d:	83 c4 08                                        	add    esp,0x8
  d83550:	c3                                              	ret
  d83551:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
  d83554:	50                                              	push   eax
  d83555:	e8 c6 4e 0e 00                                  	call   0xe68420
  d8355a:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d8355d:	83 c4 04                                        	add    esp,0x4
  d83560:	85 c9                                           	test   ecx,ecx
  d83562:	74 e7                                           	je     0xd8354b
  d83564:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d83567:	6a 01                                           	push   0x1
  d83569:	6a ff                                           	push   0xffffffff
  d8356b:	6a ff                                           	push   0xffffffff
  d8356d:	50                                              	push   eax
  d8356e:	51                                              	push   ecx
  d8356f:	e8 7c 71 77 ff                                  	call   0x4fa6f0
  d83574:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  d83578:	83 c4 14                                        	add    esp,0x14
  d8357b:	51                                              	push   ecx
  d8357c:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  d83580:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  d83584:	e8 97 24 0f 00                                  	call   0xe75a20
  d83589:	50                                              	push   eax
  d8358a:	e8 c1 1f 0f 00                                  	call   0xe75550
  d8358f:	50                                              	push   eax
  d83590:	e8 ab fe 11 00                                  	call   0xea3440
  d83595:	83 c4 0c                                        	add    esp,0xc
  d83598:	83 c4 08                                        	add    esp,0x8
  d8359b:	c3                                              	ret
  d8359c:	cc                                              	int3
  d8359d:	cc                                              	int3
  d8359e:	cc                                              	int3
  d8359f:	cc                                              	int3
