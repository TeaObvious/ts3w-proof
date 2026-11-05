# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bd350 (UserToolUtils_FlushCommandQueues)
Paired Ghidra pseudocode: 102BD350_UserToolUtils_FlushCommandQueues.c
Window: [0x102bd350, 0x102bd380) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bd380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bd350: e8 5b 9f 00 00 85 c0 74 0c 8b 48 28 85 c9 74 05
102bd360: e9 5b 40 05 00 c3 cc cc cc cc cc cc cc cc cc cc
102bd370: b8 18 10 ad 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bd350 <.text+0x2bc350>:
102bd350:	e8 5b 9f 00 00                                  	call   0x102c72b0
102bd355:	85 c0                                           	test   eax,eax
102bd357:	74 0c                                           	je     0x102bd365
102bd359:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
102bd35c:	85 c9                                           	test   ecx,ecx
102bd35e:	74 05                                           	je     0x102bd365
102bd360:	e9 5b 40 05 00                                  	jmp    0x103113c0
102bd365:	c3                                              	ret
102bd366:	cc                                              	int3
102bd367:	cc                                              	int3
102bd368:	cc                                              	int3
102bd369:	cc                                              	int3
102bd36a:	cc                                              	int3
102bd36b:	cc                                              	int3
102bd36c:	cc                                              	int3
102bd36d:	cc                                              	int3
102bd36e:	cc                                              	int3
102bd36f:	cc                                              	int3
102bd370:	b8 18 10 ad 10                                  	mov    eax,0x10ad1018
102bd375:	c3                                              	ret
102bd376:	cc                                              	int3
102bd377:	cc                                              	int3
102bd378:	cc                                              	int3
102bd379:	cc                                              	int3
102bd37a:	cc                                              	int3
102bd37b:	cc                                              	int3
102bd37c:	cc                                              	int3
102bd37d:	cc                                              	int3
102bd37e:	cc                                              	int3
102bd37f:	cc                                              	int3
