# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561a80 (Slots_GetRoutingSlotNamesImpl)
Paired Ghidra pseudocode: 10561A80_Slots_GetRoutingSlotNamesImpl.c
Window: [0x10561a80, 0x10561aa0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561aa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561a80: 8b 44 24 08 8b 4c 24 04 50 51 e8 f1 fc ff ff 83
10561a90: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561a80 <.text+0x560a80>:
10561a80:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561a84:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10561a88:	50                                              	push   eax
10561a89:	51                                              	push   ecx
10561a8a:	e8 f1 fc ff ff                                  	call   0x10561780
10561a8f:	83 c4 08                                        	add    esp,0x8
10561a92:	c3                                              	ret
10561a93:	cc                                              	int3
10561a94:	cc                                              	int3
10561a95:	cc                                              	int3
10561a96:	cc                                              	int3
10561a97:	cc                                              	int3
10561a98:	cc                                              	int3
10561a99:	cc                                              	int3
10561a9a:	cc                                              	int3
10561a9b:	cc                                              	int3
10561a9c:	cc                                              	int3
10561a9d:	cc                                              	int3
10561a9e:	cc                                              	int3
10561a9f:	cc                                              	int3
