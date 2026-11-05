# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105362d0 (Objects_IsValid)
Paired Ghidra pseudocode: 105362D0_Objects_IsValid.c
Window: [0x105362d0, 0x105362f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105362f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105362d0: e8 cb 3e 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
105362e0: c8 e8 ca 48 1f 00 f7 d8 1b c0 f7 d8 c3 cc cc cc

LINEAR DISASSEMBLY
105362d0 <.text+0x5352d0>:
105362d0:	e8 cb 3e 1f 00                                  	call   0x1072a1a0
105362d5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105362d9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105362dd:	51                                              	push   ecx
105362de:	52                                              	push   edx
105362df:	8b c8                                           	mov    ecx,eax
105362e1:	e8 ca 48 1f 00                                  	call   0x1072abb0
105362e6:	f7 d8                                           	neg    eax
105362e8:	1b c0                                           	sbb    eax,eax
105362ea:	f7 d8                                           	neg    eax
105362ec:	c3                                              	ret
105362ed:	cc                                              	int3
105362ee:	cc                                              	int3
105362ef:	cc                                              	int3
