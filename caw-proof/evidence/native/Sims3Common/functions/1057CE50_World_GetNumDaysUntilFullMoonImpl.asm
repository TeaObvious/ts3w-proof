# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ce50 (World_GetNumDaysUntilFullMoonImpl)
Paired Ghidra pseudocode: 1057CE50_World_GetNumDaysUntilFullMoonImpl.c
Window: [0x1057ce50, 0x1057ce70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ce70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ce50: a1 c4 00 c7 10 85 c0 74 0c 8b 48 64 85 c9 74 05
1057ce60: e9 2b 23 c6 ff 83 c8 ff c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057ce50 <.text+0x57be50>:
1057ce50:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
1057ce55:	85 c0                                           	test   eax,eax
1057ce57:	74 0c                                           	je     0x1057ce65
1057ce59:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
1057ce5c:	85 c9                                           	test   ecx,ecx
1057ce5e:	74 05                                           	je     0x1057ce65
1057ce60:	e9 2b 23 c6 ff                                  	jmp    0x101df190
1057ce65:	83 c8 ff                                        	or     eax,0xffffffff
1057ce68:	c3                                              	ret
1057ce69:	cc                                              	int3
1057ce6a:	cc                                              	int3
1057ce6b:	cc                                              	int3
1057ce6c:	cc                                              	int3
1057ce6d:	cc                                              	int3
1057ce6e:	cc                                              	int3
1057ce6f:	cc                                              	int3
