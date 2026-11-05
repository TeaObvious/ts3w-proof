# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098dcb0 (SacsWrap_RandomNode_GetSliceTargets)
Paired Ghidra pseudocode: 1098DCB0_SacsWrap_RandomNode_GetSliceTargets.c
Window: [0x1098dcb0, 0x1098ddd0) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ddd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098dcb0: 8b 4c 24 04 83 ec 28 85 c9 55 0f 84 02 01 00 00
1098dcc0: 83 7c 24 38 00 8b 6c 24 3c 74 08 85 ed 0f 84 ef
1098dcd0: 00 00 00 f3 0f 10 05 d4 b0 ac 10 8b 54 24 34 8d
1098dce0: 44 24 0c 50 f3 0f 11 44 24 20 f3 0f 10 05 fc df
1098dcf0: aa 10 52 f3 0f 11 44 24 28 c7 44 24 30 78 70 b9
1098dd00: 10 c7 44 24 1c 01 00 00 00 c7 44 24 18 f8 71 c5
1098dd10: 10 c7 44 24 20 00 00 00 00 c7 44 24 2c 00 00 00
1098dd20: 00 e8 2a ba c5 ff 8b 54 24 10 8b 02 85 c0 8b ca
1098dd30: 75 18 39 42 04 8d 4a 04 75 0e 8d 9b 00 00 00 00
1098dd40: 83 c1 04 83 39 00 74 f8 8b 01 53 56 8b 74 24 1c
1098dd50: 8b 1c b2 33 f6 3b c3 89 5c 24 0c 74 31 8d 49 00
1098dd60: 3b 74 24 40 73 0a 8b 18 89 5c b5 00 8b 5c 24 0c
1098dd70: 8b 40 04 83 c6 01 85 c0 75 10 8d 9b 00 00 00 00
1098dd80: 8b 41 04 83 c1 04 85 c0 74 f6 3b c3 75 d2 8b 44
1098dd90: 24 1c 50 52 8d 4c 24 1c e8 73 db c5 ff 83 7c 24
1098dda0: 1c 01 c7 44 24 20 00 00 00 00 76 0d 8b 4c 24 18
1098ddb0: 51 e8 da b0 f8 ff 83 c4 04 8b c6 5e 5b 5d 83 c4
1098ddc0: 28 c3 33 c0 5d 83 c4 28 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098dcb0 <.text+0x98ccb0>:
1098dcb0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098dcb4:	83 ec 28                                        	sub    esp,0x28
1098dcb7:	85 c9                                           	test   ecx,ecx
1098dcb9:	55                                              	push   ebp
1098dcba:	0f 84 02 01 00 00                               	je     0x1098ddc2
1098dcc0:	83 7c 24 38 00                                  	cmp    DWORD PTR [esp+0x38],0x0
1098dcc5:	8b 6c 24 3c                                     	mov    ebp,DWORD PTR [esp+0x3c]
1098dcc9:	74 08                                           	je     0x1098dcd3
1098dccb:	85 ed                                           	test   ebp,ebp
1098dccd:	0f 84 ef 00 00 00                               	je     0x1098ddc2
1098dcd3:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1098dcdb:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
1098dcdf:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
1098dce3:	50                                              	push   eax
1098dce4:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
1098dcea:	f3 0f 10 05 fc df aa 10                         	movss  xmm0,DWORD PTR ds:0x10aadffc
1098dcf2:	52                                              	push   edx
1098dcf3:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
1098dcf9:	c7 44 24 30 78 70 b9 10                         	mov    DWORD PTR [esp+0x30],0x10b97078
1098dd01:	c7 44 24 1c 01 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x1
1098dd09:	c7 44 24 18 f8 71 c5 10                         	mov    DWORD PTR [esp+0x18],0x10c571f8
1098dd11:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
1098dd19:	c7 44 24 2c 00 00 00 00                         	mov    DWORD PTR [esp+0x2c],0x0
1098dd21:	e8 2a ba c5 ff                                  	call   0x105e9750
1098dd26:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1098dd2a:	8b 02                                           	mov    eax,DWORD PTR [edx]
1098dd2c:	85 c0                                           	test   eax,eax
1098dd2e:	8b ca                                           	mov    ecx,edx
1098dd30:	75 18                                           	jne    0x1098dd4a
1098dd32:	39 42 04                                        	cmp    DWORD PTR [edx+0x4],eax
1098dd35:	8d 4a 04                                        	lea    ecx,[edx+0x4]
1098dd38:	75 0e                                           	jne    0x1098dd48
1098dd3a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
1098dd40:	83 c1 04                                        	add    ecx,0x4
1098dd43:	83 39 00                                        	cmp    DWORD PTR [ecx],0x0
1098dd46:	74 f8                                           	je     0x1098dd40
1098dd48:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098dd4a:	53                                              	push   ebx
1098dd4b:	56                                              	push   esi
1098dd4c:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
1098dd50:	8b 1c b2                                        	mov    ebx,DWORD PTR [edx+esi*4]
1098dd53:	33 f6                                           	xor    esi,esi
1098dd55:	3b c3                                           	cmp    eax,ebx
1098dd57:	89 5c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebx
1098dd5b:	74 31                                           	je     0x1098dd8e
1098dd5d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1098dd60:	3b 74 24 40                                     	cmp    esi,DWORD PTR [esp+0x40]
1098dd64:	73 0a                                           	jae    0x1098dd70
1098dd66:	8b 18                                           	mov    ebx,DWORD PTR [eax]
1098dd68:	89 5c b5 00                                     	mov    DWORD PTR [ebp+esi*4+0x0],ebx
1098dd6c:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
1098dd70:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
1098dd73:	83 c6 01                                        	add    esi,0x1
1098dd76:	85 c0                                           	test   eax,eax
1098dd78:	75 10                                           	jne    0x1098dd8a
1098dd7a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
1098dd80:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
1098dd83:	83 c1 04                                        	add    ecx,0x4
1098dd86:	85 c0                                           	test   eax,eax
1098dd88:	74 f6                                           	je     0x1098dd80
1098dd8a:	3b c3                                           	cmp    eax,ebx
1098dd8c:	75 d2                                           	jne    0x1098dd60
1098dd8e:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1098dd92:	50                                              	push   eax
1098dd93:	52                                              	push   edx
1098dd94:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1098dd98:	e8 73 db c5 ff                                  	call   0x105eb910
1098dd9d:	83 7c 24 1c 01                                  	cmp    DWORD PTR [esp+0x1c],0x1
1098dda2:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
1098ddaa:	76 0d                                           	jbe    0x1098ddb9
1098ddac:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1098ddb0:	51                                              	push   ecx
1098ddb1:	e8 da b0 f8 ff                                  	call   0x10918e90
1098ddb6:	83 c4 04                                        	add    esp,0x4
1098ddb9:	8b c6                                           	mov    eax,esi
1098ddbb:	5e                                              	pop    esi
1098ddbc:	5b                                              	pop    ebx
1098ddbd:	5d                                              	pop    ebp
1098ddbe:	83 c4 28                                        	add    esp,0x28
1098ddc1:	c3                                              	ret
1098ddc2:	33 c0                                           	xor    eax,eax
1098ddc4:	5d                                              	pop    ebp
1098ddc5:	83 c4 28                                        	add    esp,0x28
1098ddc8:	c3                                              	ret
1098ddc9:	cc                                              	int3
1098ddca:	cc                                              	int3
1098ddcb:	cc                                              	int3
1098ddcc:	cc                                              	int3
1098ddcd:	cc                                              	int3
1098ddce:	cc                                              	int3
1098ddcf:	cc                                              	int3
