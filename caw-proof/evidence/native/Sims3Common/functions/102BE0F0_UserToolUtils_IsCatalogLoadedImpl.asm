# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be0f0 (UserToolUtils_IsCatalogLoadedImpl)
Paired Ghidra pseudocode: 102BE0F0_UserToolUtils_IsCatalogLoadedImpl.c
Window: [0x102be0f0, 0x102be140) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be140
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be0f0: a1 34 05 c7 10 85 c0 74 04 8a 40 05 c3 32 c0 c3
102be100: a1 20 0c c7 10 85 c0 74 0c 8b 48 08 85 c9 74 05
102be110: e9 bb 92 00 00 d9 e8 c3 cc cc cc cc cc cc cc cc
102be120: a1 20 0c c7 10 85 c0 74 0c 8b 48 08 85 c9 74 05
102be130: e9 cb 92 00 00 d9 e8 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102be0f0 <.text+0x2bd0f0>:
102be0f0:	a1 34 05 c7 10                                  	mov    eax,ds:0x10c70534
102be0f5:	85 c0                                           	test   eax,eax
102be0f7:	74 04                                           	je     0x102be0fd
102be0f9:	8a 40 05                                        	mov    al,BYTE PTR [eax+0x5]
102be0fc:	c3                                              	ret
102be0fd:	32 c0                                           	xor    al,al
102be0ff:	c3                                              	ret
102be100:	a1 20 0c c7 10                                  	mov    eax,ds:0x10c70c20
102be105:	85 c0                                           	test   eax,eax
102be107:	74 0c                                           	je     0x102be115
102be109:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
102be10c:	85 c9                                           	test   ecx,ecx
102be10e:	74 05                                           	je     0x102be115
102be110:	e9 bb 92 00 00                                  	jmp    0x102c73d0
102be115:	d9 e8                                           	fld1
102be117:	c3                                              	ret
102be118:	cc                                              	int3
102be119:	cc                                              	int3
102be11a:	cc                                              	int3
102be11b:	cc                                              	int3
102be11c:	cc                                              	int3
102be11d:	cc                                              	int3
102be11e:	cc                                              	int3
102be11f:	cc                                              	int3
102be120:	a1 20 0c c7 10                                  	mov    eax,ds:0x10c70c20
102be125:	85 c0                                           	test   eax,eax
102be127:	74 0c                                           	je     0x102be135
102be129:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
102be12c:	85 c9                                           	test   ecx,ecx
102be12e:	74 05                                           	je     0x102be135
102be130:	e9 cb 92 00 00                                  	jmp    0x102c7400
102be135:	d9 e8                                           	fld1
102be137:	c3                                              	ret
102be138:	cc                                              	int3
102be139:	cc                                              	int3
102be13a:	cc                                              	int3
102be13b:	cc                                              	int3
102be13c:	cc                                              	int3
102be13d:	cc                                              	int3
102be13e:	cc                                              	int3
102be13f:	cc                                              	int3
