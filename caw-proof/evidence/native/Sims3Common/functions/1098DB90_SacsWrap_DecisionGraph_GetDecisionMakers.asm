# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098db90 (SacsWrap_DecisionGraph_GetDecisionMakers)
Paired Ghidra pseudocode: 1098DB90_SacsWrap_DecisionGraph_GetDecisionMakers.c
Window: [0x1098db90, 0x1098dc10) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098dc10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098db90: 8b 44 24 04 85 c0 53 57 74 6c 8b 5c 24 10 85 db
1098dba0: 8b 7c 24 14 74 04 85 ff 74 5c 8b 50 4c 8b 0a 85
1098dbb0: c9 75 17 83 c2 04 39 0a 75 0e 8d 9b 00 00 00 00
1098dbc0: 83 c2 04 83 3a 00 74 f8 8b 0a 56 8b 70 50 8b 40
1098dbd0: 4c 8b 34 b0 33 c0 3b ce 74 28 55 eb 03 8d 49 00
1098dbe0: 3b c3 73 05 8b 29 89 2c 87 8b 49 04 83 c0 01 85
1098dbf0: c9 75 0a 8b 4a 04 83 c2 04 85 c9 74 f6 3b ce 75
1098dc00: df 5d 5e 5f 5b c3 5f 33 c0 5b c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1098db90 <.text+0x98cb90>:
1098db90:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098db94:	85 c0                                           	test   eax,eax
1098db96:	53                                              	push   ebx
1098db97:	57                                              	push   edi
1098db98:	74 6c                                           	je     0x1098dc06
1098db9a:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
1098db9e:	85 db                                           	test   ebx,ebx
1098dba0:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1098dba4:	74 04                                           	je     0x1098dbaa
1098dba6:	85 ff                                           	test   edi,edi
1098dba8:	74 5c                                           	je     0x1098dc06
1098dbaa:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
1098dbad:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
1098dbaf:	85 c9                                           	test   ecx,ecx
1098dbb1:	75 17                                           	jne    0x1098dbca
1098dbb3:	83 c2 04                                        	add    edx,0x4
1098dbb6:	39 0a                                           	cmp    DWORD PTR [edx],ecx
1098dbb8:	75 0e                                           	jne    0x1098dbc8
1098dbba:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
1098dbc0:	83 c2 04                                        	add    edx,0x4
1098dbc3:	83 3a 00                                        	cmp    DWORD PTR [edx],0x0
1098dbc6:	74 f8                                           	je     0x1098dbc0
1098dbc8:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
1098dbca:	56                                              	push   esi
1098dbcb:	8b 70 50                                        	mov    esi,DWORD PTR [eax+0x50]
1098dbce:	8b 40 4c                                        	mov    eax,DWORD PTR [eax+0x4c]
1098dbd1:	8b 34 b0                                        	mov    esi,DWORD PTR [eax+esi*4]
1098dbd4:	33 c0                                           	xor    eax,eax
1098dbd6:	3b ce                                           	cmp    ecx,esi
1098dbd8:	74 28                                           	je     0x1098dc02
1098dbda:	55                                              	push   ebp
1098dbdb:	eb 03                                           	jmp    0x1098dbe0
1098dbdd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1098dbe0:	3b c3                                           	cmp    eax,ebx
1098dbe2:	73 05                                           	jae    0x1098dbe9
1098dbe4:	8b 29                                           	mov    ebp,DWORD PTR [ecx]
1098dbe6:	89 2c 87                                        	mov    DWORD PTR [edi+eax*4],ebp
1098dbe9:	8b 49 04                                        	mov    ecx,DWORD PTR [ecx+0x4]
1098dbec:	83 c0 01                                        	add    eax,0x1
1098dbef:	85 c9                                           	test   ecx,ecx
1098dbf1:	75 0a                                           	jne    0x1098dbfd
1098dbf3:	8b 4a 04                                        	mov    ecx,DWORD PTR [edx+0x4]
1098dbf6:	83 c2 04                                        	add    edx,0x4
1098dbf9:	85 c9                                           	test   ecx,ecx
1098dbfb:	74 f6                                           	je     0x1098dbf3
1098dbfd:	3b ce                                           	cmp    ecx,esi
1098dbff:	75 df                                           	jne    0x1098dbe0
1098dc01:	5d                                              	pop    ebp
1098dc02:	5e                                              	pop    esi
1098dc03:	5f                                              	pop    edi
1098dc04:	5b                                              	pop    ebx
1098dc05:	c3                                              	ret
1098dc06:	5f                                              	pop    edi
1098dc07:	33 c0                                           	xor    eax,eax
1098dc09:	5b                                              	pop    ebx
1098dc0a:	c3                                              	ret
1098dc0b:	cc                                              	int3
1098dc0c:	cc                                              	int3
1098dc0d:	cc                                              	int3
1098dc0e:	cc                                              	int3
1098dc0f:	cc                                              	int3
