# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10586570 (World_FindPlaceOutsideLot)
Paired Ghidra pseudocode: 10586570_World_FindPlaceOutsideLot.c
Window: [0x10586570, 0x10586590) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10586590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10586570: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10586580: 08 51 52 50 e8 07 fb ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10586570 <.text+0x585570>:
10586570:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10586574:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10586578:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1058657c:	50                                              	push   eax
1058657d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10586581:	51                                              	push   ecx
10586582:	52                                              	push   edx
10586583:	50                                              	push   eax
10586584:	e8 07 fb ff ff                                  	call   0x10586090
10586589:	83 c4 10                                        	add    esp,0x10
1058658c:	c3                                              	ret
1058658d:	cc                                              	int3
1058658e:	cc                                              	int3
1058658f:	cc                                              	int3
