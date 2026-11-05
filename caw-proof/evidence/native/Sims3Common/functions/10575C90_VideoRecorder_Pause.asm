# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575c90 (VideoRecorder_Pause)
Paired Ghidra pseudocode: 10575C90_VideoRecorder_Pause.c
Window: [0x10575c90, 0x10575cb0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575c90: e8 db 74 25 00 85 c0 74 09 8b 10 8b c8 8b 42 28
10575ca0: ff e0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10575c90 <.text+0x574c90>:
10575c90:	e8 db 74 25 00                                  	call   0x107cd170
10575c95:	85 c0                                           	test   eax,eax
10575c97:	74 09                                           	je     0x10575ca2
10575c99:	8b 10                                           	mov    edx,DWORD PTR [eax]
10575c9b:	8b c8                                           	mov    ecx,eax
10575c9d:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
10575ca0:	ff e0                                           	jmp    eax
10575ca2:	c3                                              	ret
10575ca3:	cc                                              	int3
10575ca4:	cc                                              	int3
10575ca5:	cc                                              	int3
10575ca6:	cc                                              	int3
10575ca7:	cc                                              	int3
10575ca8:	cc                                              	int3
10575ca9:	cc                                              	int3
10575caa:	cc                                              	int3
10575cab:	cc                                              	int3
10575cac:	cc                                              	int3
10575cad:	cc                                              	int3
10575cae:	cc                                              	int3
10575caf:	cc                                              	int3
