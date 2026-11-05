# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105693b0 (Swarm_HasEffectStarted)
Paired Ghidra pseudocode: 105693B0_Swarm_HasEffectStarted.c
Window: [0x105693b0, 0x105693d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105693d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105693b0: 8b 44 24 08 8b 4c 24 04 50 51 e8 01 ff ff ff 83
105693c0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105693b0 <.text+0x5683b0>:
105693b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105693b4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105693b8:	50                                              	push   eax
105693b9:	51                                              	push   ecx
105693ba:	e8 01 ff ff ff                                  	call   0x105692c0
105693bf:	83 c4 08                                        	add    esp,0x8
105693c2:	c3                                              	ret
105693c3:	cc                                              	int3
105693c4:	cc                                              	int3
105693c5:	cc                                              	int3
105693c6:	cc                                              	int3
105693c7:	cc                                              	int3
105693c8:	cc                                              	int3
105693c9:	cc                                              	int3
105693ca:	cc                                              	int3
105693cb:	cc                                              	int3
105693cc:	cc                                              	int3
105693cd:	cc                                              	int3
105693ce:	cc                                              	int3
105693cf:	cc                                              	int3
