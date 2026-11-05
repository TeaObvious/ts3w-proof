# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be070 (UserToolUtils_TryBuyingStoreFeaturedItemImpl)
Paired Ghidra pseudocode: 102BE070_UserToolUtils_TryBuyingStoreFeaturedItemImpl.c
Window: [0x102be070, 0x102be0b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be0b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be070: 8b 44 24 08 8b 54 24 04 8b 0d 34 05 c7 10 50 52
102be080: e8 9b 7a fa ff 85 c0 74 17 8b 0d 50 e1 c8 10 85
102be090: c9 74 0d 8b 50 48 52 83 c0 58 50 e8 20 3c 50 00
102be0a0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102be070 <.text+0x2bd070>:
102be070:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
102be074:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
102be078:	8b 0d 34 05 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70534
102be07e:	50                                              	push   eax
102be07f:	52                                              	push   edx
102be080:	e8 9b 7a fa ff                                  	call   0x10265b20
102be085:	85 c0                                           	test   eax,eax
102be087:	74 17                                           	je     0x102be0a0
102be089:	8b 0d 50 e1 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8e150
102be08f:	85 c9                                           	test   ecx,ecx
102be091:	74 0d                                           	je     0x102be0a0
102be093:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
102be096:	52                                              	push   edx
102be097:	83 c0 58                                        	add    eax,0x58
102be09a:	50                                              	push   eax
102be09b:	e8 20 3c 50 00                                  	call   0x107c1cc0
102be0a0:	c3                                              	ret
102be0a1:	cc                                              	int3
102be0a2:	cc                                              	int3
102be0a3:	cc                                              	int3
102be0a4:	cc                                              	int3
102be0a5:	cc                                              	int3
102be0a6:	cc                                              	int3
102be0a7:	cc                                              	int3
102be0a8:	cc                                              	int3
102be0a9:	cc                                              	int3
102be0aa:	cc                                              	int3
102be0ab:	cc                                              	int3
102be0ac:	cc                                              	int3
102be0ad:	cc                                              	int3
102be0ae:	cc                                              	int3
102be0af:	cc                                              	int3
