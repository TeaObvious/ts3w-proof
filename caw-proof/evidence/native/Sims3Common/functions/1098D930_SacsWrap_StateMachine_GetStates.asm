# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d930 (SacsWrap_StateMachine_GetStates)
Paired Ghidra pseudocode: 1098D930_SacsWrap_StateMachine_GetStates.c
Window: [0x1098d930, 0x1098d9b0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d9b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d930: 83 ec 08 53 56 8b 74 24 14 85 f6 57 74 68 8b 5c
1098d940: 24 1c 85 db 8b 7c 24 20 74 04 85 ff 74 58 8d 44
1098d950: 24 0c 50 8b ce e8 f6 47 c6 ff 8b 8e 88 00 00 00
1098d960: 8b 96 84 00 00 00 8b 34 8a 8b 4c 24 0c 33 c0 3b
1098d970: ce 74 35 8b 54 24 10 55 3b c3 73 06 8b 69 04 89
1098d980: 2c 87 8b 49 08 83 c0 01 85 c9 75 0e 8d 64 24 00
1098d990: 8b 4a 04 83 c2 04 85 c9 74 f6 3b ce 75 da 5d 5f
1098d9a0: 5e 5b 83 c4 08 c3 33 c0 5f 5e 5b 83 c4 08 c3 cc

LINEAR DISASSEMBLY
1098d930 <.text+0x98c930>:
1098d930:	83 ec 08                                        	sub    esp,0x8
1098d933:	53                                              	push   ebx
1098d934:	56                                              	push   esi
1098d935:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
1098d939:	85 f6                                           	test   esi,esi
1098d93b:	57                                              	push   edi
1098d93c:	74 68                                           	je     0x1098d9a6
1098d93e:	8b 5c 24 1c                                     	mov    ebx,DWORD PTR [esp+0x1c]
1098d942:	85 db                                           	test   ebx,ebx
1098d944:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
1098d948:	74 04                                           	je     0x1098d94e
1098d94a:	85 ff                                           	test   edi,edi
1098d94c:	74 58                                           	je     0x1098d9a6
1098d94e:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
1098d952:	50                                              	push   eax
1098d953:	8b ce                                           	mov    ecx,esi
1098d955:	e8 f6 47 c6 ff                                  	call   0x105f2150
1098d95a:	8b 8e 88 00 00 00                               	mov    ecx,DWORD PTR [esi+0x88]
1098d960:	8b 96 84 00 00 00                               	mov    edx,DWORD PTR [esi+0x84]
1098d966:	8b 34 8a                                        	mov    esi,DWORD PTR [edx+ecx*4]
1098d969:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098d96d:	33 c0                                           	xor    eax,eax
1098d96f:	3b ce                                           	cmp    ecx,esi
1098d971:	74 35                                           	je     0x1098d9a8
1098d973:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1098d977:	55                                              	push   ebp
1098d978:	3b c3                                           	cmp    eax,ebx
1098d97a:	73 06                                           	jae    0x1098d982
1098d97c:	8b 69 04                                        	mov    ebp,DWORD PTR [ecx+0x4]
1098d97f:	89 2c 87                                        	mov    DWORD PTR [edi+eax*4],ebp
1098d982:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
1098d985:	83 c0 01                                        	add    eax,0x1
1098d988:	85 c9                                           	test   ecx,ecx
1098d98a:	75 0e                                           	jne    0x1098d99a
1098d98c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
1098d990:	8b 4a 04                                        	mov    ecx,DWORD PTR [edx+0x4]
1098d993:	83 c2 04                                        	add    edx,0x4
1098d996:	85 c9                                           	test   ecx,ecx
1098d998:	74 f6                                           	je     0x1098d990
1098d99a:	3b ce                                           	cmp    ecx,esi
1098d99c:	75 da                                           	jne    0x1098d978
1098d99e:	5d                                              	pop    ebp
1098d99f:	5f                                              	pop    edi
1098d9a0:	5e                                              	pop    esi
1098d9a1:	5b                                              	pop    ebx
1098d9a2:	83 c4 08                                        	add    esp,0x8
1098d9a5:	c3                                              	ret
1098d9a6:	33 c0                                           	xor    eax,eax
1098d9a8:	5f                                              	pop    edi
1098d9a9:	5e                                              	pop    esi
1098d9aa:	5b                                              	pop    ebx
1098d9ab:	83 c4 08                                        	add    esp,0x8
1098d9ae:	c3                                              	ret
1098d9af:	cc                                              	int3
