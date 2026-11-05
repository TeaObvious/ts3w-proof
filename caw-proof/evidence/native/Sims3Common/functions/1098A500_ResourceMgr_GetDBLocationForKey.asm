# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098a500 (ResourceMgr_GetDBLocationForKey)
Paired Ghidra pseudocode: 1098A500_ResourceMgr_GetDBLocationForKey.c
Window: [0x1098a500, 0x1098a570) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098a570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098a500: 83 ec 20 8b 44 24 24 8b 08 8b 50 04 89 4c 24 08
1098a510: 8b 48 08 89 54 24 0c 8b 50 0c 56 8d 44 24 04 89
1098a520: 4c 24 04 50 8d 4c 24 18 51 89 54 24 10 e8 5e 1f
1098a530: c4 ff 8b 00 83 c4 08 50 ff 15 c4 b6 aa 10 8b 54
1098a540: 24 1c 8b f0 8b 44 24 14 2b d0 83 e2 fe 83 fa 02
1098a550: 7e 0d 85 c0 74 09 50 e8 34 e9 f8 ff 83 c4 04 8b
1098a560: c6 5e 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098a500 <.text+0x989500>:
1098a500:	83 ec 20                                        	sub    esp,0x20
1098a503:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1098a507:	8b 08                                           	mov    ecx,DWORD PTR [eax]
1098a509:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098a50c:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1098a510:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1098a513:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
1098a517:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098a51a:	56                                              	push   esi
1098a51b:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1098a51f:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
1098a523:	50                                              	push   eax
1098a524:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1098a528:	51                                              	push   ecx
1098a529:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
1098a52d:	e8 5e 1f c4 ff                                  	call   0x105cc490
1098a532:	8b 00                                           	mov    eax,DWORD PTR [eax]
1098a534:	83 c4 08                                        	add    esp,0x8
1098a537:	50                                              	push   eax
1098a538:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1098a53e:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1098a542:	8b f0                                           	mov    esi,eax
1098a544:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1098a548:	2b d0                                           	sub    edx,eax
1098a54a:	83 e2 fe                                        	and    edx,0xfffffffe
1098a54d:	83 fa 02                                        	cmp    edx,0x2
1098a550:	7e 0d                                           	jle    0x1098a55f
1098a552:	85 c0                                           	test   eax,eax
1098a554:	74 09                                           	je     0x1098a55f
1098a556:	50                                              	push   eax
1098a557:	e8 34 e9 f8 ff                                  	call   0x10918e90
1098a55c:	83 c4 04                                        	add    esp,0x4
1098a55f:	8b c6                                           	mov    eax,esi
1098a561:	5e                                              	pop    esi
1098a562:	83 c4 20                                        	add    esp,0x20
1098a565:	c3                                              	ret
1098a566:	cc                                              	int3
1098a567:	cc                                              	int3
1098a568:	cc                                              	int3
1098a569:	cc                                              	int3
1098a56a:	cc                                              	int3
1098a56b:	cc                                              	int3
1098a56c:	cc                                              	int3
1098a56d:	cc                                              	int3
1098a56e:	cc                                              	int3
1098a56f:	cc                                              	int3
