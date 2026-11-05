# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052ffe0 (Camera_Unlock)
Paired Ghidra pseudocode: 1052FFE0_Camera_Unlock.c
Window: [0x1052ffe0, 0x10530020) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10530020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052ffe0: e8 4b c6 22 00 85 c0 74 2f 8b c8 e8 90 7a 40 00
1052fff0: 85 c0 74 24 8b c8 e8 55 c9 22 00 85 c0 74 19 8b
10530000: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
10530010: 07 8b c8 e9 18 71 23 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052ffe0 <.text+0x52efe0>:
1052ffe0:	e8 4b c6 22 00                                  	call   0x1075c630
1052ffe5:	85 c0                                           	test   eax,eax
1052ffe7:	74 2f                                           	je     0x10530018
1052ffe9:	8b c8                                           	mov    ecx,eax
1052ffeb:	e8 90 7a 40 00                                  	call   0x10937a80
1052fff0:	85 c0                                           	test   eax,eax
1052fff2:	74 24                                           	je     0x10530018
1052fff4:	8b c8                                           	mov    ecx,eax
1052fff6:	e8 55 c9 22 00                                  	call   0x1075c950
1052fffb:	85 c0                                           	test   eax,eax
1052fffd:	74 19                                           	je     0x10530018
1052ffff:	8b 10                                           	mov    edx,DWORD PTR [eax]
10530001:	8b c8                                           	mov    ecx,eax
10530003:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
10530006:	68 89 dd 0f 11                                  	push   0x110fdd89
1053000b:	ff d0                                           	call   eax
1053000d:	85 c0                                           	test   eax,eax
1053000f:	74 07                                           	je     0x10530018
10530011:	8b c8                                           	mov    ecx,eax
10530013:	e9 18 71 23 00                                  	jmp    0x10767130
10530018:	c3                                              	ret
10530019:	cc                                              	int3
1053001a:	cc                                              	int3
1053001b:	cc                                              	int3
1053001c:	cc                                              	int3
1053001d:	cc                                              	int3
1053001e:	cc                                              	int3
1053001f:	cc                                              	int3
