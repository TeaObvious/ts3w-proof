# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052cc50 (Animation_SetBonePosition)
Paired Ghidra pseudocode: 1052CC50_Animation_SetBonePosition.c
Window: [0x1052cc50, 0x1052cd30) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052cd30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052cc50: 55 8b ec 83 e4 f0 83 ec 18 56 57 e8 40 d5 1f 00
1052cc60: 8b 4d 0c 8b 55 08 51 52 8b c8 e8 41 df 1f 00 8b
1052cc70: f0 85 f6 0f 84 a8 00 00 00 8d 7e 04 8b c7 b9 01
1052cc80: 00 00 00 f0 0f c1 08 8b 15 c4 0c c8 10 52 8b ce
1052cc90: e8 0b a1 1f 00 85 c0 74 6b 68 98 3a 00 00 8b c8
1052cca0: e8 4b 23 20 00 85 c0 74 5b 8d 48 08 8b 01 8b 50
1052ccb0: 04 68 68 ed 64 06 ff d2 85 c0 74 48 f3 0f 10 4d
1052ccc0: 1c d9 45 20 f3 0f 10 45 14 8b 55 10 51 f3 0f 11
1052ccd0: 4c 24 1c d9 1c 24 f3 0f 10 4d 18 8d 4c 24 14 51
1052cce0: f3 0f 11 44 24 24 f3 0f 11 4c 24 1c f3 0f 11 44
1052ccf0: 24 18 0f 28 44 24 18 52 8b c8 0f 29 44 24 1c e8
1052cd00: bc b5 e3 ff 8b c7 83 c9 ff f0 0f c1 08 49 75 11
1052cd10: ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b ce ff
1052cd20: d2 5f 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052cc50 <.text+0x52bc50>:
1052cc50:	55                                              	push   ebp
1052cc51:	8b ec                                           	mov    ebp,esp
1052cc53:	83 e4 f0                                        	and    esp,0xfffffff0
1052cc56:	83 ec 18                                        	sub    esp,0x18
1052cc59:	56                                              	push   esi
1052cc5a:	57                                              	push   edi
1052cc5b:	e8 40 d5 1f 00                                  	call   0x1072a1a0
1052cc60:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
1052cc63:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
1052cc66:	51                                              	push   ecx
1052cc67:	52                                              	push   edx
1052cc68:	8b c8                                           	mov    ecx,eax
1052cc6a:	e8 41 df 1f 00                                  	call   0x1072abb0
1052cc6f:	8b f0                                           	mov    esi,eax
1052cc71:	85 f6                                           	test   esi,esi
1052cc73:	0f 84 a8 00 00 00                               	je     0x1052cd21
1052cc79:	8d 7e 04                                        	lea    edi,[esi+0x4]
1052cc7c:	8b c7                                           	mov    eax,edi
1052cc7e:	b9 01 00 00 00                                  	mov    ecx,0x1
1052cc83:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052cc87:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052cc8d:	52                                              	push   edx
1052cc8e:	8b ce                                           	mov    ecx,esi
1052cc90:	e8 0b a1 1f 00                                  	call   0x10726da0
1052cc95:	85 c0                                           	test   eax,eax
1052cc97:	74 6b                                           	je     0x1052cd04
1052cc99:	68 98 3a 00 00                                  	push   0x3a98
1052cc9e:	8b c8                                           	mov    ecx,eax
1052cca0:	e8 4b 23 20 00                                  	call   0x1072eff0
1052cca5:	85 c0                                           	test   eax,eax
1052cca7:	74 5b                                           	je     0x1052cd04
1052cca9:	8d 48 08                                        	lea    ecx,[eax+0x8]
1052ccac:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1052ccae:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1052ccb1:	68 68 ed 64 06                                  	push   0x664ed68
1052ccb6:	ff d2                                           	call   edx
1052ccb8:	85 c0                                           	test   eax,eax
1052ccba:	74 48                                           	je     0x1052cd04
1052ccbc:	f3 0f 10 4d 1c                                  	movss  xmm1,DWORD PTR [ebp+0x1c]
1052ccc1:	d9 45 20                                        	fld    DWORD PTR [ebp+0x20]
1052ccc4:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
1052ccc9:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
1052cccc:	51                                              	push   ecx
1052cccd:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
1052ccd3:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052ccd6:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
1052ccdb:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1052ccdf:	51                                              	push   ecx
1052cce0:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
1052cce6:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
1052ccec:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1052ccf2:	0f 28 44 24 18                                  	movaps xmm0,XMMWORD PTR [esp+0x18]
1052ccf7:	52                                              	push   edx
1052ccf8:	8b c8                                           	mov    ecx,eax
1052ccfa:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
1052ccff:	e8 bc b5 e3 ff                                  	call   0x103682c0
1052cd04:	8b c7                                           	mov    eax,edi
1052cd06:	83 c9 ff                                        	or     ecx,0xffffffff
1052cd09:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052cd0d:	49                                              	dec    ecx
1052cd0e:	75 11                                           	jne    0x1052cd21
1052cd10:	ba 01 00 00 00                                  	mov    edx,0x1
1052cd15:	87 17                                           	xchg   DWORD PTR [edi],edx
1052cd17:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052cd19:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052cd1b:	6a 01                                           	push   0x1
1052cd1d:	8b ce                                           	mov    ecx,esi
1052cd1f:	ff d2                                           	call   edx
1052cd21:	5f                                              	pop    edi
1052cd22:	5e                                              	pop    esi
1052cd23:	8b e5                                           	mov    esp,ebp
1052cd25:	5d                                              	pop    ebp
1052cd26:	c3                                              	ret
1052cd27:	cc                                              	int3
1052cd28:	cc                                              	int3
1052cd29:	cc                                              	int3
1052cd2a:	cc                                              	int3
1052cd2b:	cc                                              	int3
1052cd2c:	cc                                              	int3
1052cd2d:	cc                                              	int3
1052cd2e:	cc                                              	int3
1052cd2f:	cc                                              	int3
