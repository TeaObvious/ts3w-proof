# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575cd0 (VideoRecorder_Stop)
Paired Ghidra pseudocode: 10575CD0_VideoRecorder_Stop.c
Window: [0x10575cd0, 0x10575cf0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575cd0: e8 9b 74 25 00 85 c0 74 09 8b 10 8b c8 8b 42 30
10575ce0: ff e0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10575cd0 <.text+0x574cd0>:
10575cd0:	e8 9b 74 25 00                                  	call   0x107cd170
10575cd5:	85 c0                                           	test   eax,eax
10575cd7:	74 09                                           	je     0x10575ce2
10575cd9:	8b 10                                           	mov    edx,DWORD PTR [eax]
10575cdb:	8b c8                                           	mov    ecx,eax
10575cdd:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
10575ce0:	ff e0                                           	jmp    eax
10575ce2:	c3                                              	ret
10575ce3:	cc                                              	int3
10575ce4:	cc                                              	int3
10575ce5:	cc                                              	int3
10575ce6:	cc                                              	int3
10575ce7:	cc                                              	int3
10575ce8:	cc                                              	int3
10575ce9:	cc                                              	int3
10575cea:	cc                                              	int3
10575ceb:	cc                                              	int3
10575cec:	cc                                              	int3
10575ced:	cc                                              	int3
10575cee:	cc                                              	int3
10575cef:	cc                                              	int3
