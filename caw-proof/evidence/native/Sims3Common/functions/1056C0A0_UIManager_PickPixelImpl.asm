# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056c0a0 (UIManager_PickPixelImpl)
Paired Ghidra pseudocode: 1056C0A0_UIManager_PickPixelImpl.c
Window: [0x1056c0a0, 0x1056c0e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056c0e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056c0a0: d9 44 24 18 8b 4c 24 04 8b 54 24 08 83 ec 18 d9
1056c0b0: 5c 24 14 8b c4 d9 44 24 2c d9 5c 24 10 89 08 8b
1056c0c0: 4c 24 24 89 50 04 8b 54 24 28 89 48 08 89 50 0c
1056c0d0: e8 3b f7 ff ff 83 c4 18 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056c0a0 <.text+0x56b0a0>:
1056c0a0:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
1056c0a4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056c0a8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056c0ac:	83 ec 18                                        	sub    esp,0x18
1056c0af:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
1056c0b3:	8b c4                                           	mov    eax,esp
1056c0b5:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
1056c0b9:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
1056c0bd:	89 08                                           	mov    DWORD PTR [eax],ecx
1056c0bf:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1056c0c3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1056c0c6:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1056c0ca:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1056c0cd:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1056c0d0:	e8 3b f7 ff ff                                  	call   0x1056b810
1056c0d5:	83 c4 18                                        	add    esp,0x18
1056c0d8:	c3                                              	ret
1056c0d9:	cc                                              	int3
1056c0da:	cc                                              	int3
1056c0db:	cc                                              	int3
1056c0dc:	cc                                              	int3
1056c0dd:	cc                                              	int3
1056c0de:	cc                                              	int3
1056c0df:	cc                                              	int3
