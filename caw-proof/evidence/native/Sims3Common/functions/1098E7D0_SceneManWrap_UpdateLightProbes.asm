# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e7d0 (SceneManWrap_UpdateLightProbes)
Paired Ghidra pseudocode: 1098E7D0_SceneManWrap_UpdateLightProbes.c
Window: [0x1098e7d0, 0x1098e7f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e7f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e7d0: 8b 4c 24 04 e8 57 fc b4 ff 83 7c 24 08 00 8b c8
1098e7e0: 74 05 e9 99 71 b1 ff e9 94 6c b1 ff cc cc cc cc

LINEAR DISASSEMBLY
1098e7d0 <.text+0x98d7d0>:
1098e7d0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098e7d4:	e8 57 fc b4 ff                                  	call   0x104de430
1098e7d9:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1098e7de:	8b c8                                           	mov    ecx,eax
1098e7e0:	74 05                                           	je     0x1098e7e7
1098e7e2:	e9 99 71 b1 ff                                  	jmp    0x104a5980
1098e7e7:	e9 94 6c b1 ff                                  	jmp    0x104a5480
1098e7ec:	cc                                              	int3
1098e7ed:	cc                                              	int3
1098e7ee:	cc                                              	int3
1098e7ef:	cc                                              	int3
