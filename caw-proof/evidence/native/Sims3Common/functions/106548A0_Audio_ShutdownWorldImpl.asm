# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x106548a0 (Audio_ShutdownWorldImpl)
Paired Ghidra pseudocode: 106548A0_Audio_ShutdownWorldImpl.c
Window: [0x106548a0, 0x106548c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x106548c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
106548a0: a1 a0 d4 c7 10 85 c0 74 14 8d 88 30 84 fd ff 85
106548b0: c9 74 0a 8b 01 8b 90 4c 02 00 00 ff e2 c3 cc cc

LINEAR DISASSEMBLY
106548a0 <.text+0x6538a0>:
106548a0:	a1 a0 d4 c7 10                                  	mov    eax,ds:0x10c7d4a0
106548a5:	85 c0                                           	test   eax,eax
106548a7:	74 14                                           	je     0x106548bd
106548a9:	8d 88 30 84 fd ff                               	lea    ecx,[eax-0x27bd0]
106548af:	85 c9                                           	test   ecx,ecx
106548b1:	74 0a                                           	je     0x106548bd
106548b3:	8b 01                                           	mov    eax,DWORD PTR [ecx]
106548b5:	8b 90 4c 02 00 00                               	mov    edx,DWORD PTR [eax+0x24c]
106548bb:	ff e2                                           	jmp    edx
106548bd:	c3                                              	ret
106548be:	cc                                              	int3
106548bf:	cc                                              	int3
