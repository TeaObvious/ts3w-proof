# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f780 (UIManager_GetCursorPositionImpl)
Paired Ghidra pseudocode: 1056F780_UIManager_GetCursorPositionImpl.c
Window: [0x1056f780, 0x1056f7b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f7b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f780: 83 ec 08 e8 58 db 3c 00 8b 10 8b 52 48 8d 0c 24
1056f790: 51 8b c8 ff d2 d9 00 8b 4c 24 0c d9 19 d9 40 04
1056f7a0: d9 59 04 83 c4 08 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f780 <.text+0x56e780>:
1056f780:	83 ec 08                                        	sub    esp,0x8
1056f783:	e8 58 db 3c 00                                  	call   0x1093d2e0
1056f788:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f78a:	8b 52 48                                        	mov    edx,DWORD PTR [edx+0x48]
1056f78d:	8d 0c 24                                        	lea    ecx,[esp]
1056f790:	51                                              	push   ecx
1056f791:	8b c8                                           	mov    ecx,eax
1056f793:	ff d2                                           	call   edx
1056f795:	d9 00                                           	fld    DWORD PTR [eax]
1056f797:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1056f79b:	d9 19                                           	fstp   DWORD PTR [ecx]
1056f79d:	d9 40 04                                        	fld    DWORD PTR [eax+0x4]
1056f7a0:	d9 59 04                                        	fstp   DWORD PTR [ecx+0x4]
1056f7a3:	83 c4 08                                        	add    esp,0x8
1056f7a6:	c3                                              	ret
1056f7a7:	cc                                              	int3
1056f7a8:	cc                                              	int3
1056f7a9:	cc                                              	int3
1056f7aa:	cc                                              	int3
1056f7ab:	cc                                              	int3
1056f7ac:	cc                                              	int3
1056f7ad:	cc                                              	int3
1056f7ae:	cc                                              	int3
1056f7af:	cc                                              	int3
