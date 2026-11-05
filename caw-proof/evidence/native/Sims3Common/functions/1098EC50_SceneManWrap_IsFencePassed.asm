# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ec50 (SceneManWrap_IsFencePassed)
Paired Ghidra pseudocode: 1098EC50_SceneManWrap_IsFencePassed.c
Window: [0x1098ec50, 0x1098ec70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ec70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ec50: a1 90 80 cb 10 2b 44 24 08 b8 00 00 00 00 0f 99
1098ec60: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ec50 <.text+0x98dc50>:
1098ec50:	a1 90 80 cb 10                                  	mov    eax,ds:0x10cb8090
1098ec55:	2b 44 24 08                                     	sub    eax,DWORD PTR [esp+0x8]
1098ec59:	b8 00 00 00 00                                  	mov    eax,0x0
1098ec5e:	0f 99 c0                                        	setns  al
1098ec61:	c3                                              	ret
1098ec62:	cc                                              	int3
1098ec63:	cc                                              	int3
1098ec64:	cc                                              	int3
1098ec65:	cc                                              	int3
1098ec66:	cc                                              	int3
1098ec67:	cc                                              	int3
1098ec68:	cc                                              	int3
1098ec69:	cc                                              	int3
1098ec6a:	cc                                              	int3
1098ec6b:	cc                                              	int3
1098ec6c:	cc                                              	int3
1098ec6d:	cc                                              	int3
1098ec6e:	cc                                              	int3
1098ec6f:	cc                                              	int3
