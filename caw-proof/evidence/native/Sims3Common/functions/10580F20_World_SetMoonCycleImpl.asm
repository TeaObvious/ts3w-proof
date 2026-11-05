# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580f20 (World_SetMoonCycleImpl)
Paired Ghidra pseudocode: 10580F20_World_SetMoonCycleImpl.c
Window: [0x10580f20, 0x10580f40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580f40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580f20: a1 c4 00 c7 10 85 c0 74 11 8b 48 64 85 c9 74 0a
10580f30: 8b 44 24 04 50 e8 46 da c5 ff c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10580f20 <.text+0x57ff20>:
10580f20:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10580f25:	85 c0                                           	test   eax,eax
10580f27:	74 11                                           	je     0x10580f3a
10580f29:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
10580f2c:	85 c9                                           	test   ecx,ecx
10580f2e:	74 0a                                           	je     0x10580f3a
10580f30:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10580f34:	50                                              	push   eax
10580f35:	e8 46 da c5 ff                                  	call   0x101de980
10580f3a:	c3                                              	ret
10580f3b:	cc                                              	int3
10580f3c:	cc                                              	int3
10580f3d:	cc                                              	int3
10580f3e:	cc                                              	int3
10580f3f:	cc                                              	int3
