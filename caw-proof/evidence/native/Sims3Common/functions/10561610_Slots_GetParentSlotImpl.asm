# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561610 (Slots_GetParentSlotImpl)
Paired Ghidra pseudocode: 10561610_Slots_GetParentSlotImpl.c
Window: [0x10561610, 0x10561630) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561610: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10561620: 2c fe ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561610 <.text+0x560610>:
10561610:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10561614:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10561618:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1056161c:	50                                              	push   eax
1056161d:	51                                              	push   ecx
1056161e:	52                                              	push   edx
1056161f:	e8 2c fe ff ff                                  	call   0x10561450
10561624:	83 c4 0c                                        	add    esp,0xc
10561627:	c3                                              	ret
10561628:	cc                                              	int3
10561629:	cc                                              	int3
1056162a:	cc                                              	int3
1056162b:	cc                                              	int3
1056162c:	cc                                              	int3
1056162d:	cc                                              	int3
1056162e:	cc                                              	int3
1056162f:	cc                                              	int3
