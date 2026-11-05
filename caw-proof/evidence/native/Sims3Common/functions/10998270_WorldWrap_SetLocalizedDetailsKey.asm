# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998270 (WorldWrap_SetLocalizedDetailsKey)
Paired Ghidra pseudocode: 10998270_WorldWrap_SetLocalizedDetailsKey.c
Window: [0x10998270, 0x10998290) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998270: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
10998280: 50 e8 5a b8 89 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998270 <.text+0x997270>:
10998270:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10998274:	85 c9                                           	test   ecx,ecx
10998276:	74 0e                                           	je     0x10998286
10998278:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1099827c:	85 c0                                           	test   eax,eax
1099827e:	74 06                                           	je     0x10998286
10998280:	50                                              	push   eax
10998281:	e8 5a b8 89 ff                                  	call   0x10233ae0
10998286:	c3                                              	ret
10998287:	cc                                              	int3
10998288:	cc                                              	int3
10998289:	cc                                              	int3
1099828a:	cc                                              	int3
1099828b:	cc                                              	int3
1099828c:	cc                                              	int3
1099828d:	cc                                              	int3
1099828e:	cc                                              	int3
1099828f:	cc                                              	int3
