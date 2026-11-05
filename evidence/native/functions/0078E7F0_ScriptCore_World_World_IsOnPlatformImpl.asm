# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e7f0 (ScriptCore.World::World_IsOnPlatformImpl)
Paired Ghidra pseudocode: 0078E7F0_ScriptCore_World_World_IsOnPlatformImpl.c
Window: [0x0078e7f0, 0x0078e930) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e7f0: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 4c 85
0078e800: c9 56 75 07 32 c0 5e 8b e5 5d c3 d9 45 10 83 ec
0078e810: 08 d9 5c 24 04 d9 45 08 d9 1c 24 e8 b0 9f 4d 00
0078e820: 8b f0 85 f6 74 de f3 0f 10 4d 10 f3 0f 10 45 08
0078e830: f3 0f 11 4c 24 18 f3 0f 10 4d 0c 8d 44 24 20 50
0078e840: 8d 4c 24 34 f3 0f 11 44 24 20 f3 0f 11 4c 24 18
0078e850: f3 0f 11 44 24 14 0f 28 44 24 14 51 8b ce 0f 29
0078e860: 44 24 38 e8 38 89 32 00 0f 28 44 24 20 0f 29 44
0078e870: 24 10 f3 0f 10 4c 24 10 0f 29 44 24 40 0f 57 c0
0078e880: 0f 2f c8 0f 82 7b ff ff ff f3 0f 2a 96 74 01 00
0078e890: 00 0f 2f d1 0f 82 6a ff ff ff f3 0f 10 4c 24 48
0078e8a0: 0f 2f c8 0f 82 5b ff ff ff f3 0f 2a 86 78 01 00
0078e8b0: 00 0f 2f c1 0f 82 4a ff ff ff f3 0f 10 05 18 b2
0078e8c0: fa 00 6a 00 8d 54 24 24 52 8b ce f3 0f 11 44 24
0078e8d0: 0c f3 0f 11 44 24 10 c7 44 24 14 00 00 00 00 e8
0078e8e0: cc 78 32 00 0f 28 44 24 20 0f 29 44 24 40 f3 0f
0078e8f0: 10 4c 24 40 89 44 24 0c 8d 44 24 04 0f 29 44 24
0078e900: 40 f3 0f 10 44 24 48 50 56 f3 0f 11 4c 24 0c f3
0078e910: 0f 11 44 24 10 e8 86 65 37 00 83 c4 08 5e 8b e5
0078e920: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078e7f0 <.text+0x38d7f0>:
  78e7f0:	55                                              	push   ebp
  78e7f1:	8b ec                                           	mov    ebp,esp
  78e7f3:	83 e4 f0                                        	and    esp,0xfffffff0
  78e7f6:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78e7fc:	83 ec 4c                                        	sub    esp,0x4c
  78e7ff:	85 c9                                           	test   ecx,ecx
  78e801:	56                                              	push   esi
  78e802:	75 07                                           	jne    0x78e80b
  78e804:	32 c0                                           	xor    al,al
  78e806:	5e                                              	pop    esi
  78e807:	8b e5                                           	mov    esp,ebp
  78e809:	5d                                              	pop    ebp
  78e80a:	c3                                              	ret
  78e80b:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
  78e80e:	83 ec 08                                        	sub    esp,0x8
  78e811:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78e815:	d9 45 08                                        	fld    DWORD PTR [ebp+0x8]
  78e818:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78e81b:	e8 b0 9f 4d 00                                  	call   0xc687d0
  78e820:	8b f0                                           	mov    esi,eax
  78e822:	85 f6                                           	test   esi,esi
  78e824:	74 de                                           	je     0x78e804
  78e826:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  78e82b:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  78e830:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  78e836:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  78e83b:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  78e83f:	50                                              	push   eax
  78e840:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  78e844:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  78e84a:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  78e850:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78e856:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
  78e85b:	51                                              	push   ecx
  78e85c:	8b ce                                           	mov    ecx,esi
  78e85e:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
  78e863:	e8 38 89 32 00                                  	call   0xab71a0
  78e868:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  78e86d:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  78e872:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
  78e878:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  78e87d:	0f 57 c0                                        	xorps  xmm0,xmm0
  78e880:	0f 2f c8                                        	comiss xmm1,xmm0
  78e883:	0f 82 7b ff ff ff                               	jb     0x78e804
  78e889:	f3 0f 2a 96 74 01 00 00                         	cvtsi2ss xmm2,DWORD PTR [esi+0x174]
  78e891:	0f 2f d1                                        	comiss xmm2,xmm1
  78e894:	0f 82 6a ff ff ff                               	jb     0x78e804
  78e89a:	f3 0f 10 4c 24 48                               	movss  xmm1,DWORD PTR [esp+0x48]
  78e8a0:	0f 2f c8                                        	comiss xmm1,xmm0
  78e8a3:	0f 82 5b ff ff ff                               	jb     0x78e804
  78e8a9:	f3 0f 2a 86 78 01 00 00                         	cvtsi2ss xmm0,DWORD PTR [esi+0x178]
  78e8b1:	0f 2f c1                                        	comiss xmm0,xmm1
  78e8b4:	0f 82 4a ff ff ff                               	jb     0x78e804
  78e8ba:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  78e8c2:	6a 00                                           	push   0x0
  78e8c4:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  78e8c8:	52                                              	push   edx
  78e8c9:	8b ce                                           	mov    ecx,esi
  78e8cb:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  78e8d1:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  78e8d7:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  78e8df:	e8 cc 78 32 00                                  	call   0xab61b0
  78e8e4:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  78e8e9:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  78e8ee:	f3 0f 10 4c 24 40                               	movss  xmm1,DWORD PTR [esp+0x40]
  78e8f4:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  78e8f8:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  78e8fc:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  78e901:	f3 0f 10 44 24 48                               	movss  xmm0,DWORD PTR [esp+0x48]
  78e907:	50                                              	push   eax
  78e908:	56                                              	push   esi
  78e909:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  78e90f:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  78e915:	e8 86 65 37 00                                  	call   0xb04ea0
  78e91a:	83 c4 08                                        	add    esp,0x8
  78e91d:	5e                                              	pop    esi
  78e91e:	8b e5                                           	mov    esp,ebp
  78e920:	5d                                              	pop    ebp
  78e921:	c3                                              	ret
  78e922:	cc                                              	int3
  78e923:	cc                                              	int3
  78e924:	cc                                              	int3
  78e925:	cc                                              	int3
  78e926:	cc                                              	int3
  78e927:	cc                                              	int3
  78e928:	cc                                              	int3
  78e929:	cc                                              	int3
  78e92a:	cc                                              	int3
  78e92b:	cc                                              	int3
  78e92c:	cc                                              	int3
  78e92d:	cc                                              	int3
  78e92e:	cc                                              	int3
  78e92f:	cc                                              	int3
