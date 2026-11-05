# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d760 (SacsWrap_ParameterDefinition_Create)
Paired Ghidra pseudocode: 1098D760_SacsWrap_ParameterDefinition_Create.c
Window: [0x1098d760, 0x1098d7c0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d7c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d760: 56 33 f6 56 56 56 56 68 20 70 b9 10 6a 40 e8 3d
1098d770: b7 f8 ff 83 c4 18 3b c6 74 3c c7 00 54 74 ac 10
1098d780: 33 c9 8d 50 04 87 0a 89 70 08 89 70 0c 89 70 10
1098d790: 89 70 14 89 70 20 89 70 24 89 70 1c 89 70 18 89
1098d7a0: 70 28 89 70 2c 89 70 30 89 70 34 89 70 38 c7 00
1098d7b0: a4 fa b2 10 5e c3 33 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d760 <.text+0x98c760>:
1098d760:	56                                              	push   esi
1098d761:	33 f6                                           	xor    esi,esi
1098d763:	56                                              	push   esi
1098d764:	56                                              	push   esi
1098d765:	56                                              	push   esi
1098d766:	56                                              	push   esi
1098d767:	68 20 70 b9 10                                  	push   0x10b97020
1098d76c:	6a 40                                           	push   0x40
1098d76e:	e8 3d b7 f8 ff                                  	call   0x10918eb0
1098d773:	83 c4 18                                        	add    esp,0x18
1098d776:	3b c6                                           	cmp    eax,esi
1098d778:	74 3c                                           	je     0x1098d7b6
1098d77a:	c7 00 54 74 ac 10                               	mov    DWORD PTR [eax],0x10ac7454
1098d780:	33 c9                                           	xor    ecx,ecx
1098d782:	8d 50 04                                        	lea    edx,[eax+0x4]
1098d785:	87 0a                                           	xchg   DWORD PTR [edx],ecx
1098d787:	89 70 08                                        	mov    DWORD PTR [eax+0x8],esi
1098d78a:	89 70 0c                                        	mov    DWORD PTR [eax+0xc],esi
1098d78d:	89 70 10                                        	mov    DWORD PTR [eax+0x10],esi
1098d790:	89 70 14                                        	mov    DWORD PTR [eax+0x14],esi
1098d793:	89 70 20                                        	mov    DWORD PTR [eax+0x20],esi
1098d796:	89 70 24                                        	mov    DWORD PTR [eax+0x24],esi
1098d799:	89 70 1c                                        	mov    DWORD PTR [eax+0x1c],esi
1098d79c:	89 70 18                                        	mov    DWORD PTR [eax+0x18],esi
1098d79f:	89 70 28                                        	mov    DWORD PTR [eax+0x28],esi
1098d7a2:	89 70 2c                                        	mov    DWORD PTR [eax+0x2c],esi
1098d7a5:	89 70 30                                        	mov    DWORD PTR [eax+0x30],esi
1098d7a8:	89 70 34                                        	mov    DWORD PTR [eax+0x34],esi
1098d7ab:	89 70 38                                        	mov    DWORD PTR [eax+0x38],esi
1098d7ae:	c7 00 a4 fa b2 10                               	mov    DWORD PTR [eax],0x10b2faa4
1098d7b4:	5e                                              	pop    esi
1098d7b5:	c3                                              	ret
1098d7b6:	33 c0                                           	xor    eax,eax
1098d7b8:	5e                                              	pop    esi
1098d7b9:	c3                                              	ret
1098d7ba:	cc                                              	int3
1098d7bb:	cc                                              	int3
1098d7bc:	cc                                              	int3
1098d7bd:	cc                                              	int3
1098d7be:	cc                                              	int3
1098d7bf:	cc                                              	int3
