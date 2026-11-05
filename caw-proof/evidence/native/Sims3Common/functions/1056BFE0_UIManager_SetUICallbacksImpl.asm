# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056bfe0 (UIManager_SetUICallbacksImpl)
Paired Ghidra pseudocode: 1056BFE0_UIManager_SetUICallbacksImpl.c
Window: [0x1056bfe0, 0x1056c020) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056c020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056bfe0: a1 f8 b1 c7 10 8b 4c 24 04 8b 54 24 08 89 48 28
1056bff0: 8b 4c 24 0c 89 50 2c 8b 54 24 10 89 48 30 8b 4c
1056c000: 24 14 89 50 34 8b 54 24 18 89 48 38 8b 4c 24 1c
1056c010: 89 50 3c 89 48 40 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056bfe0 <.text+0x56afe0>:
1056bfe0:	a1 f8 b1 c7 10                                  	mov    eax,ds:0x10c7b1f8
1056bfe5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056bfe9:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056bfed:	89 48 28                                        	mov    DWORD PTR [eax+0x28],ecx
1056bff0:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1056bff4:	89 50 2c                                        	mov    DWORD PTR [eax+0x2c],edx
1056bff7:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1056bffb:	89 48 30                                        	mov    DWORD PTR [eax+0x30],ecx
1056bffe:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1056c002:	89 50 34                                        	mov    DWORD PTR [eax+0x34],edx
1056c005:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1056c009:	89 48 38                                        	mov    DWORD PTR [eax+0x38],ecx
1056c00c:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1056c010:	89 50 3c                                        	mov    DWORD PTR [eax+0x3c],edx
1056c013:	89 48 40                                        	mov    DWORD PTR [eax+0x40],ecx
1056c016:	c3                                              	ret
1056c017:	cc                                              	int3
1056c018:	cc                                              	int3
1056c019:	cc                                              	int3
1056c01a:	cc                                              	int3
1056c01b:	cc                                              	int3
1056c01c:	cc                                              	int3
1056c01d:	cc                                              	int3
1056c01e:	cc                                              	int3
1056c01f:	cc                                              	int3
