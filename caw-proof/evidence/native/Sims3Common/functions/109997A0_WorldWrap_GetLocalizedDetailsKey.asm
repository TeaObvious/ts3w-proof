# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109997a0 (WorldWrap_GetLocalizedDetailsKey)
Paired Ghidra pseudocode: 109997A0_WorldWrap_GetLocalizedDetailsKey.c
Window: [0x109997a0, 0x109997c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109997c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109997a0: 8b 44 24 04 85 c0 74 11 8b 88 98 02 00 00 3b 88
109997b0: 9c 02 00 00 74 03 8b c1 c3 33 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
109997a0 <.text+0x9987a0>:
109997a0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109997a4:	85 c0                                           	test   eax,eax
109997a6:	74 11                                           	je     0x109997b9
109997a8:	8b 88 98 02 00 00                               	mov    ecx,DWORD PTR [eax+0x298]
109997ae:	3b 88 9c 02 00 00                               	cmp    ecx,DWORD PTR [eax+0x29c]
109997b4:	74 03                                           	je     0x109997b9
109997b6:	8b c1                                           	mov    eax,ecx
109997b8:	c3                                              	ret
109997b9:	33 c0                                           	xor    eax,eax
109997bb:	c3                                              	ret
109997bc:	cc                                              	int3
109997bd:	cc                                              	int3
109997be:	cc                                              	int3
109997bf:	cc                                              	int3
