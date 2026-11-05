# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054a360 (RouteManager_SetPortalAgeGenderFlags)
Paired Ghidra pseudocode: 1054A360_RouteManager_SetPortalAgeGenderFlags.c
Window: [0x1054a360, 0x1054a380) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054a380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054a360: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
1054a370: 2c f5 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1054a360 <.text+0x549360>:
1054a360:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1054a364:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1054a368:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1054a36c:	50                                              	push   eax
1054a36d:	51                                              	push   ecx
1054a36e:	52                                              	push   edx
1054a36f:	e8 2c f5 ff ff                                  	call   0x105498a0
1054a374:	83 c4 0c                                        	add    esp,0xc
1054a377:	c3                                              	ret
1054a378:	cc                                              	int3
1054a379:	cc                                              	int3
1054a37a:	cc                                              	int3
1054a37b:	cc                                              	int3
1054a37c:	cc                                              	int3
1054a37d:	cc                                              	int3
1054a37e:	cc                                              	int3
1054a37f:	cc                                              	int3
