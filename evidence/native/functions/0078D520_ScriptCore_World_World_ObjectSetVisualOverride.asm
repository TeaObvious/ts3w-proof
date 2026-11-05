# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d520 (ScriptCore.World::World_ObjectSetVisualOverride)
Paired Ghidra pseudocode: 0078D520_ScriptCore_World_World_ObjectSetVisualOverride.c
Window: [0x0078d520, 0x0078d5d0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d5d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d520: 83 ec 08 e8 68 be fd ff 85 c0 0f 84 8c 00 00 00
0078d530: 8b 4c 24 18 85 c9 c7 44 24 04 00 00 00 00 c7 04
0078d540: 24 00 00 00 00 74 2a 8b 10 57 8d 7c 24 04 57 8d
0078d550: 7c 24 0c 57 51 8b c8 8b 42 78 ff d0 8b 44 24 04
0078d560: 85 c0 5f 74 07 83 7c 24 04 00 74 50 83 f8 09 77
0078d570: 4b e8 fa 9f 1a 00 85 c0 74 42 8b 4c 24 10 8b 54
0078d580: 24 0c 51 52 8b c8 e8 f5 a9 1a 00 85 c0 74 2d 8b
0078d590: 0d a8 a2 1e 01 51 8b c8 e8 c3 6c 1a 00 85 c0 74
0078d5a0: 1b 8b 14 24 8b 4c 24 04 52 8b 54 24 18 51 52 8b
0078d5b0: c8 e8 8a 12 1d 00 b0 01 83 c4 08 c3 32 c0 83 c4
0078d5c0: 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078d520 <.text+0x38c520>:
  78d520:	83 ec 08                                        	sub    esp,0x8
  78d523:	e8 68 be fd ff                                  	call   0x769390
  78d528:	85 c0                                           	test   eax,eax
  78d52a:	0f 84 8c 00 00 00                               	je     0x78d5bc
  78d530:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78d534:	85 c9                                           	test   ecx,ecx
  78d536:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  78d53e:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
  78d545:	74 2a                                           	je     0x78d571
  78d547:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78d549:	57                                              	push   edi
  78d54a:	8d 7c 24 04                                     	lea    edi,[esp+0x4]
  78d54e:	57                                              	push   edi
  78d54f:	8d 7c 24 0c                                     	lea    edi,[esp+0xc]
  78d553:	57                                              	push   edi
  78d554:	51                                              	push   ecx
  78d555:	8b c8                                           	mov    ecx,eax
  78d557:	8b 42 78                                        	mov    eax,DWORD PTR [edx+0x78]
  78d55a:	ff d0                                           	call   eax
  78d55c:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  78d560:	85 c0                                           	test   eax,eax
  78d562:	5f                                              	pop    edi
  78d563:	74 07                                           	je     0x78d56c
  78d565:	83 7c 24 04 00                                  	cmp    DWORD PTR [esp+0x4],0x0
  78d56a:	74 50                                           	je     0x78d5bc
  78d56c:	83 f8 09                                        	cmp    eax,0x9
  78d56f:	77 4b                                           	ja     0x78d5bc
  78d571:	e8 fa 9f 1a 00                                  	call   0x937570
  78d576:	85 c0                                           	test   eax,eax
  78d578:	74 42                                           	je     0x78d5bc
  78d57a:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78d57e:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78d582:	51                                              	push   ecx
  78d583:	52                                              	push   edx
  78d584:	8b c8                                           	mov    ecx,eax
  78d586:	e8 f5 a9 1a 00                                  	call   0x937f80
  78d58b:	85 c0                                           	test   eax,eax
  78d58d:	74 2d                                           	je     0x78d5bc
  78d58f:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78d595:	51                                              	push   ecx
  78d596:	8b c8                                           	mov    ecx,eax
  78d598:	e8 c3 6c 1a 00                                  	call   0x934260
  78d59d:	85 c0                                           	test   eax,eax
  78d59f:	74 1b                                           	je     0x78d5bc
  78d5a1:	8b 14 24                                        	mov    edx,DWORD PTR [esp]
  78d5a4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  78d5a8:	52                                              	push   edx
  78d5a9:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  78d5ad:	51                                              	push   ecx
  78d5ae:	52                                              	push   edx
  78d5af:	8b c8                                           	mov    ecx,eax
  78d5b1:	e8 8a 12 1d 00                                  	call   0x95e840
  78d5b6:	b0 01                                           	mov    al,0x1
  78d5b8:	83 c4 08                                        	add    esp,0x8
  78d5bb:	c3                                              	ret
  78d5bc:	32 c0                                           	xor    al,al
  78d5be:	83 c4 08                                        	add    esp,0x8
  78d5c1:	c3                                              	ret
  78d5c2:	cc                                              	int3
  78d5c3:	cc                                              	int3
  78d5c4:	cc                                              	int3
  78d5c5:	cc                                              	int3
  78d5c6:	cc                                              	int3
  78d5c7:	cc                                              	int3
  78d5c8:	cc                                              	int3
  78d5c9:	cc                                              	int3
  78d5ca:	cc                                              	int3
  78d5cb:	cc                                              	int3
  78d5cc:	cc                                              	int3
  78d5cd:	cc                                              	int3
  78d5ce:	cc                                              	int3
  78d5cf:	cc                                              	int3
