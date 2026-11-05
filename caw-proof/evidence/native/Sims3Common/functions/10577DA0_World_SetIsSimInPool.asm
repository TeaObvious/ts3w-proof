# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577da0 (World_SetIsSimInPool)
Paired Ghidra pseudocode: 10577DA0_World_SetIsSimInPool.c
Window: [0x10577da0, 0x10577e20) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577da0: 55 8b ec 83 e4 f0 83 ec 50 8b 45 08 8b 4d 0c f3
10577db0: 0f 10 45 14 33 d2 38 55 10 89 44 24 08 0f 95 c2
10577dc0: 8d 04 24 50 c7 44 24 04 a3 80 88 1c c7 44 24 08
10577dd0: 00 00 00 00 89 4c 24 10 f3 0f 11 44 24 18 89 54
10577de0: 24 14 e8 f9 20 f1 ff 8b 4c 24 08 83 c4 04 85 c9
10577df0: 74 0b 8b 11 8b 12 8d 44 24 10 50 ff d2 8b e5 5d
10577e00: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
10577e10: b8 68 dc ad 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577da0 <.text+0x576da0>:
10577da0:	55                                              	push   ebp
10577da1:	8b ec                                           	mov    ebp,esp
10577da3:	83 e4 f0                                        	and    esp,0xfffffff0
10577da6:	83 ec 50                                        	sub    esp,0x50
10577da9:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10577dac:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10577daf:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
10577db4:	33 d2                                           	xor    edx,edx
10577db6:	38 55 10                                        	cmp    BYTE PTR [ebp+0x10],dl
10577db9:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10577dbd:	0f 95 c2                                        	setne  dl
10577dc0:	8d 04 24                                        	lea    eax,[esp]
10577dc3:	50                                              	push   eax
10577dc4:	c7 44 24 04 a3 80 88 1c                         	mov    DWORD PTR [esp+0x4],0x1c8880a3
10577dcc:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
10577dd4:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
10577dd8:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10577dde:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
10577de2:	e8 f9 20 f1 ff                                  	call   0x10489ee0
10577de7:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10577deb:	83 c4 04                                        	add    esp,0x4
10577dee:	85 c9                                           	test   ecx,ecx
10577df0:	74 0b                                           	je     0x10577dfd
10577df2:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10577df4:	8b 12                                           	mov    edx,DWORD PTR [edx]
10577df6:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10577dfa:	50                                              	push   eax
10577dfb:	ff d2                                           	call   edx
10577dfd:	8b e5                                           	mov    esp,ebp
10577dff:	5d                                              	pop    ebp
10577e00:	c3                                              	ret
10577e01:	cc                                              	int3
10577e02:	cc                                              	int3
10577e03:	cc                                              	int3
10577e04:	cc                                              	int3
10577e05:	cc                                              	int3
10577e06:	cc                                              	int3
10577e07:	cc                                              	int3
10577e08:	cc                                              	int3
10577e09:	cc                                              	int3
10577e0a:	cc                                              	int3
10577e0b:	cc                                              	int3
10577e0c:	cc                                              	int3
10577e0d:	cc                                              	int3
10577e0e:	cc                                              	int3
10577e0f:	cc                                              	int3
10577e10:	b8 68 dc ad 10                                  	mov    eax,0x10addc68
10577e15:	c3                                              	ret
10577e16:	cc                                              	int3
10577e17:	cc                                              	int3
10577e18:	cc                                              	int3
10577e19:	cc                                              	int3
10577e1a:	cc                                              	int3
10577e1b:	cc                                              	int3
10577e1c:	cc                                              	int3
10577e1d:	cc                                              	int3
10577e1e:	cc                                              	int3
10577e1f:	cc                                              	int3
