# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536280 (NameGuidMapService_GetGuidByNameHash)
Paired Ghidra pseudocode: 10536280_NameGuidMapService_GetGuidByNameHash.c
Window: [0x10536280, 0x105362a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105362a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536280: 8b 44 24 08 8b 4c 24 04 50 51 e8 21 0f e6 ff 8b
10536290: c8 e8 3a 0f e6 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536280 <.text+0x535280>:
10536280:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10536284:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10536288:	50                                              	push   eax
10536289:	51                                              	push   ecx
1053628a:	e8 21 0f e6 ff                                  	call   0x103971b0
1053628f:	8b c8                                           	mov    ecx,eax
10536291:	e8 3a 0f e6 ff                                  	call   0x103971d0
10536296:	c3                                              	ret
10536297:	cc                                              	int3
10536298:	cc                                              	int3
10536299:	cc                                              	int3
1053629a:	cc                                              	int3
1053629b:	cc                                              	int3
1053629c:	cc                                              	int3
1053629d:	cc                                              	int3
1053629e:	cc                                              	int3
1053629f:	cc                                              	int3
