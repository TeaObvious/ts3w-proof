# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d0d0 (SacsWrap_AnimationNode_SetFlag)
Paired Ghidra pseudocode: 1098D0D0_SacsWrap_AnimationNode_SetFlag.c
Window: [0x1098d0d0, 0x1098d0f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d0f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d0d0: 8b 4c 24 04 85 c9 74 0f 8b 44 24 0c 8b 54 24 08
1098d0e0: 50 52 e8 89 9b c5 ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d0d0 <.text+0x98c0d0>:
1098d0d0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d0d4:	85 c9                                           	test   ecx,ecx
1098d0d6:	74 0f                                           	je     0x1098d0e7
1098d0d8:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098d0dc:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1098d0e0:	50                                              	push   eax
1098d0e1:	52                                              	push   edx
1098d0e2:	e8 89 9b c5 ff                                  	call   0x105e6c70
1098d0e7:	c3                                              	ret
1098d0e8:	cc                                              	int3
1098d0e9:	cc                                              	int3
1098d0ea:	cc                                              	int3
1098d0eb:	cc                                              	int3
1098d0ec:	cc                                              	int3
1098d0ed:	cc                                              	int3
1098d0ee:	cc                                              	int3
1098d0ef:	cc                                              	int3
