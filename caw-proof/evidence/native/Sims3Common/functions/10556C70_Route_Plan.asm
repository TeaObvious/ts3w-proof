# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10556c70 (Route_Plan)
Paired Ghidra pseudocode: 10556C70_Route_Plan.c
Window: [0x10556c70, 0x10556d50) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10556d50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10556c70: 0f 57 c0 8b 0d 44 89 c7 10 83 ec 48 53 8b 5c 24
10556c80: 50 56 33 f6 3b ce c7 03 02 00 00 00 89 73 04 89
10556c90: 73 0c f3 0f 11 43 10 f3 0f 11 43 14 f3 0f 11 43
10556ca0: 18 f3 0f 11 43 1c 89 73 20 89 73 24 89 73 28 f3
10556cb0: 0f 11 43 2c f3 0f 11 43 30 f3 0f 11 43 34 89 73
10556cc0: 38 89 73 3c 89 73 40 74 3f 8b 44 24 58 55 50 e8
10556cd0: 1c 54 fe ff 8b e8 3b ee 74 36 8b 55 00 8b 42 10
10556ce0: 57 8b cd ff d0 8d 4c 24 10 51 8b cd e8 ef ef ff
10556cf0: ff 8b 55 00 8b f0 8b 42 14 b9 12 00 00 00 8b fb
10556d00: f3 a5 5f 8b cd ff d0 5d 5e 8b c3 5b 83 c4 48 c3
10556d10: 0f 57 c0 5d 89 73 04 89 73 0c 89 73 20 89 73 24
10556d20: 5e c7 03 02 00 00 00 f3 0f 11 43 10 f3 0f 11 43
10556d30: 14 f3 0f 11 43 18 f3 0f 11 43 1c 8b c3 5b 83 c4
10556d40: 48 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10556c70 <.text+0x555c70>:
10556c70:	0f 57 c0                                        	xorps  xmm0,xmm0
10556c73:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10556c79:	83 ec 48                                        	sub    esp,0x48
10556c7c:	53                                              	push   ebx
10556c7d:	8b 5c 24 50                                     	mov    ebx,DWORD PTR [esp+0x50]
10556c81:	56                                              	push   esi
10556c82:	33 f6                                           	xor    esi,esi
10556c84:	3b ce                                           	cmp    ecx,esi
10556c86:	c7 03 02 00 00 00                               	mov    DWORD PTR [ebx],0x2
10556c8c:	89 73 04                                        	mov    DWORD PTR [ebx+0x4],esi
10556c8f:	89 73 0c                                        	mov    DWORD PTR [ebx+0xc],esi
10556c92:	f3 0f 11 43 10                                  	movss  DWORD PTR [ebx+0x10],xmm0
10556c97:	f3 0f 11 43 14                                  	movss  DWORD PTR [ebx+0x14],xmm0
10556c9c:	f3 0f 11 43 18                                  	movss  DWORD PTR [ebx+0x18],xmm0
10556ca1:	f3 0f 11 43 1c                                  	movss  DWORD PTR [ebx+0x1c],xmm0
10556ca6:	89 73 20                                        	mov    DWORD PTR [ebx+0x20],esi
10556ca9:	89 73 24                                        	mov    DWORD PTR [ebx+0x24],esi
10556cac:	89 73 28                                        	mov    DWORD PTR [ebx+0x28],esi
10556caf:	f3 0f 11 43 2c                                  	movss  DWORD PTR [ebx+0x2c],xmm0
10556cb4:	f3 0f 11 43 30                                  	movss  DWORD PTR [ebx+0x30],xmm0
10556cb9:	f3 0f 11 43 34                                  	movss  DWORD PTR [ebx+0x34],xmm0
10556cbe:	89 73 38                                        	mov    DWORD PTR [ebx+0x38],esi
10556cc1:	89 73 3c                                        	mov    DWORD PTR [ebx+0x3c],esi
10556cc4:	89 73 40                                        	mov    DWORD PTR [ebx+0x40],esi
10556cc7:	74 3f                                           	je     0x10556d08
10556cc9:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
10556ccd:	55                                              	push   ebp
10556cce:	50                                              	push   eax
10556ccf:	e8 1c 54 fe ff                                  	call   0x1053c0f0
10556cd4:	8b e8                                           	mov    ebp,eax
10556cd6:	3b ee                                           	cmp    ebp,esi
10556cd8:	74 36                                           	je     0x10556d10
10556cda:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
10556cdd:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10556ce0:	57                                              	push   edi
10556ce1:	8b cd                                           	mov    ecx,ebp
10556ce3:	ff d0                                           	call   eax
10556ce5:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10556ce9:	51                                              	push   ecx
10556cea:	8b cd                                           	mov    ecx,ebp
10556cec:	e8 ef ef ff ff                                  	call   0x10555ce0
10556cf1:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
10556cf4:	8b f0                                           	mov    esi,eax
10556cf6:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10556cf9:	b9 12 00 00 00                                  	mov    ecx,0x12
10556cfe:	8b fb                                           	mov    edi,ebx
10556d00:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10556d02:	5f                                              	pop    edi
10556d03:	8b cd                                           	mov    ecx,ebp
10556d05:	ff d0                                           	call   eax
10556d07:	5d                                              	pop    ebp
10556d08:	5e                                              	pop    esi
10556d09:	8b c3                                           	mov    eax,ebx
10556d0b:	5b                                              	pop    ebx
10556d0c:	83 c4 48                                        	add    esp,0x48
10556d0f:	c3                                              	ret
10556d10:	0f 57 c0                                        	xorps  xmm0,xmm0
10556d13:	5d                                              	pop    ebp
10556d14:	89 73 04                                        	mov    DWORD PTR [ebx+0x4],esi
10556d17:	89 73 0c                                        	mov    DWORD PTR [ebx+0xc],esi
10556d1a:	89 73 20                                        	mov    DWORD PTR [ebx+0x20],esi
10556d1d:	89 73 24                                        	mov    DWORD PTR [ebx+0x24],esi
10556d20:	5e                                              	pop    esi
10556d21:	c7 03 02 00 00 00                               	mov    DWORD PTR [ebx],0x2
10556d27:	f3 0f 11 43 10                                  	movss  DWORD PTR [ebx+0x10],xmm0
10556d2c:	f3 0f 11 43 14                                  	movss  DWORD PTR [ebx+0x14],xmm0
10556d31:	f3 0f 11 43 18                                  	movss  DWORD PTR [ebx+0x18],xmm0
10556d36:	f3 0f 11 43 1c                                  	movss  DWORD PTR [ebx+0x1c],xmm0
10556d3b:	8b c3                                           	mov    eax,ebx
10556d3d:	5b                                              	pop    ebx
10556d3e:	83 c4 48                                        	add    esp,0x48
10556d41:	c3                                              	ret
10556d42:	cc                                              	int3
10556d43:	cc                                              	int3
10556d44:	cc                                              	int3
10556d45:	cc                                              	int3
10556d46:	cc                                              	int3
10556d47:	cc                                              	int3
10556d48:	cc                                              	int3
10556d49:	cc                                              	int3
10556d4a:	cc                                              	int3
10556d4b:	cc                                              	int3
10556d4c:	cc                                              	int3
10556d4d:	cc                                              	int3
10556d4e:	cc                                              	int3
10556d4f:	cc                                              	int3
