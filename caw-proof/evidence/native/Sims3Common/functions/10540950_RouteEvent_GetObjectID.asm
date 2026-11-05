# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540950 (RouteEvent_GetObjectID)
Paired Ghidra pseudocode: 10540950_RouteEvent_GetObjectID.c
Window: [0x10540950, 0x105409a0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x105409a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540950: 8b 0d 44 89 c7 10 85 c9 56 74 31 8b 44 24 08 50
10540960: e8 eb b7 ff ff 8b f0 85 f6 74 21 8b 16 8b 02 53
10540970: 57 8b ce ff d0 8b 16 8b 42 04 8b 7e 58 8b 5e 5c
10540980: 8b ce ff d0 8b c7 5f 8b d3 5b 5e c3 33 c0 33 d2
10540990: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540950 <.text+0x53f950>:
10540950:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10540956:	85 c9                                           	test   ecx,ecx
10540958:	56                                              	push   esi
10540959:	74 31                                           	je     0x1054098c
1054095b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1054095f:	50                                              	push   eax
10540960:	e8 eb b7 ff ff                                  	call   0x1053c150
10540965:	8b f0                                           	mov    esi,eax
10540967:	85 f6                                           	test   esi,esi
10540969:	74 21                                           	je     0x1054098c
1054096b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054096d:	8b 02                                           	mov    eax,DWORD PTR [edx]
1054096f:	53                                              	push   ebx
10540970:	57                                              	push   edi
10540971:	8b ce                                           	mov    ecx,esi
10540973:	ff d0                                           	call   eax
10540975:	8b 16                                           	mov    edx,DWORD PTR [esi]
10540977:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1054097a:	8b 7e 58                                        	mov    edi,DWORD PTR [esi+0x58]
1054097d:	8b 5e 5c                                        	mov    ebx,DWORD PTR [esi+0x5c]
10540980:	8b ce                                           	mov    ecx,esi
10540982:	ff d0                                           	call   eax
10540984:	8b c7                                           	mov    eax,edi
10540986:	5f                                              	pop    edi
10540987:	8b d3                                           	mov    edx,ebx
10540989:	5b                                              	pop    ebx
1054098a:	5e                                              	pop    esi
1054098b:	c3                                              	ret
1054098c:	33 c0                                           	xor    eax,eax
1054098e:	33 d2                                           	xor    edx,edx
10540990:	5e                                              	pop    esi
10540991:	c3                                              	ret
10540992:	cc                                              	int3
10540993:	cc                                              	int3
10540994:	cc                                              	int3
10540995:	cc                                              	int3
10540996:	cc                                              	int3
10540997:	cc                                              	int3
10540998:	cc                                              	int3
10540999:	cc                                              	int3
1054099a:	cc                                              	int3
1054099b:	cc                                              	int3
1054099c:	cc                                              	int3
1054099d:	cc                                              	int3
1054099e:	cc                                              	int3
1054099f:	cc                                              	int3
