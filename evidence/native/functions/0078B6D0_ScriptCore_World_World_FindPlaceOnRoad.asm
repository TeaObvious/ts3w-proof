# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078b6d0 (ScriptCore.World::World_FindPlaceOnRoad)
Paired Ghidra pseudocode: 0078B6D0_ScriptCore_World_World_FindPlaceOnRoad.c
Window: [0x0078b6d0, 0x0078b840) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078b840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078b6d0: 55 8b ec 83 e4 f0 83 ec 4c 56 e8 91 be 1a 00 8b
0078b6e0: 4d 0c 8b 55 08 51 52 8b c8 e8 92 c8 1a 00 8b f0
0078b6f0: 85 f6 89 74 24 0c 74 0c 8d 46 04 b9 01 00 00 00
0078b700: f0 0f c1 08 8b 45 10 85 c0 0f 84 f9 00 00 00 8b
0078b710: 0d c4 db 1e 01 85 c9 0f 84 eb 00 00 00 f3 0f 10
0078b720: 48 08 f3 0f 10 00 f3 0f 11 4c 24 18 f3 0f 10 48
0078b730: 04 8d 54 24 40 52 8b 55 14 8d 44 24 24 50 52 8d
0078b740: 44 24 1c 50 f3 0f 11 44 24 2c f3 0f 11 4c 24 24
0078b750: f3 0f 11 44 24 20 0f 28 44 24 20 56 51 0f 29 44
0078b760: 24 28 e8 d9 ec 4e 00 83 c4 18 84 c0 0f 84 96 00
0078b770: 00 00 8b 45 18 85 c0 74 34 0f 28 44 24 20 0f 29
0078b780: 44 24 30 f3 0f 10 4c 24 30 0f 29 44 24 30 f3 0f
0078b790: 11 08 f3 0f 10 4c 24 34 0f 29 44 24 30 f3 0f 10
0078b7a0: 44 24 38 f3 0f 11 48 04 f3 0f 11 40 08 8b 45 1c
0078b7b0: 85 c0 74 44 0f 28 44 24 40 0f 29 44 24 30 f3 0f
0078b7c0: 10 4c 24 30 0f 29 44 24 30 f3 0f 11 08 f3 0f 10
0078b7d0: 4c 24 34 0f 29 44 24 30 f3 0f 11 48 04 f3 0f 10
0078b7e0: 4c 24 38 0f 29 44 24 30 f3 0f 10 44 24 3c f3 0f
0078b7f0: 11 48 08 f3 0f 11 40 0c 8d 4c 24 0c e8 df aa fb
0078b800: ff b0 01 5e 8b e5 5d c3 85 f6 74 20 8d 46 04 8b
0078b810: c8 83 ca ff f0 0f c1 11 4a 75 11 b9 01 00 00 00
0078b820: 87 08 8b 16 8b 02 6a 01 8b ce ff d0 32 c0 5e 8b
0078b830: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078b6d0 <.text+0x38a6d0>:
  78b6d0:	55                                              	push   ebp
  78b6d1:	8b ec                                           	mov    ebp,esp
  78b6d3:	83 e4 f0                                        	and    esp,0xfffffff0
  78b6d6:	83 ec 4c                                        	sub    esp,0x4c
  78b6d9:	56                                              	push   esi
  78b6da:	e8 91 be 1a 00                                  	call   0x937570
  78b6df:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  78b6e2:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  78b6e5:	51                                              	push   ecx
  78b6e6:	52                                              	push   edx
  78b6e7:	8b c8                                           	mov    ecx,eax
  78b6e9:	e8 92 c8 1a 00                                  	call   0x937f80
  78b6ee:	8b f0                                           	mov    esi,eax
  78b6f0:	85 f6                                           	test   esi,esi
  78b6f2:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  78b6f6:	74 0c                                           	je     0x78b704
  78b6f8:	8d 46 04                                        	lea    eax,[esi+0x4]
  78b6fb:	b9 01 00 00 00                                  	mov    ecx,0x1
  78b700:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78b704:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  78b707:	85 c0                                           	test   eax,eax
  78b709:	0f 84 f9 00 00 00                               	je     0x78b808
  78b70f:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78b715:	85 c9                                           	test   ecx,ecx
  78b717:	0f 84 eb 00 00 00                               	je     0x78b808
  78b71d:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
  78b722:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  78b726:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  78b72c:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
  78b731:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  78b735:	52                                              	push   edx
  78b736:	8b 55 14                                        	mov    edx,DWORD PTR [ebp+0x14]
  78b739:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  78b73d:	50                                              	push   eax
  78b73e:	52                                              	push   edx
  78b73f:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  78b743:	50                                              	push   eax
  78b744:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  78b74a:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
  78b750:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  78b756:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  78b75b:	56                                              	push   esi
  78b75c:	51                                              	push   ecx
  78b75d:	0f 29 44 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm0
  78b762:	e8 d9 ec 4e 00                                  	call   0xc7a440
  78b767:	83 c4 18                                        	add    esp,0x18
  78b76a:	84 c0                                           	test   al,al
  78b76c:	0f 84 96 00 00 00                               	je     0x78b808
  78b772:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
  78b775:	85 c0                                           	test   eax,eax
  78b777:	74 34                                           	je     0x78b7ad
  78b779:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  78b77e:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  78b783:	f3 0f 10 4c 24 30                               	movss  xmm1,DWORD PTR [esp+0x30]
  78b789:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  78b78e:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  78b792:	f3 0f 10 4c 24 34                               	movss  xmm1,DWORD PTR [esp+0x34]
  78b798:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  78b79d:	f3 0f 10 44 24 38                               	movss  xmm0,DWORD PTR [esp+0x38]
  78b7a3:	f3 0f 11 48 04                                  	movss  DWORD PTR [eax+0x4],xmm1
  78b7a8:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
  78b7ad:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
  78b7b0:	85 c0                                           	test   eax,eax
  78b7b2:	74 44                                           	je     0x78b7f8
  78b7b4:	0f 28 44 24 40                                  	movaps xmm0,XMMWORD PTR [esp+0x40]
  78b7b9:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  78b7be:	f3 0f 10 4c 24 30                               	movss  xmm1,DWORD PTR [esp+0x30]
  78b7c4:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  78b7c9:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  78b7cd:	f3 0f 10 4c 24 34                               	movss  xmm1,DWORD PTR [esp+0x34]
  78b7d3:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  78b7d8:	f3 0f 11 48 04                                  	movss  DWORD PTR [eax+0x4],xmm1
  78b7dd:	f3 0f 10 4c 24 38                               	movss  xmm1,DWORD PTR [esp+0x38]
  78b7e3:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  78b7e8:	f3 0f 10 44 24 3c                               	movss  xmm0,DWORD PTR [esp+0x3c]
  78b7ee:	f3 0f 11 48 08                                  	movss  DWORD PTR [eax+0x8],xmm1
  78b7f3:	f3 0f 11 40 0c                                  	movss  DWORD PTR [eax+0xc],xmm0
  78b7f8:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  78b7fc:	e8 df aa fb ff                                  	call   0x7462e0
  78b801:	b0 01                                           	mov    al,0x1
  78b803:	5e                                              	pop    esi
  78b804:	8b e5                                           	mov    esp,ebp
  78b806:	5d                                              	pop    ebp
  78b807:	c3                                              	ret
  78b808:	85 f6                                           	test   esi,esi
  78b80a:	74 20                                           	je     0x78b82c
  78b80c:	8d 46 04                                        	lea    eax,[esi+0x4]
  78b80f:	8b c8                                           	mov    ecx,eax
  78b811:	83 ca ff                                        	or     edx,0xffffffff
  78b814:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  78b818:	4a                                              	dec    edx
  78b819:	75 11                                           	jne    0x78b82c
  78b81b:	b9 01 00 00 00                                  	mov    ecx,0x1
  78b820:	87 08                                           	xchg   DWORD PTR [eax],ecx
  78b822:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78b824:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78b826:	6a 01                                           	push   0x1
  78b828:	8b ce                                           	mov    ecx,esi
  78b82a:	ff d0                                           	call   eax
  78b82c:	32 c0                                           	xor    al,al
  78b82e:	5e                                              	pop    esi
  78b82f:	8b e5                                           	mov    esp,ebp
  78b831:	5d                                              	pop    ebp
  78b832:	c3                                              	ret
  78b833:	cc                                              	int3
  78b834:	cc                                              	int3
  78b835:	cc                                              	int3
  78b836:	cc                                              	int3
  78b837:	cc                                              	int3
  78b838:	cc                                              	int3
  78b839:	cc                                              	int3
  78b83a:	cc                                              	int3
  78b83b:	cc                                              	int3
  78b83c:	cc                                              	int3
  78b83d:	cc                                              	int3
  78b83e:	cc                                              	int3
  78b83f:	cc                                              	int3
