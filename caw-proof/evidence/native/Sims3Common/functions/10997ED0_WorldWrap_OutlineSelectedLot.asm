# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997ed0 (WorldWrap_OutlineSelectedLot)
Paired Ghidra pseudocode: 10997ED0_WorldWrap_OutlineSelectedLot.c
Window: [0x10997ed0, 0x10997ef0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997ef0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997ed0: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
10997ee0: 50 e8 ba 84 8a ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997ed0 <.text+0x996ed0>:
10997ed0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997ed4:	85 c9                                           	test   ecx,ecx
10997ed6:	74 0e                                           	je     0x10997ee6
10997ed8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10997edc:	85 c0                                           	test   eax,eax
10997ede:	74 06                                           	je     0x10997ee6
10997ee0:	50                                              	push   eax
10997ee1:	e8 ba 84 8a ff                                  	call   0x102403a0
10997ee6:	c3                                              	ret
10997ee7:	cc                                              	int3
10997ee8:	cc                                              	int3
10997ee9:	cc                                              	int3
10997eea:	cc                                              	int3
10997eeb:	cc                                              	int3
10997eec:	cc                                              	int3
10997eed:	cc                                              	int3
10997eee:	cc                                              	int3
10997eef:	cc                                              	int3
