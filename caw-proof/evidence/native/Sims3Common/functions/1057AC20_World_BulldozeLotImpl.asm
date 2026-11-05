# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ac20 (World_BulldozeLotImpl)
Paired Ghidra pseudocode: 1057AC20_World_BulldozeLotImpl.c
Window: [0x1057ac20, 0x1057ac40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ac40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ac20: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
1057ac30: 08 51 52 50 e8 a7 d6 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
1057ac20 <.text+0x579c20>:
1057ac20:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1057ac24:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057ac28:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057ac2c:	50                                              	push   eax
1057ac2d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057ac31:	51                                              	push   ecx
1057ac32:	52                                              	push   edx
1057ac33:	50                                              	push   eax
1057ac34:	e8 a7 d6 ff ff                                  	call   0x105782e0
1057ac39:	83 c4 10                                        	add    esp,0x10
1057ac3c:	c3                                              	ret
1057ac3d:	cc                                              	int3
1057ac3e:	cc                                              	int3
1057ac3f:	cc                                              	int3
