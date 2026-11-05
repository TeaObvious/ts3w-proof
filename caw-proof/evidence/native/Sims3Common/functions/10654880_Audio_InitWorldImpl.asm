# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10654880 (Audio_InitWorldImpl)
Paired Ghidra pseudocode: 10654880_Audio_InitWorldImpl.c
Window: [0x10654880, 0x106548a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x106548a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10654880: a1 a0 d4 c7 10 85 c0 74 14 8d 88 30 84 fd ff 85
10654890: c9 74 0a 8b 01 8b 90 48 02 00 00 ff e2 32 c0 c3

LINEAR DISASSEMBLY
10654880 <.text+0x653880>:
10654880:	a1 a0 d4 c7 10                                  	mov    eax,ds:0x10c7d4a0
10654885:	85 c0                                           	test   eax,eax
10654887:	74 14                                           	je     0x1065489d
10654889:	8d 88 30 84 fd ff                               	lea    ecx,[eax-0x27bd0]
1065488f:	85 c9                                           	test   ecx,ecx
10654891:	74 0a                                           	je     0x1065489d
10654893:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10654895:	8b 90 48 02 00 00                               	mov    edx,DWORD PTR [eax+0x248]
1065489b:	ff e2                                           	jmp    edx
1065489d:	32 c0                                           	xor    al,al
1065489f:	c3                                              	ret
