# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997bb0 (WorldWrap_Reload)
Paired Ghidra pseudocode: 10997BB0_WorldWrap_Reload.c
Window: [0x10997bb0, 0x10997bd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997bd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997bb0: 8b 4c 24 04 85 c9 75 03 33 c0 c3 e8 c0 ab 8a ff
10997bc0: f6 d8 1b c0 f7 d8 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997bb0 <.text+0x996bb0>:
10997bb0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997bb4:	85 c9                                           	test   ecx,ecx
10997bb6:	75 03                                           	jne    0x10997bbb
10997bb8:	33 c0                                           	xor    eax,eax
10997bba:	c3                                              	ret
10997bbb:	e8 c0 ab 8a ff                                  	call   0x10242780
10997bc0:	f6 d8                                           	neg    al
10997bc2:	1b c0                                           	sbb    eax,eax
10997bc4:	f7 d8                                           	neg    eax
10997bc6:	c3                                              	ret
10997bc7:	cc                                              	int3
10997bc8:	cc                                              	int3
10997bc9:	cc                                              	int3
10997bca:	cc                                              	int3
10997bcb:	cc                                              	int3
10997bcc:	cc                                              	int3
10997bcd:	cc                                              	int3
10997bce:	cc                                              	int3
10997bcf:	cc                                              	int3
