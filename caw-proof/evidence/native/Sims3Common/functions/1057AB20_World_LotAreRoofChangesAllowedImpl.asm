# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ab20 (World_LotAreRoofChangesAllowedImpl)
Paired Ghidra pseudocode: 1057AB20_World_LotAreRoofChangesAllowedImpl.c
Window: [0x1057ab20, 0x1057ab50) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ab50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ab20: 8b 0d c4 00 c7 10 85 c9 74 1b 8b 44 24 08 8b 54
1057ab30: 24 04 6a 00 50 52 e8 d5 c4 cb ff 50 e8 ff dd b4
1057ab40: ff 83 c4 04 c3 32 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057ab20 <.text+0x579b20>:
1057ab20:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057ab26:	85 c9                                           	test   ecx,ecx
1057ab28:	74 1b                                           	je     0x1057ab45
1057ab2a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057ab2e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057ab32:	6a 00                                           	push   0x0
1057ab34:	50                                              	push   eax
1057ab35:	52                                              	push   edx
1057ab36:	e8 d5 c4 cb ff                                  	call   0x10237010
1057ab3b:	50                                              	push   eax
1057ab3c:	e8 ff dd b4 ff                                  	call   0x100c8940
1057ab41:	83 c4 04                                        	add    esp,0x4
1057ab44:	c3                                              	ret
1057ab45:	32 c0                                           	xor    al,al
1057ab47:	c3                                              	ret
1057ab48:	cc                                              	int3
1057ab49:	cc                                              	int3
1057ab4a:	cc                                              	int3
1057ab4b:	cc                                              	int3
1057ab4c:	cc                                              	int3
1057ab4d:	cc                                              	int3
1057ab4e:	cc                                              	int3
1057ab4f:	cc                                              	int3
