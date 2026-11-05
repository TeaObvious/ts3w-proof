# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579cf0 (World_ParentLotToHouseboatImpl)
Paired Ghidra pseudocode: 10579CF0_World_ParentLotToHouseboatImpl.c
Window: [0x10579cf0, 0x10579d30) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579cf0: 8b 0d c4 00 c7 10 85 c9 74 26 8b 44 24 08 8b 54
10579d00: 24 04 6a 00 50 52 e8 05 d3 cb ff 85 c0 74 11 8b
10579d10: 4c 24 10 8b 54 24 0c 51 52 8b c8 e8 40 3d b0 ff
10579d20: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10579cf0 <.text+0x578cf0>:
10579cf0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10579cf6:	85 c9                                           	test   ecx,ecx
10579cf8:	74 26                                           	je     0x10579d20
10579cfa:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10579cfe:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10579d02:	6a 00                                           	push   0x0
10579d04:	50                                              	push   eax
10579d05:	52                                              	push   edx
10579d06:	e8 05 d3 cb ff                                  	call   0x10237010
10579d0b:	85 c0                                           	test   eax,eax
10579d0d:	74 11                                           	je     0x10579d20
10579d0f:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10579d13:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10579d17:	51                                              	push   ecx
10579d18:	52                                              	push   edx
10579d19:	8b c8                                           	mov    ecx,eax
10579d1b:	e8 40 3d b0 ff                                  	call   0x1007da60
10579d20:	c3                                              	ret
10579d21:	cc                                              	int3
10579d22:	cc                                              	int3
10579d23:	cc                                              	int3
10579d24:	cc                                              	int3
10579d25:	cc                                              	int3
10579d26:	cc                                              	int3
10579d27:	cc                                              	int3
10579d28:	cc                                              	int3
10579d29:	cc                                              	int3
10579d2a:	cc                                              	int3
10579d2b:	cc                                              	int3
10579d2c:	cc                                              	int3
10579d2d:	cc                                              	int3
10579d2e:	cc                                              	int3
10579d2f:	cc                                              	int3
