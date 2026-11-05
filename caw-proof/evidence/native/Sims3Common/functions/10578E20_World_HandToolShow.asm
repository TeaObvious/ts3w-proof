# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578e20 (World_HandToolShow)
Paired Ghidra pseudocode: 10578E20_World_HandToolShow.c
Window: [0x10578e20, 0x10578e40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578e40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578e20: e8 0b 23 fe ff 8b 10 6a 00 6a 00 8b c8 8b 42 18
10578e30: 68 cb 10 69 04 ff d0 b0 01 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10578e20 <.text+0x577e20>:
10578e20:	e8 0b 23 fe ff                                  	call   0x1055b130
10578e25:	8b 10                                           	mov    edx,DWORD PTR [eax]
10578e27:	6a 00                                           	push   0x0
10578e29:	6a 00                                           	push   0x0
10578e2b:	8b c8                                           	mov    ecx,eax
10578e2d:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
10578e30:	68 cb 10 69 04                                  	push   0x46910cb
10578e35:	ff d0                                           	call   eax
10578e37:	b0 01                                           	mov    al,0x1
10578e39:	c3                                              	ret
10578e3a:	cc                                              	int3
10578e3b:	cc                                              	int3
10578e3c:	cc                                              	int3
10578e3d:	cc                                              	int3
10578e3e:	cc                                              	int3
10578e3f:	cc                                              	int3
