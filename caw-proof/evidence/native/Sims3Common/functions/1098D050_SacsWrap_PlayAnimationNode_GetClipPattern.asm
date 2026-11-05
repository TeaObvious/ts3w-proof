# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d050 (SacsWrap_PlayAnimationNode_GetClipPattern)
Paired Ghidra pseudocode: 1098D050_SacsWrap_PlayAnimationNode_GetClipPattern.c
Window: [0x1098d050, 0x1098d070) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d050: 8b 4c 24 04 85 c9 74 0b 8b 44 24 08 50 e8 9e a5
1098d060: c5 ff c3 33 c0 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d050 <.text+0x98c050>:
1098d050:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d054:	85 c9                                           	test   ecx,ecx
1098d056:	74 0b                                           	je     0x1098d063
1098d058:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098d05c:	50                                              	push   eax
1098d05d:	e8 9e a5 c5 ff                                  	call   0x105e7600
1098d062:	c3                                              	ret
1098d063:	33 c0                                           	xor    eax,eax
1098d065:	c3                                              	ret
1098d066:	cc                                              	int3
1098d067:	cc                                              	int3
1098d068:	cc                                              	int3
1098d069:	cc                                              	int3
1098d06a:	cc                                              	int3
1098d06b:	cc                                              	int3
1098d06c:	cc                                              	int3
1098d06d:	cc                                              	int3
1098d06e:	cc                                              	int3
1098d06f:	cc                                              	int3
