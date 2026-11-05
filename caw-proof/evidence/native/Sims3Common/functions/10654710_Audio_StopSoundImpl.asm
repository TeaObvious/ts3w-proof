# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10654710 (Audio_StopSoundImpl)
Paired Ghidra pseudocode: 10654710_Audio_StopSoundImpl.c
Window: [0x10654710, 0x10654730) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10654730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10654710: 8b 44 24 04 6a 00 50 e8 44 5b c5 ff 83 c4 08 b0
10654720: 01 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10654710 <.text+0x653710>:
10654710:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10654714:	6a 00                                           	push   0x0
10654716:	50                                              	push   eax
10654717:	e8 44 5b c5 ff                                  	call   0x102aa260
1065471c:	83 c4 08                                        	add    esp,0x8
1065471f:	b0 01                                           	mov    al,0x1
10654721:	c3                                              	ret
10654722:	cc                                              	int3
10654723:	cc                                              	int3
10654724:	cc                                              	int3
10654725:	cc                                              	int3
10654726:	cc                                              	int3
10654727:	cc                                              	int3
10654728:	cc                                              	int3
10654729:	cc                                              	int3
1065472a:	cc                                              	int3
1065472b:	cc                                              	int3
1065472c:	cc                                              	int3
1065472d:	cc                                              	int3
1065472e:	cc                                              	int3
1065472f:	cc                                              	int3
