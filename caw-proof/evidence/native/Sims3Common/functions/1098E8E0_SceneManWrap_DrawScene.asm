# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e8e0 (SceneManWrap_DrawScene)
Paired Ghidra pseudocode: 1098E8E0_SceneManWrap_DrawScene.c
Window: [0x1098e8e0, 0x1098e910) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e8e0: 56 8b 74 24 08 8b ce e8 d4 2c b5 ff 8b ce e8 5d
1098e8f0: b0 b5 ff 8b ce e8 e6 8e b5 ff 8b ce 5e e9 9e fc
1098e900: b4 ff cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e8e0 <.text+0x98d8e0>:
1098e8e0:	56                                              	push   esi
1098e8e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1098e8e5:	8b ce                                           	mov    ecx,esi
1098e8e7:	e8 d4 2c b5 ff                                  	call   0x104e15c0
1098e8ec:	8b ce                                           	mov    ecx,esi
1098e8ee:	e8 5d b0 b5 ff                                  	call   0x104e9950
1098e8f3:	8b ce                                           	mov    ecx,esi
1098e8f5:	e8 e6 8e b5 ff                                  	call   0x104e77e0
1098e8fa:	8b ce                                           	mov    ecx,esi
1098e8fc:	5e                                              	pop    esi
1098e8fd:	e9 9e fc b4 ff                                  	jmp    0x104de5a0
1098e902:	cc                                              	int3
1098e903:	cc                                              	int3
1098e904:	cc                                              	int3
1098e905:	cc                                              	int3
1098e906:	cc                                              	int3
1098e907:	cc                                              	int3
1098e908:	cc                                              	int3
1098e909:	cc                                              	int3
1098e90a:	cc                                              	int3
1098e90b:	cc                                              	int3
1098e90c:	cc                                              	int3
1098e90d:	cc                                              	int3
1098e90e:	cc                                              	int3
1098e90f:	cc                                              	int3
