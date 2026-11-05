# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10585fc0 (World_FindPondRepresentativePositions)
Paired Ghidra pseudocode: 10585FC0_World_FindPondRepresentativePositions.c
Window: [0x10585fc0, 0x10585fe0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10585fe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10585fc0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10585fd0: dc f6 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10585fc0 <.text+0x584fc0>:
10585fc0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10585fc4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10585fc8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10585fcc:	50                                              	push   eax
10585fcd:	51                                              	push   ecx
10585fce:	52                                              	push   edx
10585fcf:	e8 dc f6 ff ff                                  	call   0x105856b0
10585fd4:	83 c4 0c                                        	add    esp,0xc
10585fd7:	c3                                              	ret
10585fd8:	cc                                              	int3
10585fd9:	cc                                              	int3
10585fda:	cc                                              	int3
10585fdb:	cc                                              	int3
10585fdc:	cc                                              	int3
10585fdd:	cc                                              	int3
10585fde:	cc                                              	int3
10585fdf:	cc                                              	int3
