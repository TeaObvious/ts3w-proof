# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580dc0 (World_ScratchObjectImpl)
Paired Ghidra pseudocode: 10580DC0_World_ScratchObjectImpl.c
Window: [0x10580dc0, 0x10580de0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580de0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580dc0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10580dd0: bc bb ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10580dc0 <.text+0x57fdc0>:
10580dc0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10580dc4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10580dc8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10580dcc:	50                                              	push   eax
10580dcd:	51                                              	push   ecx
10580dce:	52                                              	push   edx
10580dcf:	e8 bc bb ff ff                                  	call   0x1057c990
10580dd4:	83 c4 0c                                        	add    esp,0xc
10580dd7:	c3                                              	ret
10580dd8:	cc                                              	int3
10580dd9:	cc                                              	int3
10580dda:	cc                                              	int3
10580ddb:	cc                                              	int3
10580ddc:	cc                                              	int3
10580ddd:	cc                                              	int3
10580dde:	cc                                              	int3
10580ddf:	cc                                              	int3
