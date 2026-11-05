# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e930 (Simulator_ClearReflectionCache)
Paired Ghidra pseudocode: 1055E930_Simulator_ClearReflectionCache.c
Window: [0x1055e930, 0x1055e950) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e930: e8 eb c7 ff ff 8b 10 8b c8 8b 82 78 01 00 00 ff
1055e940: e0 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055e930 <.text+0x55d930>:
1055e930:	e8 eb c7 ff ff                                  	call   0x1055b120
1055e935:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e937:	8b c8                                           	mov    ecx,eax
1055e939:	8b 82 78 01 00 00                               	mov    eax,DWORD PTR [edx+0x178]
1055e93f:	ff e0                                           	jmp    eax
1055e941:	cc                                              	int3
1055e942:	cc                                              	int3
1055e943:	cc                                              	int3
1055e944:	cc                                              	int3
1055e945:	cc                                              	int3
1055e946:	cc                                              	int3
1055e947:	cc                                              	int3
1055e948:	cc                                              	int3
1055e949:	cc                                              	int3
1055e94a:	cc                                              	int3
1055e94b:	cc                                              	int3
1055e94c:	cc                                              	int3
1055e94d:	cc                                              	int3
1055e94e:	cc                                              	int3
1055e94f:	cc                                              	int3
