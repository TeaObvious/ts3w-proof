# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580f40 (World_SetMoonPhaseImpl)
Paired Ghidra pseudocode: 10580F40_World_SetMoonPhaseImpl.c
Window: [0x10580f40, 0x10580f60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580f40: a1 c4 00 c7 10 85 c0 74 11 8b 48 64 85 c9 74 0a
10580f50: 8b 44 24 04 50 e8 66 da c5 ff c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10580f40 <.text+0x57ff40>:
10580f40:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10580f45:	85 c0                                           	test   eax,eax
10580f47:	74 11                                           	je     0x10580f5a
10580f49:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
10580f4c:	85 c9                                           	test   ecx,ecx
10580f4e:	74 0a                                           	je     0x10580f5a
10580f50:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10580f54:	50                                              	push   eax
10580f55:	e8 66 da c5 ff                                  	call   0x101de9c0
10580f5a:	c3                                              	ret
10580f5b:	cc                                              	int3
10580f5c:	cc                                              	int3
10580f5d:	cc                                              	int3
10580f5e:	cc                                              	int3
10580f5f:	cc                                              	int3
