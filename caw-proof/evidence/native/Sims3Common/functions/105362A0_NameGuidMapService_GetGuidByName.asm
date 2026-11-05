# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105362a0 (NameGuidMapService_GetGuidByName)
Paired Ghidra pseudocode: 105362A0_NameGuidMapService_GetGuidByName.c
Window: [0x105362a0, 0x105362d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105362d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105362a0: e8 7b 4e 02 00 8b 4c 24 04 8b 10 8b 52 58 51 8b
105362b0: c8 ff d2 50 e8 f7 0e e6 ff 8b c8 e8 70 0f e6 ff
105362c0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105362a0 <.text+0x5352a0>:
105362a0:	e8 7b 4e 02 00                                  	call   0x1055b120
105362a5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105362a9:	8b 10                                           	mov    edx,DWORD PTR [eax]
105362ab:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
105362ae:	51                                              	push   ecx
105362af:	8b c8                                           	mov    ecx,eax
105362b1:	ff d2                                           	call   edx
105362b3:	50                                              	push   eax
105362b4:	e8 f7 0e e6 ff                                  	call   0x103971b0
105362b9:	8b c8                                           	mov    ecx,eax
105362bb:	e8 70 0f e6 ff                                  	call   0x10397230
105362c0:	c3                                              	ret
105362c1:	cc                                              	int3
105362c2:	cc                                              	int3
105362c3:	cc                                              	int3
105362c4:	cc                                              	int3
105362c5:	cc                                              	int3
105362c6:	cc                                              	int3
105362c7:	cc                                              	int3
105362c8:	cc                                              	int3
105362c9:	cc                                              	int3
105362ca:	cc                                              	int3
105362cb:	cc                                              	int3
105362cc:	cc                                              	int3
105362cd:	cc                                              	int3
105362ce:	cc                                              	int3
105362cf:	cc                                              	int3
