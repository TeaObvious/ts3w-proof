# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056bd00 (UIManager_RegisterCustomControlFactoryImpl)
Paired Ghidra pseudocode: 1056BD00_UIManager_RegisterCustomControlFactoryImpl.c
Window: [0x1056bd00, 0x1056bd30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056bd30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056bd00: 80 7c 24 08 00 74 0e 8b 44 24 04 50 e8 1f 9c 06
1056bd10: 00 83 c4 04 c3 8b 4c 24 04 51 e8 61 99 06 00 59
1056bd20: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056bd00 <.text+0x56ad00>:
1056bd00:	80 7c 24 08 00                                  	cmp    BYTE PTR [esp+0x8],0x0
1056bd05:	74 0e                                           	je     0x1056bd15
1056bd07:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1056bd0b:	50                                              	push   eax
1056bd0c:	e8 1f 9c 06 00                                  	call   0x105d5930
1056bd11:	83 c4 04                                        	add    esp,0x4
1056bd14:	c3                                              	ret
1056bd15:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056bd19:	51                                              	push   ecx
1056bd1a:	e8 61 99 06 00                                  	call   0x105d5680
1056bd1f:	59                                              	pop    ecx
1056bd20:	c3                                              	ret
1056bd21:	cc                                              	int3
1056bd22:	cc                                              	int3
1056bd23:	cc                                              	int3
1056bd24:	cc                                              	int3
1056bd25:	cc                                              	int3
1056bd26:	cc                                              	int3
1056bd27:	cc                                              	int3
1056bd28:	cc                                              	int3
1056bd29:	cc                                              	int3
1056bd2a:	cc                                              	int3
1056bd2b:	cc                                              	int3
1056bd2c:	cc                                              	int3
1056bd2d:	cc                                              	int3
1056bd2e:	cc                                              	int3
1056bd2f:	cc                                              	int3
