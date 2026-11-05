# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e840 (Simulator_GetCurrentTaskImpl)
Paired Ghidra pseudocode: 1055E840_Simulator_GetCurrentTaskImpl.c
Window: [0x1055e840, 0x1055e860) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e840: e8 db c8 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
1055e850: d0 8b 10 8b c8 8b 42 1c ff e0 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055e840 <.text+0x55d840>:
1055e840:	e8 db c8 ff ff                                  	call   0x1055b120
1055e845:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e847:	8b c8                                           	mov    ecx,eax
1055e849:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
1055e84f:	ff d0                                           	call   eax
1055e851:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e853:	8b c8                                           	mov    ecx,eax
1055e855:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
1055e858:	ff e0                                           	jmp    eax
1055e85a:	cc                                              	int3
1055e85b:	cc                                              	int3
1055e85c:	cc                                              	int3
1055e85d:	cc                                              	int3
1055e85e:	cc                                              	int3
1055e85f:	cc                                              	int3
