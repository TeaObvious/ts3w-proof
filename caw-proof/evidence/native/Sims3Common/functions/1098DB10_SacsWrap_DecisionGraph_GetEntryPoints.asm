# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098db10 (SacsWrap_DecisionGraph_GetEntryPoints)
Paired Ghidra pseudocode: 1098DB10_SacsWrap_DecisionGraph_GetEntryPoints.c
Window: [0x1098db10, 0x1098db90) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098db90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098db10: 8b 44 24 04 85 c0 53 57 74 6c 8b 5c 24 10 85 db
1098db20: 8b 7c 24 14 74 04 85 ff 74 5c 8b 50 2c 8b 0a 85
1098db30: c9 75 17 83 c2 04 39 0a 75 0e 8d 9b 00 00 00 00
1098db40: 83 c2 04 83 3a 00 74 f8 8b 0a 56 8b 70 30 8b 40
1098db50: 2c 8b 34 b0 33 c0 3b ce 74 28 55 eb 03 8d 49 00
1098db60: 3b c3 73 05 8b 29 89 2c 87 8b 49 04 83 c0 01 85
1098db70: c9 75 0a 8b 4a 04 83 c2 04 85 c9 74 f6 3b ce 75
1098db80: df 5d 5e 5f 5b c3 5f 33 c0 5b c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1098db10 <.text+0x98cb10>:
1098db10:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098db14:	85 c0                                           	test   eax,eax
1098db16:	53                                              	push   ebx
1098db17:	57                                              	push   edi
1098db18:	74 6c                                           	je     0x1098db86
1098db1a:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
1098db1e:	85 db                                           	test   ebx,ebx
1098db20:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1098db24:	74 04                                           	je     0x1098db2a
1098db26:	85 ff                                           	test   edi,edi
1098db28:	74 5c                                           	je     0x1098db86
1098db2a:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
1098db2d:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
1098db2f:	85 c9                                           	test   ecx,ecx
1098db31:	75 17                                           	jne    0x1098db4a
1098db33:	83 c2 04                                        	add    edx,0x4
1098db36:	39 0a                                           	cmp    DWORD PTR [edx],ecx
1098db38:	75 0e                                           	jne    0x1098db48
1098db3a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
1098db40:	83 c2 04                                        	add    edx,0x4
1098db43:	83 3a 00                                        	cmp    DWORD PTR [edx],0x0
1098db46:	74 f8                                           	je     0x1098db40
1098db48:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
1098db4a:	56                                              	push   esi
1098db4b:	8b 70 30                                        	mov    esi,DWORD PTR [eax+0x30]
1098db4e:	8b 40 2c                                        	mov    eax,DWORD PTR [eax+0x2c]
1098db51:	8b 34 b0                                        	mov    esi,DWORD PTR [eax+esi*4]
1098db54:	33 c0                                           	xor    eax,eax
1098db56:	3b ce                                           	cmp    ecx,esi
1098db58:	74 28                                           	je     0x1098db82
1098db5a:	55                                              	push   ebp
1098db5b:	eb 03                                           	jmp    0x1098db60
1098db5d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1098db60:	3b c3                                           	cmp    eax,ebx
1098db62:	73 05                                           	jae    0x1098db69
1098db64:	8b 29                                           	mov    ebp,DWORD PTR [ecx]
1098db66:	89 2c 87                                        	mov    DWORD PTR [edi+eax*4],ebp
1098db69:	8b 49 04                                        	mov    ecx,DWORD PTR [ecx+0x4]
1098db6c:	83 c0 01                                        	add    eax,0x1
1098db6f:	85 c9                                           	test   ecx,ecx
1098db71:	75 0a                                           	jne    0x1098db7d
1098db73:	8b 4a 04                                        	mov    ecx,DWORD PTR [edx+0x4]
1098db76:	83 c2 04                                        	add    edx,0x4
1098db79:	85 c9                                           	test   ecx,ecx
1098db7b:	74 f6                                           	je     0x1098db73
1098db7d:	3b ce                                           	cmp    ecx,esi
1098db7f:	75 df                                           	jne    0x1098db60
1098db81:	5d                                              	pop    ebp
1098db82:	5e                                              	pop    esi
1098db83:	5f                                              	pop    edi
1098db84:	5b                                              	pop    ebx
1098db85:	c3                                              	ret
1098db86:	5f                                              	pop    edi
1098db87:	33 c0                                           	xor    eax,eax
1098db89:	5b                                              	pop    ebx
1098db8a:	c3                                              	ret
1098db8b:	cc                                              	int3
1098db8c:	cc                                              	int3
1098db8d:	cc                                              	int3
1098db8e:	cc                                              	int3
1098db8f:	cc                                              	int3
