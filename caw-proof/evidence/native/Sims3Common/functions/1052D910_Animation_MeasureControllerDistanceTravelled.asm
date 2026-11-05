# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052d910 (Animation_MeasureControllerDistanceTravelled)
Paired Ghidra pseudocode: 1052D910_Animation_MeasureControllerDistanceTravelled.c
Window: [0x1052d910, 0x1052dac0) (432 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052dac0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052d910: 55 8b ec 83 e4 f0 83 ec 58 0f 57 c0 56 57 f3 0f
1052d920: 11 44 24 14 f3 0f 11 44 24 18 f3 0f 11 44 24 1c
1052d930: e8 6b c8 1f 00 8b 4d 10 8b 55 0c 51 52 8b c8 e8
1052d940: 6c d2 1f 00 8b f8 85 ff 0f 84 1b 01 00 00 8d 47
1052d950: 04 b9 01 00 00 00 f0 0f c1 08 8b 15 c4 0c c8 10
1052d960: 52 8b cf e8 38 94 1f 00 8b f0 85 f6 0f 84 f7 00
1052d970: 00 00 6a 00 6a 00 6a 00 6a 00 68 34 9a b1 10 68
1052d980: 00 06 00 00 e8 27 b5 3e 00 83 c4 18 85 c0 0f 84
1052d990: 18 01 00 00 d9 ee 51 d9 1c 24 83 c6 08 56 8b c8
1052d9a0: e8 4b 76 e3 ff 8b f0 85 f6 74 04 83 46 04 01 8b
1052d9b0: 4d 20 8b 45 1c 8b 55 14 89 4c 24 24 8d 4c 24 20
1052d9c0: 89 44 24 20 8b 45 18 51 8b ce 89 54 24 2c 89 44
1052d9d0: 24 30 e8 59 8c e3 ff 0f 57 c0 f3 0f 11 44 24 3c
1052d9e0: f3 0f 11 44 24 38 f3 0f 11 44 24 34 f3 0f 11 44
1052d9f0: 24 30 0f 28 4c 24 30 8d 54 24 50 52 0f 29 4c 24
1052da00: 44 f3 0f 10 0d d4 b0 ac 10 8d 44 24 44 f3 0f 11
1052da10: 4c 24 40 f3 0f 11 44 24 3c f3 0f 11 44 24 38 f3
1052da20: 0f 11 44 24 34 0f 28 44 24 34 50 56 0f 29 44 24
1052da30: 5c e8 2a cb 10 00 dd d8 83 c4 0c 8d 4c 24 40 51
1052da40: 8d 4c 24 18 e8 87 01 03 00 85 f6 74 1c 8b 46 04
1052da50: 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b
1052da60: 16 8b 02 6a 01 8b ce ff d0 85 ff 8b 75 08 8b 4c
1052da70: 24 14 8b 54 24 18 8b 44 24 1c 89 0e 89 56 04 89
1052da80: 46 08 74 20 8d 47 04 8b c8 83 ca ff f0 0f c1 11
1052da90: 4a 75 11 b9 01 00 00 00 87 08 8b 17 8b 02 6a 01
1052daa0: 8b cf ff d0 5f 8b c6 5e 8b e5 5d c3 33 f6 e9 fc
1052dab0: fe ff ff cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052d910 <.text+0x52c910>:
1052d910:	55                                              	push   ebp
1052d911:	8b ec                                           	mov    ebp,esp
1052d913:	83 e4 f0                                        	and    esp,0xfffffff0
1052d916:	83 ec 58                                        	sub    esp,0x58
1052d919:	0f 57 c0                                        	xorps  xmm0,xmm0
1052d91c:	56                                              	push   esi
1052d91d:	57                                              	push   edi
1052d91e:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1052d924:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1052d92a:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1052d930:	e8 6b c8 1f 00                                  	call   0x1072a1a0
1052d935:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
1052d938:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
1052d93b:	51                                              	push   ecx
1052d93c:	52                                              	push   edx
1052d93d:	8b c8                                           	mov    ecx,eax
1052d93f:	e8 6c d2 1f 00                                  	call   0x1072abb0
1052d944:	8b f8                                           	mov    edi,eax
1052d946:	85 ff                                           	test   edi,edi
1052d948:	0f 84 1b 01 00 00                               	je     0x1052da69
1052d94e:	8d 47 04                                        	lea    eax,[edi+0x4]
1052d951:	b9 01 00 00 00                                  	mov    ecx,0x1
1052d956:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052d95a:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052d960:	52                                              	push   edx
1052d961:	8b cf                                           	mov    ecx,edi
1052d963:	e8 38 94 1f 00                                  	call   0x10726da0
1052d968:	8b f0                                           	mov    esi,eax
1052d96a:	85 f6                                           	test   esi,esi
1052d96c:	0f 84 f7 00 00 00                               	je     0x1052da69
1052d972:	6a 00                                           	push   0x0
1052d974:	6a 00                                           	push   0x0
1052d976:	6a 00                                           	push   0x0
1052d978:	6a 00                                           	push   0x0
1052d97a:	68 34 9a b1 10                                  	push   0x10b19a34
1052d97f:	68 00 06 00 00                                  	push   0x600
1052d984:	e8 27 b5 3e 00                                  	call   0x10918eb0
1052d989:	83 c4 18                                        	add    esp,0x18
1052d98c:	85 c0                                           	test   eax,eax
1052d98e:	0f 84 18 01 00 00                               	je     0x1052daac
1052d994:	d9 ee                                           	fldz
1052d996:	51                                              	push   ecx
1052d997:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052d99a:	83 c6 08                                        	add    esi,0x8
1052d99d:	56                                              	push   esi
1052d99e:	8b c8                                           	mov    ecx,eax
1052d9a0:	e8 4b 76 e3 ff                                  	call   0x10364ff0
1052d9a5:	8b f0                                           	mov    esi,eax
1052d9a7:	85 f6                                           	test   esi,esi
1052d9a9:	74 04                                           	je     0x1052d9af
1052d9ab:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
1052d9af:	8b 4d 20                                        	mov    ecx,DWORD PTR [ebp+0x20]
1052d9b2:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
1052d9b5:	8b 55 14                                        	mov    edx,DWORD PTR [ebp+0x14]
1052d9b8:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
1052d9bc:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1052d9c0:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
1052d9c4:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
1052d9c7:	51                                              	push   ecx
1052d9c8:	8b ce                                           	mov    ecx,esi
1052d9ca:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
1052d9ce:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
1052d9d2:	e8 59 8c e3 ff                                  	call   0x10366630
1052d9d7:	0f 57 c0                                        	xorps  xmm0,xmm0
1052d9da:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
1052d9e0:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
1052d9e6:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
1052d9ec:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
1052d9f2:	0f 28 4c 24 30                                  	movaps xmm1,XMMWORD PTR [esp+0x30]
1052d9f7:	8d 54 24 50                                     	lea    edx,[esp+0x50]
1052d9fb:	52                                              	push   edx
1052d9fc:	0f 29 4c 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm1
1052da01:	f3 0f 10 0d d4 b0 ac 10                         	movss  xmm1,DWORD PTR ds:0x10acb0d4
1052da09:	8d 44 24 44                                     	lea    eax,[esp+0x44]
1052da0d:	f3 0f 11 4c 24 40                               	movss  DWORD PTR [esp+0x40],xmm1
1052da13:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
1052da19:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
1052da1f:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
1052da25:	0f 28 44 24 34                                  	movaps xmm0,XMMWORD PTR [esp+0x34]
1052da2a:	50                                              	push   eax
1052da2b:	56                                              	push   esi
1052da2c:	0f 29 44 24 5c                                  	movaps XMMWORD PTR [esp+0x5c],xmm0
1052da31:	e8 2a cb 10 00                                  	call   0x1063a560
1052da36:	dd d8                                           	fstp   st(0)
1052da38:	83 c4 0c                                        	add    esp,0xc
1052da3b:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
1052da3f:	51                                              	push   ecx
1052da40:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1052da44:	e8 87 01 03 00                                  	call   0x1055dbd0
1052da49:	85 f6                                           	test   esi,esi
1052da4b:	74 1c                                           	je     0x1052da69
1052da4d:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1052da50:	83 c0 ff                                        	add    eax,0xffffffff
1052da53:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1052da56:	75 11                                           	jne    0x1052da69
1052da58:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
1052da5f:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052da61:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052da63:	6a 01                                           	push   0x1
1052da65:	8b ce                                           	mov    ecx,esi
1052da67:	ff d0                                           	call   eax
1052da69:	85 ff                                           	test   edi,edi
1052da6b:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
1052da6e:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1052da72:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1052da76:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1052da7a:	89 0e                                           	mov    DWORD PTR [esi],ecx
1052da7c:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
1052da7f:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
1052da82:	74 20                                           	je     0x1052daa4
1052da84:	8d 47 04                                        	lea    eax,[edi+0x4]
1052da87:	8b c8                                           	mov    ecx,eax
1052da89:	83 ca ff                                        	or     edx,0xffffffff
1052da8c:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
1052da90:	4a                                              	dec    edx
1052da91:	75 11                                           	jne    0x1052daa4
1052da93:	b9 01 00 00 00                                  	mov    ecx,0x1
1052da98:	87 08                                           	xchg   DWORD PTR [eax],ecx
1052da9a:	8b 17                                           	mov    edx,DWORD PTR [edi]
1052da9c:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052da9e:	6a 01                                           	push   0x1
1052daa0:	8b cf                                           	mov    ecx,edi
1052daa2:	ff d0                                           	call   eax
1052daa4:	5f                                              	pop    edi
1052daa5:	8b c6                                           	mov    eax,esi
1052daa7:	5e                                              	pop    esi
1052daa8:	8b e5                                           	mov    esp,ebp
1052daaa:	5d                                              	pop    ebp
1052daab:	c3                                              	ret
1052daac:	33 f6                                           	xor    esi,esi
1052daae:	e9 fc fe ff ff                                  	jmp    0x1052d9af
1052dab3:	cc                                              	int3
1052dab4:	cc                                              	int3
1052dab5:	cc                                              	int3
1052dab6:	cc                                              	int3
1052dab7:	cc                                              	int3
1052dab8:	cc                                              	int3
1052dab9:	cc                                              	int3
1052daba:	cc                                              	int3
1052dabb:	cc                                              	int3
1052dabc:	cc                                              	int3
1052dabd:	cc                                              	int3
1052dabe:	cc                                              	int3
1052dabf:	cc                                              	int3
