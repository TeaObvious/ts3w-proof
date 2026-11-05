# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580fe0 (World_GetRoomIdAtPosImpl)
Paired Ghidra pseudocode: 10580FE0_World_GetRoomIdAtPosImpl.c
Window: [0x10580fe0, 0x10581010) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581010
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580fe0: 8b 44 24 10 8b 4c 24 04 8b 54 24 08 50 83 ec 0c
10580ff0: 8b c4 89 08 8b 4c 24 1c 89 50 04 89 48 08 e8 ad
10581000: c1 ff ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10580fe0 <.text+0x57ffe0>:
10580fe0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10580fe4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10580fe8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10580fec:	50                                              	push   eax
10580fed:	83 ec 0c                                        	sub    esp,0xc
10580ff0:	8b c4                                           	mov    eax,esp
10580ff2:	89 08                                           	mov    DWORD PTR [eax],ecx
10580ff4:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10580ff8:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10580ffb:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10580ffe:	e8 ad c1 ff ff                                  	call   0x1057d1b0
10581003:	83 c4 10                                        	add    esp,0x10
10581006:	c3                                              	ret
10581007:	cc                                              	int3
10581008:	cc                                              	int3
10581009:	cc                                              	int3
1058100a:	cc                                              	int3
1058100b:	cc                                              	int3
1058100c:	cc                                              	int3
1058100d:	cc                                              	int3
1058100e:	cc                                              	int3
1058100f:	cc                                              	int3
