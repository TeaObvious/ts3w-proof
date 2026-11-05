# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d120 (SacsWrap_PlayAnimationNode_GetTrackMask)
Paired Ghidra pseudocode: 1098D120_SacsWrap_PlayAnimationNode_GetTrackMask.c
Window: [0x1098d120, 0x1098d140) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d140
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d120: 8b 4c 24 04 85 c9 74 08 6a 00 e8 51 a4 c5 ff c3
1098d130: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d120 <.text+0x98c120>:
1098d120:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d124:	85 c9                                           	test   ecx,ecx
1098d126:	74 08                                           	je     0x1098d130
1098d128:	6a 00                                           	push   0x0
1098d12a:	e8 51 a4 c5 ff                                  	call   0x105e7580
1098d12f:	c3                                              	ret
1098d130:	33 c0                                           	xor    eax,eax
1098d132:	c3                                              	ret
1098d133:	cc                                              	int3
1098d134:	cc                                              	int3
1098d135:	cc                                              	int3
1098d136:	cc                                              	int3
1098d137:	cc                                              	int3
1098d138:	cc                                              	int3
1098d139:	cc                                              	int3
1098d13a:	cc                                              	int3
1098d13b:	cc                                              	int3
1098d13c:	cc                                              	int3
1098d13d:	cc                                              	int3
1098d13e:	cc                                              	int3
1098d13f:	cc                                              	int3
