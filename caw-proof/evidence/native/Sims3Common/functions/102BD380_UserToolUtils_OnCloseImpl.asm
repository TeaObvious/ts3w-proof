# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bd380 (UserToolUtils_OnCloseImpl)
Paired Ghidra pseudocode: 102BD380_UserToolUtils_OnCloseImpl.c
Window: [0x102bd380, 0x102bd3a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bd3a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bd380: e8 2b 9f 00 00 85 c0 74 07 8b c8 e9 20 a9 00 00
102bd390: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bd380 <.text+0x2bc380>:
102bd380:	e8 2b 9f 00 00                                  	call   0x102c72b0
102bd385:	85 c0                                           	test   eax,eax
102bd387:	74 07                                           	je     0x102bd390
102bd389:	8b c8                                           	mov    ecx,eax
102bd38b:	e9 20 a9 00 00                                  	jmp    0x102c7cb0
102bd390:	c3                                              	ret
102bd391:	cc                                              	int3
102bd392:	cc                                              	int3
102bd393:	cc                                              	int3
102bd394:	cc                                              	int3
102bd395:	cc                                              	int3
102bd396:	cc                                              	int3
102bd397:	cc                                              	int3
102bd398:	cc                                              	int3
102bd399:	cc                                              	int3
102bd39a:	cc                                              	int3
102bd39b:	cc                                              	int3
102bd39c:	cc                                              	int3
102bd39d:	cc                                              	int3
102bd39e:	cc                                              	int3
102bd39f:	cc                                              	int3
