# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10533db0 (EventQueue_ReleaseEventQueueImpl)
Paired Ghidra pseudocode: 10533DB0_EventQueue_ReleaseEventQueueImpl.c
Window: [0x10533db0, 0x10533e10) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10533e10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10533db0: 56 e8 6a 73 02 00 8b f0 85 f6 74 42 8b 06 8b 90
10533dc0: 18 01 00 00 8b ce ff d2 8b 44 24 08 8b c8 81 e1
10533dd0: 00 00 00 ff 81 f9 00 00 00 22 75 22 8b 16 50 8b
10533de0: 82 d8 00 00 00 8b ce ff d0 85 c0 74 11 8b 10 c7
10533df0: 40 08 00 00 00 00 8b c8 8b 42 04 5e ff e0 5e c3
10533e00: b8 f4 a4 b1 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10533db0 <.text+0x532db0>:
10533db0:	56                                              	push   esi
10533db1:	e8 6a 73 02 00                                  	call   0x1055b120
10533db6:	8b f0                                           	mov    esi,eax
10533db8:	85 f6                                           	test   esi,esi
10533dba:	74 42                                           	je     0x10533dfe
10533dbc:	8b 06                                           	mov    eax,DWORD PTR [esi]
10533dbe:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
10533dc4:	8b ce                                           	mov    ecx,esi
10533dc6:	ff d2                                           	call   edx
10533dc8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10533dcc:	8b c8                                           	mov    ecx,eax
10533dce:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
10533dd4:	81 f9 00 00 00 22                               	cmp    ecx,0x22000000
10533dda:	75 22                                           	jne    0x10533dfe
10533ddc:	8b 16                                           	mov    edx,DWORD PTR [esi]
10533dde:	50                                              	push   eax
10533ddf:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
10533de5:	8b ce                                           	mov    ecx,esi
10533de7:	ff d0                                           	call   eax
10533de9:	85 c0                                           	test   eax,eax
10533deb:	74 11                                           	je     0x10533dfe
10533ded:	8b 10                                           	mov    edx,DWORD PTR [eax]
10533def:	c7 40 08 00 00 00 00                            	mov    DWORD PTR [eax+0x8],0x0
10533df6:	8b c8                                           	mov    ecx,eax
10533df8:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10533dfb:	5e                                              	pop    esi
10533dfc:	ff e0                                           	jmp    eax
10533dfe:	5e                                              	pop    esi
10533dff:	c3                                              	ret
10533e00:	b8 f4 a4 b1 10                                  	mov    eax,0x10b1a4f4
10533e05:	c3                                              	ret
10533e06:	cc                                              	int3
10533e07:	cc                                              	int3
10533e08:	cc                                              	int3
10533e09:	cc                                              	int3
10533e0a:	cc                                              	int3
10533e0b:	cc                                              	int3
10533e0c:	cc                                              	int3
10533e0d:	cc                                              	int3
10533e0e:	cc                                              	int3
10533e0f:	cc                                              	int3
