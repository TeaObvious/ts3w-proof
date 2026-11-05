# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098da90 (SacsWrap_StateMachine_GetParameterDefinitions)
Paired Ghidra pseudocode: 1098DA90_SacsWrap_StateMachine_GetParameterDefinitions.c
Window: [0x1098da90, 0x1098db10) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098db10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098da90: 8b 44 24 04 85 c0 53 57 74 6d 8b 5c 24 10 85 db
1098daa0: 8b 7c 24 14 74 04 85 ff 74 5d 8b 50 64 8b 0a 85
1098dab0: c9 75 17 83 c2 04 39 0a 75 0e 8d 9b 00 00 00 00
1098dac0: 83 c2 04 83 3a 00 74 f8 8b 0a 56 8b 70 68 8b 40
1098dad0: 64 8b 34 b0 33 c0 3b ce 74 29 55 eb 03 8d 49 00
1098dae0: 3b c3 73 06 8b 69 04 89 2c 87 8b 49 08 83 c0 01
1098daf0: 85 c9 75 0a 8b 4a 04 83 c2 04 85 c9 74 f6 3b ce
1098db00: 75 de 5d 5e 5f 5b c3 5f 33 c0 5b c3 cc cc cc cc

LINEAR DISASSEMBLY
1098da90 <.text+0x98ca90>:
1098da90:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098da94:	85 c0                                           	test   eax,eax
1098da96:	53                                              	push   ebx
1098da97:	57                                              	push   edi
1098da98:	74 6d                                           	je     0x1098db07
1098da9a:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
1098da9e:	85 db                                           	test   ebx,ebx
1098daa0:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1098daa4:	74 04                                           	je     0x1098daaa
1098daa6:	85 ff                                           	test   edi,edi
1098daa8:	74 5d                                           	je     0x1098db07
1098daaa:	8b 50 64                                        	mov    edx,DWORD PTR [eax+0x64]
1098daad:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
1098daaf:	85 c9                                           	test   ecx,ecx
1098dab1:	75 17                                           	jne    0x1098daca
1098dab3:	83 c2 04                                        	add    edx,0x4
1098dab6:	39 0a                                           	cmp    DWORD PTR [edx],ecx
1098dab8:	75 0e                                           	jne    0x1098dac8
1098daba:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
1098dac0:	83 c2 04                                        	add    edx,0x4
1098dac3:	83 3a 00                                        	cmp    DWORD PTR [edx],0x0
1098dac6:	74 f8                                           	je     0x1098dac0
1098dac8:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
1098daca:	56                                              	push   esi
1098dacb:	8b 70 68                                        	mov    esi,DWORD PTR [eax+0x68]
1098dace:	8b 40 64                                        	mov    eax,DWORD PTR [eax+0x64]
1098dad1:	8b 34 b0                                        	mov    esi,DWORD PTR [eax+esi*4]
1098dad4:	33 c0                                           	xor    eax,eax
1098dad6:	3b ce                                           	cmp    ecx,esi
1098dad8:	74 29                                           	je     0x1098db03
1098dada:	55                                              	push   ebp
1098dadb:	eb 03                                           	jmp    0x1098dae0
1098dadd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1098dae0:	3b c3                                           	cmp    eax,ebx
1098dae2:	73 06                                           	jae    0x1098daea
1098dae4:	8b 69 04                                        	mov    ebp,DWORD PTR [ecx+0x4]
1098dae7:	89 2c 87                                        	mov    DWORD PTR [edi+eax*4],ebp
1098daea:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
1098daed:	83 c0 01                                        	add    eax,0x1
1098daf0:	85 c9                                           	test   ecx,ecx
1098daf2:	75 0a                                           	jne    0x1098dafe
1098daf4:	8b 4a 04                                        	mov    ecx,DWORD PTR [edx+0x4]
1098daf7:	83 c2 04                                        	add    edx,0x4
1098dafa:	85 c9                                           	test   ecx,ecx
1098dafc:	74 f6                                           	je     0x1098daf4
1098dafe:	3b ce                                           	cmp    ecx,esi
1098db00:	75 de                                           	jne    0x1098dae0
1098db02:	5d                                              	pop    ebp
1098db03:	5e                                              	pop    esi
1098db04:	5f                                              	pop    edi
1098db05:	5b                                              	pop    ebx
1098db06:	c3                                              	ret
1098db07:	5f                                              	pop    edi
1098db08:	33 c0                                           	xor    eax,eax
1098db0a:	5b                                              	pop    ebx
1098db0b:	c3                                              	ret
1098db0c:	cc                                              	int3
1098db0d:	cc                                              	int3
1098db0e:	cc                                              	int3
1098db0f:	cc                                              	int3
