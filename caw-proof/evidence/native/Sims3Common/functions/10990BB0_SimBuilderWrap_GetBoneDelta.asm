# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990bb0 (SimBuilderWrap_GetBoneDelta)
Paired Ghidra pseudocode: 10990BB0_SimBuilderWrap_GetBoneDelta.c
Window: [0x10990bb0, 0x10990ca0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990ca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990bb0: 55 8b ec 83 e4 f0 83 ec 38 8b 4d 0c 56 57 8d 44
10990bc0: 24 0c 50 51 8b 4d 08 c7 44 24 14 00 00 00 00 e8
10990bd0: 5c cb a4 ff 8b f0 85 f6 0f 84 b3 00 00 00 8b 55
10990be0: 10 56 52 e8 38 d0 bc ff 8b 4d 18 8d 46 20 50 51
10990bf0: e8 2b d0 bc ff 0f 28 46 10 8b 7d 14 83 c4 04 0f
10990c00: 29 44 24 1c d9 44 24 24 d9 5c 24 08 0f 29 44 24
10990c10: 2c d9 44 24 30 0f 29 44 24 3c d9 5c 24 04 8b cf
10990c20: d9 44 24 3c d9 1c 24 e8 14 ce bc ff 0f 28 46 10
10990c30: 8b 44 24 0c 85 c0 0f 29 44 24 30 f3 0f 10 44 24
10990c40: 3c f3 0f 11 47 0c 75 05 b8 3a 7b ae 10 6a 00 6a
10990c50: ff 50 8d 54 24 1c 52 e8 54 61 f9 ff 8b 00 83 c4
10990c60: 10 50 ff 15 c4 b6 aa 10 8b 4c 24 18 8b f0 8b 44
10990c70: 24 10 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09
10990c80: 50 e8 0a 82 f8 ff 83 c4 04 8b c6 5f 5e 8b e5 5d
10990c90: c3 5f 33 c0 5e 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990bb0 <.text+0x98fbb0>:
10990bb0:	55                                              	push   ebp
10990bb1:	8b ec                                           	mov    ebp,esp
10990bb3:	83 e4 f0                                        	and    esp,0xfffffff0
10990bb6:	83 ec 38                                        	sub    esp,0x38
10990bb9:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10990bbc:	56                                              	push   esi
10990bbd:	57                                              	push   edi
10990bbe:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10990bc2:	50                                              	push   eax
10990bc3:	51                                              	push   ecx
10990bc4:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10990bc7:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
10990bcf:	e8 5c cb a4 ff                                  	call   0x103dd730
10990bd4:	8b f0                                           	mov    esi,eax
10990bd6:	85 f6                                           	test   esi,esi
10990bd8:	0f 84 b3 00 00 00                               	je     0x10990c91
10990bde:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
10990be1:	56                                              	push   esi
10990be2:	52                                              	push   edx
10990be3:	e8 38 d0 bc ff                                  	call   0x1055dc20
10990be8:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
10990beb:	8d 46 20                                        	lea    eax,[esi+0x20]
10990bee:	50                                              	push   eax
10990bef:	51                                              	push   ecx
10990bf0:	e8 2b d0 bc ff                                  	call   0x1055dc20
10990bf5:	0f 28 46 10                                     	movaps xmm0,XMMWORD PTR [esi+0x10]
10990bf9:	8b 7d 14                                        	mov    edi,DWORD PTR [ebp+0x14]
10990bfc:	83 c4 04                                        	add    esp,0x4
10990bff:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
10990c04:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
10990c08:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
10990c0c:	0f 29 44 24 2c                                  	movaps XMMWORD PTR [esp+0x2c],xmm0
10990c11:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
10990c15:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
10990c1a:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10990c1e:	8b cf                                           	mov    ecx,edi
10990c20:	d9 44 24 3c                                     	fld    DWORD PTR [esp+0x3c]
10990c24:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10990c27:	e8 14 ce bc ff                                  	call   0x1055da40
10990c2c:	0f 28 46 10                                     	movaps xmm0,XMMWORD PTR [esi+0x10]
10990c30:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10990c34:	85 c0                                           	test   eax,eax
10990c36:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
10990c3b:	f3 0f 10 44 24 3c                               	movss  xmm0,DWORD PTR [esp+0x3c]
10990c41:	f3 0f 11 47 0c                                  	movss  DWORD PTR [edi+0xc],xmm0
10990c46:	75 05                                           	jne    0x10990c4d
10990c48:	b8 3a 7b ae 10                                  	mov    eax,0x10ae7b3a
10990c4d:	6a 00                                           	push   0x0
10990c4f:	6a ff                                           	push   0xffffffff
10990c51:	50                                              	push   eax
10990c52:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
10990c56:	52                                              	push   edx
10990c57:	e8 54 61 f9 ff                                  	call   0x10926db0
10990c5c:	8b 00                                           	mov    eax,DWORD PTR [eax]
10990c5e:	83 c4 10                                        	add    esp,0x10
10990c61:	50                                              	push   eax
10990c62:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10990c68:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10990c6c:	8b f0                                           	mov    esi,eax
10990c6e:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10990c72:	2b c8                                           	sub    ecx,eax
10990c74:	83 e1 fe                                        	and    ecx,0xfffffffe
10990c77:	83 f9 02                                        	cmp    ecx,0x2
10990c7a:	7e 0d                                           	jle    0x10990c89
10990c7c:	85 c0                                           	test   eax,eax
10990c7e:	74 09                                           	je     0x10990c89
10990c80:	50                                              	push   eax
10990c81:	e8 0a 82 f8 ff                                  	call   0x10918e90
10990c86:	83 c4 04                                        	add    esp,0x4
10990c89:	8b c6                                           	mov    eax,esi
10990c8b:	5f                                              	pop    edi
10990c8c:	5e                                              	pop    esi
10990c8d:	8b e5                                           	mov    esp,ebp
10990c8f:	5d                                              	pop    ebp
10990c90:	c3                                              	ret
10990c91:	5f                                              	pop    edi
10990c92:	33 c0                                           	xor    eax,eax
10990c94:	5e                                              	pop    esi
10990c95:	8b e5                                           	mov    esp,ebp
10990c97:	5d                                              	pop    ebp
10990c98:	c3                                              	ret
10990c99:	cc                                              	int3
10990c9a:	cc                                              	int3
10990c9b:	cc                                              	int3
10990c9c:	cc                                              	int3
10990c9d:	cc                                              	int3
10990c9e:	cc                                              	int3
10990c9f:	cc                                              	int3
