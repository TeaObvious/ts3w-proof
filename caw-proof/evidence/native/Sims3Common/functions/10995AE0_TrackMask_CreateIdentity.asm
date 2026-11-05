# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995ae0 (TrackMask_CreateIdentity)
Paired Ghidra pseudocode: 10995AE0_TrackMask_CreateIdentity.c
Window: [0x10995ae0, 0x10995b20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995b20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995ae0: 6a 00 6a 00 6a 00 6a 00 68 a0 79 b9 10 6a 40 e8
10995af0: bc 33 f8 ff 83 c4 18 85 c0 74 1a 56 8b c8 e8 5d
10995b00: 37 9e ff 8b f0 85 f6 74 0a 8b 06 8b 10 8b ce ff
10995b10: d2 8b c6 5e c3 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995ae0 <.text+0x994ae0>:
10995ae0:	6a 00                                           	push   0x0
10995ae2:	6a 00                                           	push   0x0
10995ae4:	6a 00                                           	push   0x0
10995ae6:	6a 00                                           	push   0x0
10995ae8:	68 a0 79 b9 10                                  	push   0x10b979a0
10995aed:	6a 40                                           	push   0x40
10995aef:	e8 bc 33 f8 ff                                  	call   0x10918eb0
10995af4:	83 c4 18                                        	add    esp,0x18
10995af7:	85 c0                                           	test   eax,eax
10995af9:	74 1a                                           	je     0x10995b15
10995afb:	56                                              	push   esi
10995afc:	8b c8                                           	mov    ecx,eax
10995afe:	e8 5d 37 9e ff                                  	call   0x10379260
10995b03:	8b f0                                           	mov    esi,eax
10995b05:	85 f6                                           	test   esi,esi
10995b07:	74 0a                                           	je     0x10995b13
10995b09:	8b 06                                           	mov    eax,DWORD PTR [esi]
10995b0b:	8b 10                                           	mov    edx,DWORD PTR [eax]
10995b0d:	8b ce                                           	mov    ecx,esi
10995b0f:	ff d2                                           	call   edx
10995b11:	8b c6                                           	mov    eax,esi
10995b13:	5e                                              	pop    esi
10995b14:	c3                                              	ret
10995b15:	33 c0                                           	xor    eax,eax
10995b17:	c3                                              	ret
10995b18:	cc                                              	int3
10995b19:	cc                                              	int3
10995b1a:	cc                                              	int3
10995b1b:	cc                                              	int3
10995b1c:	cc                                              	int3
10995b1d:	cc                                              	int3
10995b1e:	cc                                              	int3
10995b1f:	cc                                              	int3
