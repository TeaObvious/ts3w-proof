# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f990 (ShaderSet_GetParameterInfo)
Paired Ghidra pseudocode: 1098F990_ShaderSet_GetParameterInfo.c
Window: [0x1098f990, 0x1098fa00) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fa00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f990: 53 56 8b 74 24 14 57 8b 7c 24 10 56 8b cf e8 1d
1098f9a0: 39 c0 ff 8b 5c 24 14 56 8b cf 89 43 04 e8 2e 39
1098f9b0: c0 ff 56 8b cf 89 03 e8 84 39 c0 ff d9 5b 14 56
1098f9c0: 8b cf e8 b9 39 c0 ff d9 5b 18 56 8b cf e8 ee 39
1098f9d0: c0 ff d9 5b 1c 56 8b cf e8 53 3a c0 ff 56 8b cf
1098f9e0: 89 43 08 e8 78 3a c0 ff 56 8b cf 89 43 0c e8 0d
1098f9f0: 3a c0 ff 5f 5e 89 43 10 5b c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f990 <.text+0x98e990>:
1098f990:	53                                              	push   ebx
1098f991:	56                                              	push   esi
1098f992:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
1098f996:	57                                              	push   edi
1098f997:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
1098f99b:	56                                              	push   esi
1098f99c:	8b cf                                           	mov    ecx,edi
1098f99e:	e8 1d 39 c0 ff                                  	call   0x105932c0
1098f9a3:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
1098f9a7:	56                                              	push   esi
1098f9a8:	8b cf                                           	mov    ecx,edi
1098f9aa:	89 43 04                                        	mov    DWORD PTR [ebx+0x4],eax
1098f9ad:	e8 2e 39 c0 ff                                  	call   0x105932e0
1098f9b2:	56                                              	push   esi
1098f9b3:	8b cf                                           	mov    ecx,edi
1098f9b5:	89 03                                           	mov    DWORD PTR [ebx],eax
1098f9b7:	e8 84 39 c0 ff                                  	call   0x10593340
1098f9bc:	d9 5b 14                                        	fstp   DWORD PTR [ebx+0x14]
1098f9bf:	56                                              	push   esi
1098f9c0:	8b cf                                           	mov    ecx,edi
1098f9c2:	e8 b9 39 c0 ff                                  	call   0x10593380
1098f9c7:	d9 5b 18                                        	fstp   DWORD PTR [ebx+0x18]
1098f9ca:	56                                              	push   esi
1098f9cb:	8b cf                                           	mov    ecx,edi
1098f9cd:	e8 ee 39 c0 ff                                  	call   0x105933c0
1098f9d2:	d9 5b 1c                                        	fstp   DWORD PTR [ebx+0x1c]
1098f9d5:	56                                              	push   esi
1098f9d6:	8b cf                                           	mov    ecx,edi
1098f9d8:	e8 53 3a c0 ff                                  	call   0x10593430
1098f9dd:	56                                              	push   esi
1098f9de:	8b cf                                           	mov    ecx,edi
1098f9e0:	89 43 08                                        	mov    DWORD PTR [ebx+0x8],eax
1098f9e3:	e8 78 3a c0 ff                                  	call   0x10593460
1098f9e8:	56                                              	push   esi
1098f9e9:	8b cf                                           	mov    ecx,edi
1098f9eb:	89 43 0c                                        	mov    DWORD PTR [ebx+0xc],eax
1098f9ee:	e8 0d 3a c0 ff                                  	call   0x10593400
1098f9f3:	5f                                              	pop    edi
1098f9f4:	5e                                              	pop    esi
1098f9f5:	89 43 10                                        	mov    DWORD PTR [ebx+0x10],eax
1098f9f8:	5b                                              	pop    ebx
1098f9f9:	c3                                              	ret
1098f9fa:	cc                                              	int3
1098f9fb:	cc                                              	int3
1098f9fc:	cc                                              	int3
1098f9fd:	cc                                              	int3
1098f9fe:	cc                                              	int3
1098f9ff:	cc                                              	int3
