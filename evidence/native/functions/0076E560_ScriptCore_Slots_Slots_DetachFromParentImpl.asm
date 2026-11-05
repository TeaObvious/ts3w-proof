# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076e560 (ScriptCore.Slots::Slots_DetachFromParentImpl)
Paired Ghidra pseudocode: 0076E560_ScriptCore_Slots_Slots_DetachFromParentImpl.c
Window: [0x0076e560, 0x0076e600) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076e600
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076e560: 55 8b ec 83 e4 f0 83 ec 2c 56 e8 01 90 1c 00 8b
0076e570: 4d 0c 8b 55 08 51 52 8b c8 e8 02 9a 1c 00 85 c0
0076e580: 75 07 32 c0 5e 8b e5 5d c3 8b 0d 58 a1 1e 01 51
0076e590: 8b c8 e8 c9 5c 1c 00 8b f0 85 f6 74 e5 8d 54 24
0076e5a0: 10 52 8b ce e8 67 93 1e 00 6a 00 8b ce e8 fe af
0076e5b0: 1e 00 84 c0 74 cc 8d 44 24 10 50 8b ce e8 8e 9b
0076e5c0: 1e 00 b0 01 5e 8b e5 5d c3 cc cc cc cc cc cc cc
0076e5d0: f6 44 24 04 01 56 8b f1 c7 05 10 78 1d 01 00 00
0076e5e0: 00 00 c7 06 c0 f6 fd 00 74 09 56 e8 f0 5e d7 ff
0076e5f0: 83 c4 04 8b c6 5e c2 04 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076e560 <.text+0x36d560>:
  76e560:	55                                              	push   ebp
  76e561:	8b ec                                           	mov    ebp,esp
  76e563:	83 e4 f0                                        	and    esp,0xfffffff0
  76e566:	83 ec 2c                                        	sub    esp,0x2c
  76e569:	56                                              	push   esi
  76e56a:	e8 01 90 1c 00                                  	call   0x937570
  76e56f:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  76e572:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  76e575:	51                                              	push   ecx
  76e576:	52                                              	push   edx
  76e577:	8b c8                                           	mov    ecx,eax
  76e579:	e8 02 9a 1c 00                                  	call   0x937f80
  76e57e:	85 c0                                           	test   eax,eax
  76e580:	75 07                                           	jne    0x76e589
  76e582:	32 c0                                           	xor    al,al
  76e584:	5e                                              	pop    esi
  76e585:	8b e5                                           	mov    esp,ebp
  76e587:	5d                                              	pop    ebp
  76e588:	c3                                              	ret
  76e589:	8b 0d 58 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea158
  76e58f:	51                                              	push   ecx
  76e590:	8b c8                                           	mov    ecx,eax
  76e592:	e8 c9 5c 1c 00                                  	call   0x934260
  76e597:	8b f0                                           	mov    esi,eax
  76e599:	85 f6                                           	test   esi,esi
  76e59b:	74 e5                                           	je     0x76e582
  76e59d:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  76e5a1:	52                                              	push   edx
  76e5a2:	8b ce                                           	mov    ecx,esi
  76e5a4:	e8 67 93 1e 00                                  	call   0x957910
  76e5a9:	6a 00                                           	push   0x0
  76e5ab:	8b ce                                           	mov    ecx,esi
  76e5ad:	e8 fe af 1e 00                                  	call   0x9595b0
  76e5b2:	84 c0                                           	test   al,al
  76e5b4:	74 cc                                           	je     0x76e582
  76e5b6:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  76e5ba:	50                                              	push   eax
  76e5bb:	8b ce                                           	mov    ecx,esi
  76e5bd:	e8 8e 9b 1e 00                                  	call   0x958150
  76e5c2:	b0 01                                           	mov    al,0x1
  76e5c4:	5e                                              	pop    esi
  76e5c5:	8b e5                                           	mov    esp,ebp
  76e5c7:	5d                                              	pop    ebp
  76e5c8:	c3                                              	ret
  76e5c9:	cc                                              	int3
  76e5ca:	cc                                              	int3
  76e5cb:	cc                                              	int3
  76e5cc:	cc                                              	int3
  76e5cd:	cc                                              	int3
  76e5ce:	cc                                              	int3
  76e5cf:	cc                                              	int3
  76e5d0:	f6 44 24 04 01                                  	test   BYTE PTR [esp+0x4],0x1
  76e5d5:	56                                              	push   esi
  76e5d6:	8b f1                                           	mov    esi,ecx
  76e5d8:	c7 05 10 78 1d 01 00 00 00 00                   	mov    DWORD PTR ds:0x11d7810,0x0
  76e5e2:	c7 06 c0 f6 fd 00                               	mov    DWORD PTR [esi],0xfdf6c0
  76e5e8:	74 09                                           	je     0x76e5f3
  76e5ea:	56                                              	push   esi
  76e5eb:	e8 f0 5e d7 ff                                  	call   0x4e44e0
  76e5f0:	83 c4 04                                        	add    esp,0x4
  76e5f3:	8b c6                                           	mov    eax,esi
  76e5f5:	5e                                              	pop    esi
  76e5f6:	c2 04 00                                        	ret    0x4
  76e5f9:	cc                                              	int3
  76e5fa:	cc                                              	int3
  76e5fb:	cc                                              	int3
  76e5fc:	cc                                              	int3
  76e5fd:	cc                                              	int3
  76e5fe:	cc                                              	int3
  76e5ff:	cc                                              	int3
