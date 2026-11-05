# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ff90 (SimBuilderWrap_SetObjectId)
Paired Ghidra pseudocode: 1098FF90_SimBuilderWrap_SetObjectId.c
Window: [0x1098ff90, 0x1098ffb0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ffb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ff90: 8b 44 24 04 8b 4c 24 08 8b 54 24 0c 89 88 f8 01
1098ffa0: 00 00 89 90 fc 01 00 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ff90 <.text+0x98ef90>:
1098ff90:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098ff94:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098ff98:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1098ff9c:	89 88 f8 01 00 00                               	mov    DWORD PTR [eax+0x1f8],ecx
1098ffa2:	89 90 fc 01 00 00                               	mov    DWORD PTR [eax+0x1fc],edx
1098ffa8:	c3                                              	ret
1098ffa9:	cc                                              	int3
1098ffaa:	cc                                              	int3
1098ffab:	cc                                              	int3
1098ffac:	cc                                              	int3
1098ffad:	cc                                              	int3
1098ffae:	cc                                              	int3
1098ffaf:	cc                                              	int3
