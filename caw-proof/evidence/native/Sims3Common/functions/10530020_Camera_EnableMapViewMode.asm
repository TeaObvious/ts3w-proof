# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10530020 (Camera_EnableMapViewMode)
Paired Ghidra pseudocode: 10530020_Camera_EnableMapViewMode.c
Window: [0x10530020, 0x10530070) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10530070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10530020: e8 0b c6 22 00 85 c0 74 39 8b c8 e8 50 7a 40 00
10530030: 85 c0 74 2e 8b c8 e8 15 c9 22 00 85 c0 74 23 8b
10530040: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
10530050: 11 d9 44 24 04 6a 00 51 8b c8 d9 1c 24 e8 be 62
10530060: 23 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10530020 <.text+0x52f020>:
10530020:	e8 0b c6 22 00                                  	call   0x1075c630
10530025:	85 c0                                           	test   eax,eax
10530027:	74 39                                           	je     0x10530062
10530029:	8b c8                                           	mov    ecx,eax
1053002b:	e8 50 7a 40 00                                  	call   0x10937a80
10530030:	85 c0                                           	test   eax,eax
10530032:	74 2e                                           	je     0x10530062
10530034:	8b c8                                           	mov    ecx,eax
10530036:	e8 15 c9 22 00                                  	call   0x1075c950
1053003b:	85 c0                                           	test   eax,eax
1053003d:	74 23                                           	je     0x10530062
1053003f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10530041:	8b c8                                           	mov    ecx,eax
10530043:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
10530046:	68 89 dd 0f 11                                  	push   0x110fdd89
1053004b:	ff d0                                           	call   eax
1053004d:	85 c0                                           	test   eax,eax
1053004f:	74 11                                           	je     0x10530062
10530051:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
10530055:	6a 00                                           	push   0x0
10530057:	51                                              	push   ecx
10530058:	8b c8                                           	mov    ecx,eax
1053005a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053005d:	e8 be 62 23 00                                  	call   0x10766320
10530062:	c3                                              	ret
10530063:	cc                                              	int3
10530064:	cc                                              	int3
10530065:	cc                                              	int3
10530066:	cc                                              	int3
10530067:	cc                                              	int3
10530068:	cc                                              	int3
10530069:	cc                                              	int3
1053006a:	cc                                              	int3
1053006b:	cc                                              	int3
1053006c:	cc                                              	int3
1053006d:	cc                                              	int3
1053006e:	cc                                              	int3
1053006f:	cc                                              	int3
