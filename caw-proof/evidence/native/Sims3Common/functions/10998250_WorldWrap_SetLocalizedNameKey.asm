# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998250 (WorldWrap_SetLocalizedNameKey)
Paired Ghidra pseudocode: 10998250_WorldWrap_SetLocalizedNameKey.c
Window: [0x10998250, 0x10998270) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998270
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998250: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
10998260: 50 e8 5a b8 89 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998250 <.text+0x997250>:
10998250:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10998254:	85 c9                                           	test   ecx,ecx
10998256:	74 0e                                           	je     0x10998266
10998258:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1099825c:	85 c0                                           	test   eax,eax
1099825e:	74 06                                           	je     0x10998266
10998260:	50                                              	push   eax
10998261:	e8 5a b8 89 ff                                  	call   0x10233ac0
10998266:	c3                                              	ret
10998267:	cc                                              	int3
10998268:	cc                                              	int3
10998269:	cc                                              	int3
1099826a:	cc                                              	int3
1099826b:	cc                                              	int3
1099826c:	cc                                              	int3
1099826d:	cc                                              	int3
1099826e:	cc                                              	int3
1099826f:	cc                                              	int3
