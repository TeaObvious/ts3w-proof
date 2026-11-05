# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057cdf0 (World_ForceMoonPhaseImpl)
Paired Ghidra pseudocode: 1057CDF0_World_ForceMoonPhaseImpl.c
Window: [0x1057cdf0, 0x1057ce50) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ce50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057cdf0: a1 c4 00 c7 10 85 c0 74 11 8b 48 64 85 c9 74 0a
1057ce00: 8b 44 24 04 50 e8 e6 1b c6 ff c3 cc cc cc cc cc
1057ce10: a1 c4 00 c7 10 85 c0 74 0c 8b 48 64 85 c9 74 05
1057ce20: e9 7b 1b c6 ff 66 0d ff ff c3 cc cc cc cc cc cc
1057ce30: a1 c4 00 c7 10 85 c0 74 0c 8b 48 64 85 c9 74 05
1057ce40: e9 1b 1d c6 ff 66 0d ff ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057cdf0 <.text+0x57bdf0>:
1057cdf0:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
1057cdf5:	85 c0                                           	test   eax,eax
1057cdf7:	74 11                                           	je     0x1057ce0a
1057cdf9:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
1057cdfc:	85 c9                                           	test   ecx,ecx
1057cdfe:	74 0a                                           	je     0x1057ce0a
1057ce00:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1057ce04:	50                                              	push   eax
1057ce05:	e8 e6 1b c6 ff                                  	call   0x101de9f0
1057ce0a:	c3                                              	ret
1057ce0b:	cc                                              	int3
1057ce0c:	cc                                              	int3
1057ce0d:	cc                                              	int3
1057ce0e:	cc                                              	int3
1057ce0f:	cc                                              	int3
1057ce10:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
1057ce15:	85 c0                                           	test   eax,eax
1057ce17:	74 0c                                           	je     0x1057ce25
1057ce19:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
1057ce1c:	85 c9                                           	test   ecx,ecx
1057ce1e:	74 05                                           	je     0x1057ce25
1057ce20:	e9 7b 1b c6 ff                                  	jmp    0x101de9a0
1057ce25:	66 0d ff ff                                     	or     ax,0xffff
1057ce29:	c3                                              	ret
1057ce2a:	cc                                              	int3
1057ce2b:	cc                                              	int3
1057ce2c:	cc                                              	int3
1057ce2d:	cc                                              	int3
1057ce2e:	cc                                              	int3
1057ce2f:	cc                                              	int3
1057ce30:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
1057ce35:	85 c0                                           	test   eax,eax
1057ce37:	74 0c                                           	je     0x1057ce45
1057ce39:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
1057ce3c:	85 c9                                           	test   ecx,ecx
1057ce3e:	74 05                                           	je     0x1057ce45
1057ce40:	e9 1b 1d c6 ff                                  	jmp    0x101deb60
1057ce45:	66 0d ff ff                                     	or     ax,0xffff
1057ce49:	c3                                              	ret
1057ce4a:	cc                                              	int3
1057ce4b:	cc                                              	int3
1057ce4c:	cc                                              	int3
1057ce4d:	cc                                              	int3
1057ce4e:	cc                                              	int3
1057ce4f:	cc                                              	int3
