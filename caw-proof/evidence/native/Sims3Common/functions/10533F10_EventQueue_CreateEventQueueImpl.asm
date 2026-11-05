# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10533f10 (EventQueue_CreateEventQueueImpl)
Paired Ghidra pseudocode: 10533F10_EventQueue_CreateEventQueueImpl.c
Window: [0x10533f10, 0x10533f80) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10533f80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10533f10: 56 57 e8 09 72 02 00 8b f8 8b 07 8b 90 18 01 00
10533f20: 00 8b cf ff d2 33 f6 56 56 56 56 68 2c a5 b1 10
10533f30: 6a 0c e8 79 4f 3e 00 83 c4 18 3b c6 74 12 8b 4c
10533f40: 24 0c 89 70 04 c7 00 20 a5 b1 10 89 48 08 8b f0
10533f50: 8b 16 8b 02 8b ce ff d0 8b 17 8b 82 c8 00 00 00
10533f60: 6a 22 56 8b cf ff d0 5f 5e c3 cc cc cc cc cc cc
10533f70: 8b 44 24 04 c7 00 e8 f3 c2 10 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
10533f10 <.text+0x532f10>:
10533f10:	56                                              	push   esi
10533f11:	57                                              	push   edi
10533f12:	e8 09 72 02 00                                  	call   0x1055b120
10533f17:	8b f8                                           	mov    edi,eax
10533f19:	8b 07                                           	mov    eax,DWORD PTR [edi]
10533f1b:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
10533f21:	8b cf                                           	mov    ecx,edi
10533f23:	ff d2                                           	call   edx
10533f25:	33 f6                                           	xor    esi,esi
10533f27:	56                                              	push   esi
10533f28:	56                                              	push   esi
10533f29:	56                                              	push   esi
10533f2a:	56                                              	push   esi
10533f2b:	68 2c a5 b1 10                                  	push   0x10b1a52c
10533f30:	6a 0c                                           	push   0xc
10533f32:	e8 79 4f 3e 00                                  	call   0x10918eb0
10533f37:	83 c4 18                                        	add    esp,0x18
10533f3a:	3b c6                                           	cmp    eax,esi
10533f3c:	74 12                                           	je     0x10533f50
10533f3e:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10533f42:	89 70 04                                        	mov    DWORD PTR [eax+0x4],esi
10533f45:	c7 00 20 a5 b1 10                               	mov    DWORD PTR [eax],0x10b1a520
10533f4b:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10533f4e:	8b f0                                           	mov    esi,eax
10533f50:	8b 16                                           	mov    edx,DWORD PTR [esi]
10533f52:	8b 02                                           	mov    eax,DWORD PTR [edx]
10533f54:	8b ce                                           	mov    ecx,esi
10533f56:	ff d0                                           	call   eax
10533f58:	8b 17                                           	mov    edx,DWORD PTR [edi]
10533f5a:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
10533f60:	6a 22                                           	push   0x22
10533f62:	56                                              	push   esi
10533f63:	8b cf                                           	mov    ecx,edi
10533f65:	ff d0                                           	call   eax
10533f67:	5f                                              	pop    edi
10533f68:	5e                                              	pop    esi
10533f69:	c3                                              	ret
10533f6a:	cc                                              	int3
10533f6b:	cc                                              	int3
10533f6c:	cc                                              	int3
10533f6d:	cc                                              	int3
10533f6e:	cc                                              	int3
10533f6f:	cc                                              	int3
10533f70:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10533f74:	c7 00 e8 f3 c2 10                               	mov    DWORD PTR [eax],0x10c2f3e8
10533f7a:	c2 04 00                                        	ret    0x4
10533f7d:	cc                                              	int3
10533f7e:	cc                                              	int3
10533f7f:	cc                                              	int3
