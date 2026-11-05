# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e860 (Simulator_GetTickCountImpl)
Paired Ghidra pseudocode: 1055E860_Simulator_GetTickCountImpl.c
Window: [0x1055e860, 0x1055e880) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e880
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e860: e8 bb c8 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
1055e870: d0 8b 10 8b c8 8b 42 2c ff e0 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055e860 <.text+0x55d860>:
1055e860:	e8 bb c8 ff ff                                  	call   0x1055b120
1055e865:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e867:	8b c8                                           	mov    ecx,eax
1055e869:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
1055e86f:	ff d0                                           	call   eax
1055e871:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e873:	8b c8                                           	mov    ecx,eax
1055e875:	8b 42 2c                                        	mov    eax,DWORD PTR [edx+0x2c]
1055e878:	ff e0                                           	jmp    eax
1055e87a:	cc                                              	int3
1055e87b:	cc                                              	int3
1055e87c:	cc                                              	int3
1055e87d:	cc                                              	int3
1055e87e:	cc                                              	int3
1055e87f:	cc                                              	int3
