# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997980 (WorldWrap_GetCameraControllerType)
Paired Ghidra pseudocode: 10997980_WorldWrap_GetCameraControllerType.c
Window: [0x10997980, 0x109979a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109979a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997980: e8 ab 4c dc ff 8b c8 e8 f4 00 fa ff 85 c0 74 07
10997990: 8b 80 90 00 00 00 c3 33 c0 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997980 <.text+0x996980>:
10997980:	e8 ab 4c dc ff                                  	call   0x1075c630
10997985:	8b c8                                           	mov    ecx,eax
10997987:	e8 f4 00 fa ff                                  	call   0x10937a80
1099798c:	85 c0                                           	test   eax,eax
1099798e:	74 07                                           	je     0x10997997
10997990:	8b 80 90 00 00 00                               	mov    eax,DWORD PTR [eax+0x90]
10997996:	c3                                              	ret
10997997:	33 c0                                           	xor    eax,eax
10997999:	c3                                              	ret
1099799a:	cc                                              	int3
1099799b:	cc                                              	int3
1099799c:	cc                                              	int3
1099799d:	cc                                              	int3
1099799e:	cc                                              	int3
1099799f:	cc                                              	int3
