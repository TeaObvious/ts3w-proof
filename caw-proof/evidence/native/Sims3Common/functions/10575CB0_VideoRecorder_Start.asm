# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575cb0 (VideoRecorder_Start)
Paired Ghidra pseudocode: 10575CB0_VideoRecorder_Start.c
Window: [0x10575cb0, 0x10575cd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575cd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575cb0: e8 bb 74 25 00 85 c0 74 09 8b 10 8b c8 8b 42 2c
10575cc0: ff e0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10575cb0 <.text+0x574cb0>:
10575cb0:	e8 bb 74 25 00                                  	call   0x107cd170
10575cb5:	85 c0                                           	test   eax,eax
10575cb7:	74 09                                           	je     0x10575cc2
10575cb9:	8b 10                                           	mov    edx,DWORD PTR [eax]
10575cbb:	8b c8                                           	mov    ecx,eax
10575cbd:	8b 42 2c                                        	mov    eax,DWORD PTR [edx+0x2c]
10575cc0:	ff e0                                           	jmp    eax
10575cc2:	c3                                              	ret
10575cc3:	cc                                              	int3
10575cc4:	cc                                              	int3
10575cc5:	cc                                              	int3
10575cc6:	cc                                              	int3
10575cc7:	cc                                              	int3
10575cc8:	cc                                              	int3
10575cc9:	cc                                              	int3
10575cca:	cc                                              	int3
10575ccb:	cc                                              	int3
10575ccc:	cc                                              	int3
10575ccd:	cc                                              	int3
10575cce:	cc                                              	int3
10575ccf:	cc                                              	int3
