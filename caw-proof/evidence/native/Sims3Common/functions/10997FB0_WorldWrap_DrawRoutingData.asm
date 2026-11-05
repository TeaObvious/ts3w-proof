# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997fb0 (WorldWrap_DrawRoutingData)
Paired Ghidra pseudocode: 10997FB0_WorldWrap_DrawRoutingData.c
Window: [0x10997fb0, 0x10997fd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997fd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997fb0: 56 8b 74 24 08 85 f6 74 12 6a 01 e8 a0 28 c8 ff
10997fc0: 83 c4 04 8b ce 5e e9 55 b6 89 ff 5e c3 cc cc cc

LINEAR DISASSEMBLY
10997fb0 <.text+0x996fb0>:
10997fb0:	56                                              	push   esi
10997fb1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10997fb5:	85 f6                                           	test   esi,esi
10997fb7:	74 12                                           	je     0x10997fcb
10997fb9:	6a 01                                           	push   0x1
10997fbb:	e8 a0 28 c8 ff                                  	call   0x1061a860
10997fc0:	83 c4 04                                        	add    esp,0x4
10997fc3:	8b ce                                           	mov    ecx,esi
10997fc5:	5e                                              	pop    esi
10997fc6:	e9 55 b6 89 ff                                  	jmp    0x10233620
10997fcb:	5e                                              	pop    esi
10997fcc:	c3                                              	ret
10997fcd:	cc                                              	int3
10997fce:	cc                                              	int3
10997fcf:	cc                                              	int3
