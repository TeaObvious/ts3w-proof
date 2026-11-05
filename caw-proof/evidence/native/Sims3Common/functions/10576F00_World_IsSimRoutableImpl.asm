# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576f00 (World_IsSimRoutableImpl)
Paired Ghidra pseudocode: 10576F00_World_IsSimRoutableImpl.c
Window: [0x10576f00, 0x10576f30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576f00: 8b 0d c4 00 c7 10 85 c9 74 18 d9 44 24 08 83 ec
10576f10: 08 d9 5c 24 04 d9 44 24 0c d9 1c 24 e8 df 94 cc
10576f20: ff c3 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10576f00 <.text+0x575f00>:
10576f00:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10576f06:	85 c9                                           	test   ecx,ecx
10576f08:	74 18                                           	je     0x10576f22
10576f0a:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10576f0e:	83 ec 08                                        	sub    esp,0x8
10576f11:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10576f15:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10576f19:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10576f1c:	e8 df 94 cc ff                                  	call   0x10240400
10576f21:	c3                                              	ret
10576f22:	32 c0                                           	xor    al,al
10576f24:	c3                                              	ret
10576f25:	cc                                              	int3
10576f26:	cc                                              	int3
10576f27:	cc                                              	int3
10576f28:	cc                                              	int3
10576f29:	cc                                              	int3
10576f2a:	cc                                              	int3
10576f2b:	cc                                              	int3
10576f2c:	cc                                              	int3
10576f2d:	cc                                              	int3
10576f2e:	cc                                              	int3
10576f2f:	cc                                              	int3
