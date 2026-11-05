# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d1e0 (SacsWrap_AnimationNode_GetBlendOutTime)
Paired Ghidra pseudocode: 1098D1E0_SacsWrap_AnimationNode_GetBlendOutTime.c
Window: [0x1098d1e0, 0x1098d210) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d1e0: 8b 4c 24 04 83 ec 10 85 c9 74 11 8d 04 24 50 e8
1098d1f0: 9c 9a c5 ff d9 44 24 08 83 c4 10 c3 d9 ee 83 c4
1098d200: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d1e0 <.text+0x98c1e0>:
1098d1e0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d1e4:	83 ec 10                                        	sub    esp,0x10
1098d1e7:	85 c9                                           	test   ecx,ecx
1098d1e9:	74 11                                           	je     0x1098d1fc
1098d1eb:	8d 04 24                                        	lea    eax,[esp]
1098d1ee:	50                                              	push   eax
1098d1ef:	e8 9c 9a c5 ff                                  	call   0x105e6c90
1098d1f4:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1098d1f8:	83 c4 10                                        	add    esp,0x10
1098d1fb:	c3                                              	ret
1098d1fc:	d9 ee                                           	fldz
1098d1fe:	83 c4 10                                        	add    esp,0x10
1098d201:	c3                                              	ret
1098d202:	cc                                              	int3
1098d203:	cc                                              	int3
1098d204:	cc                                              	int3
1098d205:	cc                                              	int3
1098d206:	cc                                              	int3
1098d207:	cc                                              	int3
1098d208:	cc                                              	int3
1098d209:	cc                                              	int3
1098d20a:	cc                                              	int3
1098d20b:	cc                                              	int3
1098d20c:	cc                                              	int3
1098d20d:	cc                                              	int3
1098d20e:	cc                                              	int3
1098d20f:	cc                                              	int3
