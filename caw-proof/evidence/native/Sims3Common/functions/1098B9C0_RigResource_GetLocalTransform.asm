# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098b9c0 (RigResource_GetLocalTransform)
Paired Ghidra pseudocode: 1098B9C0_RigResource_GetLocalTransform.c
Window: [0x1098b9c0, 0x1098bad0) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098bad0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098b9c0: 55 8b ec 83 e4 f0 8b 45 0c 81 ec 98 00 00 00 85
1098b9d0: c0 56 57 74 33 8d 70 28 8b ce e8 b1 5c 9e ff 8b
1098b9e0: 4d 10 3b c1 76 22 8d 44 24 20 50 51 8b ce e8 8d
1098b9f0: 5c 9e ff 8b c8 83 c1 10 e8 83 7e 9e ff 50 8d 4c
1098ba00: 24 64 51 e9 9d 00 00 00 0f 57 c0 f3 0f 10 0d d4
1098ba10: b0 ac 10 f3 0f 11 44 24 1c f3 0f 11 44 24 18 f3
1098ba20: 0f 11 44 24 14 f3 0f 11 4c 24 10 0f 28 54 24 10
1098ba30: f3 0f 11 44 24 1c f3 0f 11 44 24 18 f3 0f 11 4c
1098ba40: 24 14 f3 0f 11 44 24 10 0f 29 54 24 20 0f 28 54
1098ba50: 24 10 f3 0f 11 44 24 1c f3 0f 11 4c 24 18 f3 0f
1098ba60: 11 44 24 14 f3 0f 11 44 24 10 0f 29 54 24 30 0f
1098ba70: 28 54 24 10 8d 54 24 20 f3 0f 11 4c 24 1c f3 0f
1098ba80: 11 44 24 18 f3 0f 11 44 24 14 f3 0f 11 44 24 10
1098ba90: 0f 28 44 24 10 52 8d 44 24 64 0f 29 54 24 44 0f
1098baa0: 29 44 24 54 50 e8 76 45 ff ff 8b f0 8b 45 08 b9
1098bab0: 10 00 00 00 8b f8 83 c4 08 f3 a5 5f 5e 8b e5 5d
1098bac0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098b9c0 <.text+0x98a9c0>:
1098b9c0:	55                                              	push   ebp
1098b9c1:	8b ec                                           	mov    ebp,esp
1098b9c3:	83 e4 f0                                        	and    esp,0xfffffff0
1098b9c6:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1098b9c9:	81 ec 98 00 00 00                               	sub    esp,0x98
1098b9cf:	85 c0                                           	test   eax,eax
1098b9d1:	56                                              	push   esi
1098b9d2:	57                                              	push   edi
1098b9d3:	74 33                                           	je     0x1098ba08
1098b9d5:	8d 70 28                                        	lea    esi,[eax+0x28]
1098b9d8:	8b ce                                           	mov    ecx,esi
1098b9da:	e8 b1 5c 9e ff                                  	call   0x10371690
1098b9df:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
1098b9e2:	3b c1                                           	cmp    eax,ecx
1098b9e4:	76 22                                           	jbe    0x1098ba08
1098b9e6:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1098b9ea:	50                                              	push   eax
1098b9eb:	51                                              	push   ecx
1098b9ec:	8b ce                                           	mov    ecx,esi
1098b9ee:	e8 8d 5c 9e ff                                  	call   0x10371680
1098b9f3:	8b c8                                           	mov    ecx,eax
1098b9f5:	83 c1 10                                        	add    ecx,0x10
1098b9f8:	e8 83 7e 9e ff                                  	call   0x10373880
1098b9fd:	50                                              	push   eax
1098b9fe:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
1098ba02:	51                                              	push   ecx
1098ba03:	e9 9d 00 00 00                                  	jmp    0x1098baa5
1098ba08:	0f 57 c0                                        	xorps  xmm0,xmm0
1098ba0b:	f3 0f 10 0d d4 b0 ac 10                         	movss  xmm1,DWORD PTR ds:0x10acb0d4
1098ba13:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1098ba19:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1098ba1f:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1098ba25:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
1098ba2b:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
1098ba30:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1098ba36:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1098ba3c:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
1098ba42:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1098ba48:	0f 29 54 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm2
1098ba4d:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
1098ba52:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1098ba58:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
1098ba5e:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1098ba64:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1098ba6a:	0f 29 54 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm2
1098ba6f:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
1098ba74:	8d 54 24 20                                     	lea    edx,[esp+0x20]
1098ba78:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
1098ba7e:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1098ba84:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1098ba8a:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1098ba90:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1098ba95:	52                                              	push   edx
1098ba96:	8d 44 24 64                                     	lea    eax,[esp+0x64]
1098ba9a:	0f 29 54 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm2
1098ba9f:	0f 29 44 24 54                                  	movaps XMMWORD PTR [esp+0x54],xmm0
1098baa4:	50                                              	push   eax
1098baa5:	e8 76 45 ff ff                                  	call   0x10980020
1098baaa:	8b f0                                           	mov    esi,eax
1098baac:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1098baaf:	b9 10 00 00 00                                  	mov    ecx,0x10
1098bab4:	8b f8                                           	mov    edi,eax
1098bab6:	83 c4 08                                        	add    esp,0x8
1098bab9:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
1098babb:	5f                                              	pop    edi
1098babc:	5e                                              	pop    esi
1098babd:	8b e5                                           	mov    esp,ebp
1098babf:	5d                                              	pop    ebp
1098bac0:	c3                                              	ret
1098bac1:	cc                                              	int3
1098bac2:	cc                                              	int3
1098bac3:	cc                                              	int3
1098bac4:	cc                                              	int3
1098bac5:	cc                                              	int3
1098bac6:	cc                                              	int3
1098bac7:	cc                                              	int3
1098bac8:	cc                                              	int3
1098bac9:	cc                                              	int3
1098baca:	cc                                              	int3
1098bacb:	cc                                              	int3
1098bacc:	cc                                              	int3
1098bacd:	cc                                              	int3
1098bace:	cc                                              	int3
1098bacf:	cc                                              	int3
