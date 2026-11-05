# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052ce30 (Animation_SetBoneTimeRotation)
Paired Ghidra pseudocode: 1052CE30_Animation_SetBoneTimeRotation.c
Window: [0x1052ce30, 0x1052ced0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052ced0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052ce30: 51 56 e8 69 d3 1f 00 8b 4c 24 10 8b 54 24 0c 51
1052ce40: 52 8b c8 e8 68 dd 1f 00 8b f0 85 f6 74 76 57 8d
1052ce50: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 c4
1052ce60: 0c c8 10 52 8b ce e8 35 9f 1f 00 85 c0 74 37 68
1052ce70: 98 3a 00 00 8b c8 e8 75 21 20 00 85 c0 74 27 8d
1052ce80: 48 08 8b 01 8b 50 04 68 68 fb 64 06 ff d2 85 c0
1052ce90: 74 14 d9 44 24 1c 51 8b 4c 24 1c d9 1c 24 51 8b
1052cea0: c8 e8 8a c1 e3 ff 8b d7 83 c8 ff f0 0f c1 02 48
1052ceb0: 75 11 b9 01 00 00 00 87 0f 8b 16 8b 02 6a 01 8b
1052cec0: ce ff d0 5f 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052ce30 <.text+0x52be30>:
1052ce30:	51                                              	push   ecx
1052ce31:	56                                              	push   esi
1052ce32:	e8 69 d3 1f 00                                  	call   0x1072a1a0
1052ce37:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1052ce3b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1052ce3f:	51                                              	push   ecx
1052ce40:	52                                              	push   edx
1052ce41:	8b c8                                           	mov    ecx,eax
1052ce43:	e8 68 dd 1f 00                                  	call   0x1072abb0
1052ce48:	8b f0                                           	mov    esi,eax
1052ce4a:	85 f6                                           	test   esi,esi
1052ce4c:	74 76                                           	je     0x1052cec4
1052ce4e:	57                                              	push   edi
1052ce4f:	8d 7e 04                                        	lea    edi,[esi+0x4]
1052ce52:	8b c7                                           	mov    eax,edi
1052ce54:	b9 01 00 00 00                                  	mov    ecx,0x1
1052ce59:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052ce5d:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052ce63:	52                                              	push   edx
1052ce64:	8b ce                                           	mov    ecx,esi
1052ce66:	e8 35 9f 1f 00                                  	call   0x10726da0
1052ce6b:	85 c0                                           	test   eax,eax
1052ce6d:	74 37                                           	je     0x1052cea6
1052ce6f:	68 98 3a 00 00                                  	push   0x3a98
1052ce74:	8b c8                                           	mov    ecx,eax
1052ce76:	e8 75 21 20 00                                  	call   0x1072eff0
1052ce7b:	85 c0                                           	test   eax,eax
1052ce7d:	74 27                                           	je     0x1052cea6
1052ce7f:	8d 48 08                                        	lea    ecx,[eax+0x8]
1052ce82:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1052ce84:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1052ce87:	68 68 fb 64 06                                  	push   0x664fb68
1052ce8c:	ff d2                                           	call   edx
1052ce8e:	85 c0                                           	test   eax,eax
1052ce90:	74 14                                           	je     0x1052cea6
1052ce92:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
1052ce96:	51                                              	push   ecx
1052ce97:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1052ce9b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052ce9e:	51                                              	push   ecx
1052ce9f:	8b c8                                           	mov    ecx,eax
1052cea1:	e8 8a c1 e3 ff                                  	call   0x10369030
1052cea6:	8b d7                                           	mov    edx,edi
1052cea8:	83 c8 ff                                        	or     eax,0xffffffff
1052ceab:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
1052ceaf:	48                                              	dec    eax
1052ceb0:	75 11                                           	jne    0x1052cec3
1052ceb2:	b9 01 00 00 00                                  	mov    ecx,0x1
1052ceb7:	87 0f                                           	xchg   DWORD PTR [edi],ecx
1052ceb9:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052cebb:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052cebd:	6a 01                                           	push   0x1
1052cebf:	8b ce                                           	mov    ecx,esi
1052cec1:	ff d0                                           	call   eax
1052cec3:	5f                                              	pop    edi
1052cec4:	5e                                              	pop    esi
1052cec5:	59                                              	pop    ecx
1052cec6:	c3                                              	ret
1052cec7:	cc                                              	int3
1052cec8:	cc                                              	int3
1052cec9:	cc                                              	int3
1052ceca:	cc                                              	int3
1052cecb:	cc                                              	int3
1052cecc:	cc                                              	int3
1052cecd:	cc                                              	int3
1052cece:	cc                                              	int3
1052cecf:	cc                                              	int3
