# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995ed0 (ObjectManagerWrap_InitCommon)
Paired Ghidra pseudocode: 10995ED0_ObjectManagerWrap_InitCommon.c
Window: [0x10995ed0, 0x10995ef0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995ef0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995ed0: 8b 4c 24 04 85 c9 74 0e 8b 01 8b 50 10 ff d2 f6
10995ee0: d8 1b c0 f7 d8 c3 33 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995ed0 <.text+0x994ed0>:
10995ed0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10995ed4:	85 c9                                           	test   ecx,ecx
10995ed6:	74 0e                                           	je     0x10995ee6
10995ed8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10995eda:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
10995edd:	ff d2                                           	call   edx
10995edf:	f6 d8                                           	neg    al
10995ee1:	1b c0                                           	sbb    eax,eax
10995ee3:	f7 d8                                           	neg    eax
10995ee5:	c3                                              	ret
10995ee6:	33 c0                                           	xor    eax,eax
10995ee8:	c3                                              	ret
10995ee9:	cc                                              	int3
10995eea:	cc                                              	int3
10995eeb:	cc                                              	int3
10995eec:	cc                                              	int3
10995eed:	cc                                              	int3
10995eee:	cc                                              	int3
10995eef:	cc                                              	int3
