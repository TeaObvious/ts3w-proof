# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be580 (UserToolUtils_IsUserToolBusyImpl)
Paired Ghidra pseudocode: 102BE580_UserToolUtils_IsUserToolBusyImpl.c
Window: [0x102be580, 0x102be5a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be5a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be580: e8 2b 8d 00 00 85 c0 74 0e 8b 48 2c 85 c9 74 07
102be590: 8b 01 8b 50 30 ff e2 32 c0 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
102be580 <.text+0x2bd580>:
102be580:	e8 2b 8d 00 00                                  	call   0x102c72b0
102be585:	85 c0                                           	test   eax,eax
102be587:	74 0e                                           	je     0x102be597
102be589:	8b 48 2c                                        	mov    ecx,DWORD PTR [eax+0x2c]
102be58c:	85 c9                                           	test   ecx,ecx
102be58e:	74 07                                           	je     0x102be597
102be590:	8b 01                                           	mov    eax,DWORD PTR [ecx]
102be592:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
102be595:	ff e2                                           	jmp    edx
102be597:	32 c0                                           	xor    al,al
102be599:	c3                                              	ret
102be59a:	cc                                              	int3
102be59b:	cc                                              	int3
102be59c:	cc                                              	int3
102be59d:	cc                                              	int3
102be59e:	cc                                              	int3
102be59f:	cc                                              	int3
