# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536a30 (Objects_GetRoomId)
Paired Ghidra pseudocode: 10536A30_Objects_GetRoomId.c
Window: [0x10536a30, 0x10536a70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536a70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536a30: e8 6b 37 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
10536a40: c8 e8 6a 41 1f 00 85 c0 74 16 8b 0d 08 04 c7 10
10536a50: 51 8b c8 e8 48 03 1f 00 85 c0 74 04 8b 40 20 c3
10536a60: 83 c8 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536a30 <.text+0x535a30>:
10536a30:	e8 6b 37 1f 00                                  	call   0x1072a1a0
10536a35:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10536a39:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10536a3d:	51                                              	push   ecx
10536a3e:	52                                              	push   edx
10536a3f:	8b c8                                           	mov    ecx,eax
10536a41:	e8 6a 41 1f 00                                  	call   0x1072abb0
10536a46:	85 c0                                           	test   eax,eax
10536a48:	74 16                                           	je     0x10536a60
10536a4a:	8b 0d 08 04 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70408
10536a50:	51                                              	push   ecx
10536a51:	8b c8                                           	mov    ecx,eax
10536a53:	e8 48 03 1f 00                                  	call   0x10726da0
10536a58:	85 c0                                           	test   eax,eax
10536a5a:	74 04                                           	je     0x10536a60
10536a5c:	8b 40 20                                        	mov    eax,DWORD PTR [eax+0x20]
10536a5f:	c3                                              	ret
10536a60:	83 c8 ff                                        	or     eax,0xffffffff
10536a63:	c3                                              	ret
10536a64:	cc                                              	int3
10536a65:	cc                                              	int3
10536a66:	cc                                              	int3
10536a67:	cc                                              	int3
10536a68:	cc                                              	int3
10536a69:	cc                                              	int3
10536a6a:	cc                                              	int3
10536a6b:	cc                                              	int3
10536a6c:	cc                                              	int3
10536a6d:	cc                                              	int3
10536a6e:	cc                                              	int3
10536a6f:	cc                                              	int3
