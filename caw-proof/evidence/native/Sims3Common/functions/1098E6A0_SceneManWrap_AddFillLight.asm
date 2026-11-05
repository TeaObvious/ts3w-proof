# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e6a0 (SceneManWrap_AddFillLight)
Paired Ghidra pseudocode: 1098E6A0_SceneManWrap_AddFillLight.c
Window: [0x1098e6a0, 0x1098e6c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e6c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e6a0: 8b 4c 24 04 e8 87 fd b4 ff 85 c0 74 07 8b c8 e9
1098e6b0: 0c 4e b1 ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e6a0 <.text+0x98d6a0>:
1098e6a0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098e6a4:	e8 87 fd b4 ff                                  	call   0x104de430
1098e6a9:	85 c0                                           	test   eax,eax
1098e6ab:	74 07                                           	je     0x1098e6b4
1098e6ad:	8b c8                                           	mov    ecx,eax
1098e6af:	e9 0c 4e b1 ff                                  	jmp    0x104a34c0
1098e6b4:	c3                                              	ret
1098e6b5:	cc                                              	int3
1098e6b6:	cc                                              	int3
1098e6b7:	cc                                              	int3
1098e6b8:	cc                                              	int3
1098e6b9:	cc                                              	int3
1098e6ba:	cc                                              	int3
1098e6bb:	cc                                              	int3
1098e6bc:	cc                                              	int3
1098e6bd:	cc                                              	int3
1098e6be:	cc                                              	int3
1098e6bf:	cc                                              	int3
