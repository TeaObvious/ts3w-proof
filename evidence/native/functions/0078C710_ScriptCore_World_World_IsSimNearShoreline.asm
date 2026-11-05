# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078c710 (ScriptCore.World::World_IsSimNearShoreline)
Paired Ghidra pseudocode: 0078C710_ScriptCore_World_World_IsSimNearShoreline.c
Window: [0x0078c710, 0x0078c7e0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078c7e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078c710: 55 8b ec 83 e4 f0 83 ec 18 53 56 e8 50 ae 1a 00
0078c720: 8b 4d 0c 8b 55 08 51 52 8b c8 e8 51 b8 1a 00 85
0078c730: c0 89 44 24 0c 0f 84 8e 00 00 00 8d 50 04 8b ca
0078c740: be 01 00 00 00 f0 0f c1 31 8b 4d 10 85 c9 74 5c
0078c750: 8b 35 c4 db 1e 01 85 f6 74 52 f3 0f 10 49 08 f3
0078c760: 0f 10 01 8d 54 24 10 f3 0f 11 4c 24 18 f3 0f 10
0078c770: 49 04 52 f3 0f 11 44 24 20 f3 0f 11 4c 24 18 f3
0078c780: 0f 11 44 24 14 0f 28 44 24 14 50 56 0f 29 44 24
0078c790: 1c e8 0a 70 4e 00 83 c4 0c 8d 4c 24 0c 8a d8 e8
0078c7a0: 3c 9b fb ff 8a c3 5e 5b 8b e5 5d c3 8b ca 83 ce
0078c7b0: ff f0 0f c1 31 4e 75 11 b9 01 00 00 00 87 0a 8b
0078c7c0: 10 8b c8 8b 02 6a 01 ff d0 5e 32 c0 5b 8b e5 5d
0078c7d0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078c710 <.text+0x38b710>:
  78c710:	55                                              	push   ebp
  78c711:	8b ec                                           	mov    ebp,esp
  78c713:	83 e4 f0                                        	and    esp,0xfffffff0
  78c716:	83 ec 18                                        	sub    esp,0x18
  78c719:	53                                              	push   ebx
  78c71a:	56                                              	push   esi
  78c71b:	e8 50 ae 1a 00                                  	call   0x937570
  78c720:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  78c723:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  78c726:	51                                              	push   ecx
  78c727:	52                                              	push   edx
  78c728:	8b c8                                           	mov    ecx,eax
  78c72a:	e8 51 b8 1a 00                                  	call   0x937f80
  78c72f:	85 c0                                           	test   eax,eax
  78c731:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  78c735:	0f 84 8e 00 00 00                               	je     0x78c7c9
  78c73b:	8d 50 04                                        	lea    edx,[eax+0x4]
  78c73e:	8b ca                                           	mov    ecx,edx
  78c740:	be 01 00 00 00                                  	mov    esi,0x1
  78c745:	f0 0f c1 31                                     	lock xadd DWORD PTR [ecx],esi
  78c749:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  78c74c:	85 c9                                           	test   ecx,ecx
  78c74e:	74 5c                                           	je     0x78c7ac
  78c750:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  78c756:	85 f6                                           	test   esi,esi
  78c758:	74 52                                           	je     0x78c7ac
  78c75a:	f3 0f 10 49 08                                  	movss  xmm1,DWORD PTR [ecx+0x8]
  78c75f:	f3 0f 10 01                                     	movss  xmm0,DWORD PTR [ecx]
  78c763:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  78c767:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  78c76d:	f3 0f 10 49 04                                  	movss  xmm1,DWORD PTR [ecx+0x4]
  78c772:	52                                              	push   edx
  78c773:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  78c779:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  78c77f:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78c785:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
  78c78a:	50                                              	push   eax
  78c78b:	56                                              	push   esi
  78c78c:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
  78c791:	e8 0a 70 4e 00                                  	call   0xc737a0
  78c796:	83 c4 0c                                        	add    esp,0xc
  78c799:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  78c79d:	8a d8                                           	mov    bl,al
  78c79f:	e8 3c 9b fb ff                                  	call   0x7462e0
  78c7a4:	8a c3                                           	mov    al,bl
  78c7a6:	5e                                              	pop    esi
  78c7a7:	5b                                              	pop    ebx
  78c7a8:	8b e5                                           	mov    esp,ebp
  78c7aa:	5d                                              	pop    ebp
  78c7ab:	c3                                              	ret
  78c7ac:	8b ca                                           	mov    ecx,edx
  78c7ae:	83 ce ff                                        	or     esi,0xffffffff
  78c7b1:	f0 0f c1 31                                     	lock xadd DWORD PTR [ecx],esi
  78c7b5:	4e                                              	dec    esi
  78c7b6:	75 11                                           	jne    0x78c7c9
  78c7b8:	b9 01 00 00 00                                  	mov    ecx,0x1
  78c7bd:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  78c7bf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78c7c1:	8b c8                                           	mov    ecx,eax
  78c7c3:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78c7c5:	6a 01                                           	push   0x1
  78c7c7:	ff d0                                           	call   eax
  78c7c9:	5e                                              	pop    esi
  78c7ca:	32 c0                                           	xor    al,al
  78c7cc:	5b                                              	pop    ebx
  78c7cd:	8b e5                                           	mov    esp,ebp
  78c7cf:	5d                                              	pop    ebp
  78c7d0:	c3                                              	ret
  78c7d1:	cc                                              	int3
  78c7d2:	cc                                              	int3
  78c7d3:	cc                                              	int3
  78c7d4:	cc                                              	int3
  78c7d5:	cc                                              	int3
  78c7d6:	cc                                              	int3
  78c7d7:	cc                                              	int3
  78c7d8:	cc                                              	int3
  78c7d9:	cc                                              	int3
  78c7da:	cc                                              	int3
  78c7db:	cc                                              	int3
  78c7dc:	cc                                              	int3
  78c7dd:	cc                                              	int3
  78c7de:	cc                                              	int3
  78c7df:	cc                                              	int3
