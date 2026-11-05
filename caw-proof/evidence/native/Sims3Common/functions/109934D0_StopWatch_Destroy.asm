# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109934d0 (StopWatch_Destroy)
Paired Ghidra pseudocode: 109934D0_StopWatch_Destroy.c
Window: [0x109934d0, 0x109934f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109934f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109934d0: 8b 44 24 04 85 c0 74 09 89 44 24 04 e9 af 59 f8
109934e0: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109934d0 <.text+0x9924d0>:
109934d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109934d4:	85 c0                                           	test   eax,eax
109934d6:	74 09                                           	je     0x109934e1
109934d8:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
109934dc:	e9 af 59 f8 ff                                  	jmp    0x10918e90
109934e1:	c3                                              	ret
109934e2:	cc                                              	int3
109934e3:	cc                                              	int3
109934e4:	cc                                              	int3
109934e5:	cc                                              	int3
109934e6:	cc                                              	int3
109934e7:	cc                                              	int3
109934e8:	cc                                              	int3
109934e9:	cc                                              	int3
109934ea:	cc                                              	int3
109934eb:	cc                                              	int3
109934ec:	cc                                              	int3
109934ed:	cc                                              	int3
109934ee:	cc                                              	int3
109934ef:	cc                                              	int3
