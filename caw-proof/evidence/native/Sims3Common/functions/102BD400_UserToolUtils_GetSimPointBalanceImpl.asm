# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bd400 (UserToolUtils_GetSimPointBalanceImpl)
Paired Ghidra pseudocode: 102BD400_UserToolUtils_GetSimPointBalanceImpl.c
Window: [0x102bd400, 0x102bd420) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bd420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bd400: 8b 0d 50 e1 c8 10 85 c9 74 05 e9 d1 48 50 00 33
102bd410: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bd400 <.text+0x2bc400>:
102bd400:	8b 0d 50 e1 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8e150
102bd406:	85 c9                                           	test   ecx,ecx
102bd408:	74 05                                           	je     0x102bd40f
102bd40a:	e9 d1 48 50 00                                  	jmp    0x107c1ce0
102bd40f:	33 c0                                           	xor    eax,eax
102bd411:	c3                                              	ret
102bd412:	cc                                              	int3
102bd413:	cc                                              	int3
102bd414:	cc                                              	int3
102bd415:	cc                                              	int3
102bd416:	cc                                              	int3
102bd417:	cc                                              	int3
102bd418:	cc                                              	int3
102bd419:	cc                                              	int3
102bd41a:	cc                                              	int3
102bd41b:	cc                                              	int3
102bd41c:	cc                                              	int3
102bd41d:	cc                                              	int3
102bd41e:	cc                                              	int3
102bd41f:	cc                                              	int3
