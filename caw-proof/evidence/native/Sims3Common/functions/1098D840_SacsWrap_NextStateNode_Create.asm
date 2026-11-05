# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d840 (SacsWrap_NextStateNode_Create)
Paired Ghidra pseudocode: 1098D840_SacsWrap_NextStateNode_Create.c
Window: [0x1098d840, 0x1098d8a0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d8a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d840: 56 33 f6 56 56 56 56 68 40 70 b9 10 6a 38 e8 5d
1098d850: b6 f8 ff 83 c4 18 3b c6 74 33 c7 00 54 74 ac 10
1098d860: 33 c9 8d 50 04 87 0a 89 70 08 89 70 0c 89 70 10
1098d870: 89 70 14 89 70 20 89 70 24 89 70 1c 89 70 18 89
1098d880: 70 28 89 70 30 c7 00 38 fe b2 10 5e c3 33 c0 5e
1098d890: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d840 <.text+0x98c840>:
1098d840:	56                                              	push   esi
1098d841:	33 f6                                           	xor    esi,esi
1098d843:	56                                              	push   esi
1098d844:	56                                              	push   esi
1098d845:	56                                              	push   esi
1098d846:	56                                              	push   esi
1098d847:	68 40 70 b9 10                                  	push   0x10b97040
1098d84c:	6a 38                                           	push   0x38
1098d84e:	e8 5d b6 f8 ff                                  	call   0x10918eb0
1098d853:	83 c4 18                                        	add    esp,0x18
1098d856:	3b c6                                           	cmp    eax,esi
1098d858:	74 33                                           	je     0x1098d88d
1098d85a:	c7 00 54 74 ac 10                               	mov    DWORD PTR [eax],0x10ac7454
1098d860:	33 c9                                           	xor    ecx,ecx
1098d862:	8d 50 04                                        	lea    edx,[eax+0x4]
1098d865:	87 0a                                           	xchg   DWORD PTR [edx],ecx
1098d867:	89 70 08                                        	mov    DWORD PTR [eax+0x8],esi
1098d86a:	89 70 0c                                        	mov    DWORD PTR [eax+0xc],esi
1098d86d:	89 70 10                                        	mov    DWORD PTR [eax+0x10],esi
1098d870:	89 70 14                                        	mov    DWORD PTR [eax+0x14],esi
1098d873:	89 70 20                                        	mov    DWORD PTR [eax+0x20],esi
1098d876:	89 70 24                                        	mov    DWORD PTR [eax+0x24],esi
1098d879:	89 70 1c                                        	mov    DWORD PTR [eax+0x1c],esi
1098d87c:	89 70 18                                        	mov    DWORD PTR [eax+0x18],esi
1098d87f:	89 70 28                                        	mov    DWORD PTR [eax+0x28],esi
1098d882:	89 70 30                                        	mov    DWORD PTR [eax+0x30],esi
1098d885:	c7 00 38 fe b2 10                               	mov    DWORD PTR [eax],0x10b2fe38
1098d88b:	5e                                              	pop    esi
1098d88c:	c3                                              	ret
1098d88d:	33 c0                                           	xor    eax,eax
1098d88f:	5e                                              	pop    esi
1098d890:	c3                                              	ret
1098d891:	cc                                              	int3
1098d892:	cc                                              	int3
1098d893:	cc                                              	int3
1098d894:	cc                                              	int3
1098d895:	cc                                              	int3
1098d896:	cc                                              	int3
1098d897:	cc                                              	int3
1098d898:	cc                                              	int3
1098d899:	cc                                              	int3
1098d89a:	cc                                              	int3
1098d89b:	cc                                              	int3
1098d89c:	cc                                              	int3
1098d89d:	cc                                              	int3
1098d89e:	cc                                              	int3
1098d89f:	cc                                              	int3
