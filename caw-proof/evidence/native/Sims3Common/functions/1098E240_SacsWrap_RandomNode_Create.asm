# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e240 (SacsWrap_RandomNode_Create)
Paired Ghidra pseudocode: 1098E240_SacsWrap_RandomNode_Create.c
Window: [0x1098e240, 0x1098e2b0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e2b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e240: 53 33 db 53 53 53 53 68 30 71 b9 10 6a 48 e8 5d
1098e250: ac f8 ff 83 c4 18 3b c3 74 4b c7 00 54 74 ac 10
1098e260: 33 c9 8d 50 04 87 0a 0f 57 c0 89 58 08 89 58 0c
1098e270: 89 58 10 89 58 14 89 58 20 89 58 24 89 58 1c 89
1098e280: 58 18 89 58 28 c7 00 40 03 b3 10 89 58 30 89 58
1098e290: 34 89 58 38 c7 40 3c 24 03 b3 10 88 58 44 f3 0f
1098e2a0: 11 40 40 5b c3 33 c0 5b c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e240 <.text+0x98d240>:
1098e240:	53                                              	push   ebx
1098e241:	33 db                                           	xor    ebx,ebx
1098e243:	53                                              	push   ebx
1098e244:	53                                              	push   ebx
1098e245:	53                                              	push   ebx
1098e246:	53                                              	push   ebx
1098e247:	68 30 71 b9 10                                  	push   0x10b97130
1098e24c:	6a 48                                           	push   0x48
1098e24e:	e8 5d ac f8 ff                                  	call   0x10918eb0
1098e253:	83 c4 18                                        	add    esp,0x18
1098e256:	3b c3                                           	cmp    eax,ebx
1098e258:	74 4b                                           	je     0x1098e2a5
1098e25a:	c7 00 54 74 ac 10                               	mov    DWORD PTR [eax],0x10ac7454
1098e260:	33 c9                                           	xor    ecx,ecx
1098e262:	8d 50 04                                        	lea    edx,[eax+0x4]
1098e265:	87 0a                                           	xchg   DWORD PTR [edx],ecx
1098e267:	0f 57 c0                                        	xorps  xmm0,xmm0
1098e26a:	89 58 08                                        	mov    DWORD PTR [eax+0x8],ebx
1098e26d:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
1098e270:	89 58 10                                        	mov    DWORD PTR [eax+0x10],ebx
1098e273:	89 58 14                                        	mov    DWORD PTR [eax+0x14],ebx
1098e276:	89 58 20                                        	mov    DWORD PTR [eax+0x20],ebx
1098e279:	89 58 24                                        	mov    DWORD PTR [eax+0x24],ebx
1098e27c:	89 58 1c                                        	mov    DWORD PTR [eax+0x1c],ebx
1098e27f:	89 58 18                                        	mov    DWORD PTR [eax+0x18],ebx
1098e282:	89 58 28                                        	mov    DWORD PTR [eax+0x28],ebx
1098e285:	c7 00 40 03 b3 10                               	mov    DWORD PTR [eax],0x10b30340
1098e28b:	89 58 30                                        	mov    DWORD PTR [eax+0x30],ebx
1098e28e:	89 58 34                                        	mov    DWORD PTR [eax+0x34],ebx
1098e291:	89 58 38                                        	mov    DWORD PTR [eax+0x38],ebx
1098e294:	c7 40 3c 24 03 b3 10                            	mov    DWORD PTR [eax+0x3c],0x10b30324
1098e29b:	88 58 44                                        	mov    BYTE PTR [eax+0x44],bl
1098e29e:	f3 0f 11 40 40                                  	movss  DWORD PTR [eax+0x40],xmm0
1098e2a3:	5b                                              	pop    ebx
1098e2a4:	c3                                              	ret
1098e2a5:	33 c0                                           	xor    eax,eax
1098e2a7:	5b                                              	pop    ebx
1098e2a8:	c3                                              	ret
1098e2a9:	cc                                              	int3
1098e2aa:	cc                                              	int3
1098e2ab:	cc                                              	int3
1098e2ac:	cc                                              	int3
1098e2ad:	cc                                              	int3
1098e2ae:	cc                                              	int3
1098e2af:	cc                                              	int3
