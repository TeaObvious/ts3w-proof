# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581ec0 (World_RandomizeCloudinessImmediately)
Paired Ghidra pseudocode: 10581EC0_World_RandomizeCloudinessImmediately.c
Window: [0x10581ec0, 0x10581f40) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581f40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581ec0: 57 e8 1a 17 30 00 8b f8 85 ff 74 6e 56 6a 00 6a
10581ed0: 00 6a 00 6a 00 68 fc 1a b2 10 6a 18 e8 cf 6f 39
10581ee0: 00 83 c4 18 85 c0 74 4e c7 40 10 00 00 00 00 c7
10581ef0: 00 30 0b b6 10 33 c9 8d 50 04 87 0a c7 00 30 0b
10581f00: b6 10 8b 10 8b f0 8b c8 8b 42 04 ff d0 f3 0f 10
10581f10: 44 24 0c 6a 00 6a 00 f3 0f 11 46 08 8b 17 8b 42
10581f20: 1c 56 68 be 44 e8 0d 8b cf ff d0 8b 16 8b 42 08
10581f30: 8b ce 5e 5f ff e0 33 f6 eb d3 5f c3 cc cc cc cc

LINEAR DISASSEMBLY
10581ec0 <.text+0x580ec0>:
10581ec0:	57                                              	push   edi
10581ec1:	e8 1a 17 30 00                                  	call   0x108835e0
10581ec6:	8b f8                                           	mov    edi,eax
10581ec8:	85 ff                                           	test   edi,edi
10581eca:	74 6e                                           	je     0x10581f3a
10581ecc:	56                                              	push   esi
10581ecd:	6a 00                                           	push   0x0
10581ecf:	6a 00                                           	push   0x0
10581ed1:	6a 00                                           	push   0x0
10581ed3:	6a 00                                           	push   0x0
10581ed5:	68 fc 1a b2 10                                  	push   0x10b21afc
10581eda:	6a 18                                           	push   0x18
10581edc:	e8 cf 6f 39 00                                  	call   0x10918eb0
10581ee1:	83 c4 18                                        	add    esp,0x18
10581ee4:	85 c0                                           	test   eax,eax
10581ee6:	74 4e                                           	je     0x10581f36
10581ee8:	c7 40 10 00 00 00 00                            	mov    DWORD PTR [eax+0x10],0x0
10581eef:	c7 00 30 0b b6 10                               	mov    DWORD PTR [eax],0x10b60b30
10581ef5:	33 c9                                           	xor    ecx,ecx
10581ef7:	8d 50 04                                        	lea    edx,[eax+0x4]
10581efa:	87 0a                                           	xchg   DWORD PTR [edx],ecx
10581efc:	c7 00 30 0b b6 10                               	mov    DWORD PTR [eax],0x10b60b30
10581f02:	8b 10                                           	mov    edx,DWORD PTR [eax]
10581f04:	8b f0                                           	mov    esi,eax
10581f06:	8b c8                                           	mov    ecx,eax
10581f08:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10581f0b:	ff d0                                           	call   eax
10581f0d:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
10581f13:	6a 00                                           	push   0x0
10581f15:	6a 00                                           	push   0x0
10581f17:	f3 0f 11 46 08                                  	movss  DWORD PTR [esi+0x8],xmm0
10581f1c:	8b 17                                           	mov    edx,DWORD PTR [edi]
10581f1e:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
10581f21:	56                                              	push   esi
10581f22:	68 be 44 e8 0d                                  	push   0xde844be
10581f27:	8b cf                                           	mov    ecx,edi
10581f29:	ff d0                                           	call   eax
10581f2b:	8b 16                                           	mov    edx,DWORD PTR [esi]
10581f2d:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10581f30:	8b ce                                           	mov    ecx,esi
10581f32:	5e                                              	pop    esi
10581f33:	5f                                              	pop    edi
10581f34:	ff e0                                           	jmp    eax
10581f36:	33 f6                                           	xor    esi,esi
10581f38:	eb d3                                           	jmp    0x10581f0d
10581f3a:	5f                                              	pop    edi
10581f3b:	c3                                              	ret
10581f3c:	cc                                              	int3
10581f3d:	cc                                              	int3
10581f3e:	cc                                              	int3
10581f3f:	cc                                              	int3
