# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10146a20 (CAW_RoadNetworkCreateSplineAndInsert)
Paired Ghidra pseudocode: 10146A20_CAW_RoadNetworkCreateSplineAndInsert.c
Window: [0x10146a20, 0x10146ae0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x10146ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10146a20: 53 56 57 6a 00 6a 00 6a 00 6a 00 68 ac f8 ab 10
10146a30: 68 b0 01 00 00 8b f9 e8 74 24 7d 00 8b 5c 24 38
10146a40: 83 c4 18 85 c0 74 32 0f b7 8f 10 01 00 00 8b 54
10146a50: 24 28 51 8b 4c 24 28 52 8b 54 24 24 51 8b 4c 24
10146a60: 24 53 52 8b 54 24 28 51 8b 4c 24 28 52 51 8b c8
10146a70: e8 cb 66 ff ff 8b f0 eb 02 33 f6 8b 16 8b 42 5c
10146a80: 8b ce 89 74 24 20 ff d0 84 c0 74 13 8b 16 8b 42
10146a90: 08 6a 01 8b ce ff d0 5f 5e 33 c0 5b c2 1c 00 84
10146aa0: db 74 34 8d 4f 54 8b 41 04 3b 41 08 73 14 85 c0
10146ab0: 8d 50 04 89 51 04 74 02 89 30 5f 8b c6 5e 5b c2
10146ac0: 1c 00 8d 54 24 20 52 50 e8 b3 79 4a 00 8b 44 24
10146ad0: 20 5f 5e 5b c2 1c 00 8d 4f 30 eb ca cc cc cc cc

LINEAR DISASSEMBLY
10146a20 <.text+0x145a20>:
10146a20:	53                                              	push   ebx
10146a21:	56                                              	push   esi
10146a22:	57                                              	push   edi
10146a23:	6a 00                                           	push   0x0
10146a25:	6a 00                                           	push   0x0
10146a27:	6a 00                                           	push   0x0
10146a29:	6a 00                                           	push   0x0
10146a2b:	68 ac f8 ab 10                                  	push   0x10abf8ac
10146a30:	68 b0 01 00 00                                  	push   0x1b0
10146a35:	8b f9                                           	mov    edi,ecx
10146a37:	e8 74 24 7d 00                                  	call   0x10918eb0
10146a3c:	8b 5c 24 38                                     	mov    ebx,DWORD PTR [esp+0x38]
10146a40:	83 c4 18                                        	add    esp,0x18
10146a43:	85 c0                                           	test   eax,eax
10146a45:	74 32                                           	je     0x10146a79
10146a47:	0f b7 8f 10 01 00 00                            	movzx  ecx,WORD PTR [edi+0x110]
10146a4e:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10146a52:	51                                              	push   ecx
10146a53:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10146a57:	52                                              	push   edx
10146a58:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10146a5c:	51                                              	push   ecx
10146a5d:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10146a61:	53                                              	push   ebx
10146a62:	52                                              	push   edx
10146a63:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10146a67:	51                                              	push   ecx
10146a68:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10146a6c:	52                                              	push   edx
10146a6d:	51                                              	push   ecx
10146a6e:	8b c8                                           	mov    ecx,eax
10146a70:	e8 cb 66 ff ff                                  	call   0x1013d140
10146a75:	8b f0                                           	mov    esi,eax
10146a77:	eb 02                                           	jmp    0x10146a7b
10146a79:	33 f6                                           	xor    esi,esi
10146a7b:	8b 16                                           	mov    edx,DWORD PTR [esi]
10146a7d:	8b 42 5c                                        	mov    eax,DWORD PTR [edx+0x5c]
10146a80:	8b ce                                           	mov    ecx,esi
10146a82:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
10146a86:	ff d0                                           	call   eax
10146a88:	84 c0                                           	test   al,al
10146a8a:	74 13                                           	je     0x10146a9f
10146a8c:	8b 16                                           	mov    edx,DWORD PTR [esi]
10146a8e:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10146a91:	6a 01                                           	push   0x1
10146a93:	8b ce                                           	mov    ecx,esi
10146a95:	ff d0                                           	call   eax
10146a97:	5f                                              	pop    edi
10146a98:	5e                                              	pop    esi
10146a99:	33 c0                                           	xor    eax,eax
10146a9b:	5b                                              	pop    ebx
10146a9c:	c2 1c 00                                        	ret    0x1c
10146a9f:	84 db                                           	test   bl,bl
10146aa1:	74 34                                           	je     0x10146ad7
10146aa3:	8d 4f 54                                        	lea    ecx,[edi+0x54]
10146aa6:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
10146aa9:	3b 41 08                                        	cmp    eax,DWORD PTR [ecx+0x8]
10146aac:	73 14                                           	jae    0x10146ac2
10146aae:	85 c0                                           	test   eax,eax
10146ab0:	8d 50 04                                        	lea    edx,[eax+0x4]
10146ab3:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10146ab6:	74 02                                           	je     0x10146aba
10146ab8:	89 30                                           	mov    DWORD PTR [eax],esi
10146aba:	5f                                              	pop    edi
10146abb:	8b c6                                           	mov    eax,esi
10146abd:	5e                                              	pop    esi
10146abe:	5b                                              	pop    ebx
10146abf:	c2 1c 00                                        	ret    0x1c
10146ac2:	8d 54 24 20                                     	lea    edx,[esp+0x20]
10146ac6:	52                                              	push   edx
10146ac7:	50                                              	push   eax
10146ac8:	e8 b3 79 4a 00                                  	call   0x105ee480
10146acd:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10146ad1:	5f                                              	pop    edi
10146ad2:	5e                                              	pop    esi
10146ad3:	5b                                              	pop    ebx
10146ad4:	c2 1c 00                                        	ret    0x1c
10146ad7:	8d 4f 30                                        	lea    ecx,[edi+0x30]
10146ada:	eb ca                                           	jmp    0x10146aa6
10146adc:	cc                                              	int3
10146add:	cc                                              	int3
10146ade:	cc                                              	int3
10146adf:	cc                                              	int3
