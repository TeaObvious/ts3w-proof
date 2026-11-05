# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997bd0 (WorldWrap_Load)
Paired Ghidra pseudocode: 10997BD0_WorldWrap_Load.c
Window: [0x10997bd0, 0x10997bf0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997bf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997bd0: 8b 44 24 08 8b 4c 24 04 50 e8 e2 aa 8a ff f6 d8
10997be0: 1b c0 f7 d8 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997bd0 <.text+0x996bd0>:
10997bd0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10997bd4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997bd8:	50                                              	push   eax
10997bd9:	e8 e2 aa 8a ff                                  	call   0x102426c0
10997bde:	f6 d8                                           	neg    al
10997be0:	1b c0                                           	sbb    eax,eax
10997be2:	f7 d8                                           	neg    eax
10997be4:	c3                                              	ret
10997be5:	cc                                              	int3
10997be6:	cc                                              	int3
10997be7:	cc                                              	int3
10997be8:	cc                                              	int3
10997be9:	cc                                              	int3
10997bea:	cc                                              	int3
10997beb:	cc                                              	int3
10997bec:	cc                                              	int3
10997bed:	cc                                              	int3
10997bee:	cc                                              	int3
10997bef:	cc                                              	int3
