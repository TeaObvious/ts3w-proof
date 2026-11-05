# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d9e0 (SacsWrap_StateMachine_GetActorDefinitions)
Paired Ghidra pseudocode: 1098D9E0_SacsWrap_StateMachine_GetActorDefinitions.c
Window: [0x1098d9e0, 0x1098da60) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098da60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d9e0: 8b 44 24 04 85 c0 53 57 74 6d 8b 5c 24 10 85 db
1098d9f0: 8b 7c 24 14 74 04 85 ff 74 5d 8b 50 44 8b 0a 85
1098da00: c9 75 17 83 c2 04 39 0a 75 0e 8d 9b 00 00 00 00
1098da10: 83 c2 04 83 3a 00 74 f8 8b 0a 56 8b 70 48 8b 40
1098da20: 44 8b 34 b0 33 c0 3b ce 74 29 55 eb 03 8d 49 00
1098da30: 3b c3 73 06 8b 69 04 89 2c 87 8b 49 08 83 c0 01
1098da40: 85 c9 75 0a 8b 4a 04 83 c2 04 85 c9 74 f6 3b ce
1098da50: 75 de 5d 5e 5f 5b c3 5f 33 c0 5b c3 cc cc cc cc

LINEAR DISASSEMBLY
1098d9e0 <.text+0x98c9e0>:
1098d9e0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098d9e4:	85 c0                                           	test   eax,eax
1098d9e6:	53                                              	push   ebx
1098d9e7:	57                                              	push   edi
1098d9e8:	74 6d                                           	je     0x1098da57
1098d9ea:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
1098d9ee:	85 db                                           	test   ebx,ebx
1098d9f0:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1098d9f4:	74 04                                           	je     0x1098d9fa
1098d9f6:	85 ff                                           	test   edi,edi
1098d9f8:	74 5d                                           	je     0x1098da57
1098d9fa:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
1098d9fd:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
1098d9ff:	85 c9                                           	test   ecx,ecx
1098da01:	75 17                                           	jne    0x1098da1a
1098da03:	83 c2 04                                        	add    edx,0x4
1098da06:	39 0a                                           	cmp    DWORD PTR [edx],ecx
1098da08:	75 0e                                           	jne    0x1098da18
1098da0a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
1098da10:	83 c2 04                                        	add    edx,0x4
1098da13:	83 3a 00                                        	cmp    DWORD PTR [edx],0x0
1098da16:	74 f8                                           	je     0x1098da10
1098da18:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
1098da1a:	56                                              	push   esi
1098da1b:	8b 70 48                                        	mov    esi,DWORD PTR [eax+0x48]
1098da1e:	8b 40 44                                        	mov    eax,DWORD PTR [eax+0x44]
1098da21:	8b 34 b0                                        	mov    esi,DWORD PTR [eax+esi*4]
1098da24:	33 c0                                           	xor    eax,eax
1098da26:	3b ce                                           	cmp    ecx,esi
1098da28:	74 29                                           	je     0x1098da53
1098da2a:	55                                              	push   ebp
1098da2b:	eb 03                                           	jmp    0x1098da30
1098da2d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1098da30:	3b c3                                           	cmp    eax,ebx
1098da32:	73 06                                           	jae    0x1098da3a
1098da34:	8b 69 04                                        	mov    ebp,DWORD PTR [ecx+0x4]
1098da37:	89 2c 87                                        	mov    DWORD PTR [edi+eax*4],ebp
1098da3a:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
1098da3d:	83 c0 01                                        	add    eax,0x1
1098da40:	85 c9                                           	test   ecx,ecx
1098da42:	75 0a                                           	jne    0x1098da4e
1098da44:	8b 4a 04                                        	mov    ecx,DWORD PTR [edx+0x4]
1098da47:	83 c2 04                                        	add    edx,0x4
1098da4a:	85 c9                                           	test   ecx,ecx
1098da4c:	74 f6                                           	je     0x1098da44
1098da4e:	3b ce                                           	cmp    ecx,esi
1098da50:	75 de                                           	jne    0x1098da30
1098da52:	5d                                              	pop    ebp
1098da53:	5e                                              	pop    esi
1098da54:	5f                                              	pop    edi
1098da55:	5b                                              	pop    ebx
1098da56:	c3                                              	ret
1098da57:	5f                                              	pop    edi
1098da58:	33 c0                                           	xor    eax,eax
1098da5a:	5b                                              	pop    ebx
1098da5b:	c3                                              	ret
1098da5c:	cc                                              	int3
1098da5d:	cc                                              	int3
1098da5e:	cc                                              	int3
1098da5f:	cc                                              	int3
