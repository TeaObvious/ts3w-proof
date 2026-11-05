# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e470 (SacsWrap_SelectOnDestinationNode_AddCaseTarget)
Paired Ghidra pseudocode: 1098E470_SacsWrap_SelectOnDestinationNode_AddCaseTarget.c
Window: [0x1098e470, 0x1098e490) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e470: 8b 4c 24 04 85 c9 74 17 8b 54 24 08 85 d2 74 0f
1098e480: 8b 44 24 0c 85 c0 74 07 50 52 e8 11 2f c6 ff c3

LINEAR DISASSEMBLY
1098e470 <.text+0x98d470>:
1098e470:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098e474:	85 c9                                           	test   ecx,ecx
1098e476:	74 17                                           	je     0x1098e48f
1098e478:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1098e47c:	85 d2                                           	test   edx,edx
1098e47e:	74 0f                                           	je     0x1098e48f
1098e480:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098e484:	85 c0                                           	test   eax,eax
1098e486:	74 07                                           	je     0x1098e48f
1098e488:	50                                              	push   eax
1098e489:	52                                              	push   edx
1098e48a:	e8 11 2f c6 ff                                  	call   0x105f13a0
1098e48f:	c3                                              	ret
