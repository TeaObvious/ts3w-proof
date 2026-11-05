# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580d00 (World_GetScreenSpacePosImpl)
Paired Ghidra pseudocode: 10580D00_World_GetScreenSpacePosImpl.c
Window: [0x10580d00, 0x10580d30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580d00: 8b 44 24 10 8b 4c 24 04 8b 54 24 08 50 83 ec 0c
10580d10: 8b c4 89 08 8b 4c 24 1c 89 50 04 89 48 08 e8 6d
10580d20: b4 ff ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10580d00 <.text+0x57fd00>:
10580d00:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10580d04:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10580d08:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10580d0c:	50                                              	push   eax
10580d0d:	83 ec 0c                                        	sub    esp,0xc
10580d10:	8b c4                                           	mov    eax,esp
10580d12:	89 08                                           	mov    DWORD PTR [eax],ecx
10580d14:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10580d18:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10580d1b:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10580d1e:	e8 6d b4 ff ff                                  	call   0x1057c190
10580d23:	83 c4 10                                        	add    esp,0x10
10580d26:	c3                                              	ret
10580d27:	cc                                              	int3
10580d28:	cc                                              	int3
10580d29:	cc                                              	int3
10580d2a:	cc                                              	int3
10580d2b:	cc                                              	int3
10580d2c:	cc                                              	int3
10580d2d:	cc                                              	int3
10580d2e:	cc                                              	int3
10580d2f:	cc                                              	int3
