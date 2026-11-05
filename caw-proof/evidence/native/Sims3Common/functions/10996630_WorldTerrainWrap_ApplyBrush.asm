# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996630 (WorldTerrainWrap_ApplyBrush)
Paired Ghidra pseudocode: 10996630_WorldTerrainWrap_ApplyBrush.c
Window: [0x10996630, 0x10996650) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996650
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996630: 8b 44 24 04 8b 48 64 8b 49 08 85 c9 74 0a 8b 54
10996640: 24 08 52 e8 88 44 6d ff c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996630 <.text+0x995630>:
10996630:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10996634:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
10996637:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
1099663a:	85 c9                                           	test   ecx,ecx
1099663c:	74 0a                                           	je     0x10996648
1099663e:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10996642:	52                                              	push   edx
10996643:	e8 88 44 6d ff                                  	call   0x1006aad0
10996648:	c3                                              	ret
10996649:	cc                                              	int3
1099664a:	cc                                              	int3
1099664b:	cc                                              	int3
1099664c:	cc                                              	int3
1099664d:	cc                                              	int3
1099664e:	cc                                              	int3
1099664f:	cc                                              	int3
