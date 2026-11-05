# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d390 (SacsWrap_SlotSetupBuilder_AddNamespaceSlotSuffix)
Paired Ghidra pseudocode: 1098D390_SacsWrap_SlotSetupBuilder_AddNamespaceSlotSuffix.c
Window: [0x1098d390, 0x1098d3b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d3b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d390: 8b 4c 24 04 85 c9 74 0f 8b 44 24 0c 8b 54 24 08
1098d3a0: 50 52 e8 59 f5 ff ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d390 <.text+0x98c390>:
1098d390:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d394:	85 c9                                           	test   ecx,ecx
1098d396:	74 0f                                           	je     0x1098d3a7
1098d398:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098d39c:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1098d3a0:	50                                              	push   eax
1098d3a1:	52                                              	push   edx
1098d3a2:	e8 59 f5 ff ff                                  	call   0x1098c900
1098d3a7:	c3                                              	ret
1098d3a8:	cc                                              	int3
1098d3a9:	cc                                              	int3
1098d3aa:	cc                                              	int3
1098d3ab:	cc                                              	int3
1098d3ac:	cc                                              	int3
1098d3ad:	cc                                              	int3
1098d3ae:	cc                                              	int3
1098d3af:	cc                                              	int3
