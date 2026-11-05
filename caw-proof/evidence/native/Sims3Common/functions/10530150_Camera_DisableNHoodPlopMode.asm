# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10530150 (Camera_DisableNHoodPlopMode)
Paired Ghidra pseudocode: 10530150_Camera_DisableNHoodPlopMode.c
Window: [0x10530150, 0x10530190) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10530190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10530150: e8 db c4 22 00 85 c0 74 2f 8b c8 e8 20 79 40 00
10530160: 85 c0 74 24 8b c8 e8 e5 c7 22 00 85 c0 74 19 8b
10530170: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
10530180: 07 8b c8 e9 88 28 23 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10530150 <.text+0x52f150>:
10530150:	e8 db c4 22 00                                  	call   0x1075c630
10530155:	85 c0                                           	test   eax,eax
10530157:	74 2f                                           	je     0x10530188
10530159:	8b c8                                           	mov    ecx,eax
1053015b:	e8 20 79 40 00                                  	call   0x10937a80
10530160:	85 c0                                           	test   eax,eax
10530162:	74 24                                           	je     0x10530188
10530164:	8b c8                                           	mov    ecx,eax
10530166:	e8 e5 c7 22 00                                  	call   0x1075c950
1053016b:	85 c0                                           	test   eax,eax
1053016d:	74 19                                           	je     0x10530188
1053016f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10530171:	8b c8                                           	mov    ecx,eax
10530173:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
10530176:	68 89 dd 0f 11                                  	push   0x110fdd89
1053017b:	ff d0                                           	call   eax
1053017d:	85 c0                                           	test   eax,eax
1053017f:	74 07                                           	je     0x10530188
10530181:	8b c8                                           	mov    ecx,eax
10530183:	e9 88 28 23 00                                  	jmp    0x10762a10
10530188:	c3                                              	ret
10530189:	cc                                              	int3
1053018a:	cc                                              	int3
1053018b:	cc                                              	int3
1053018c:	cc                                              	int3
1053018d:	cc                                              	int3
1053018e:	cc                                              	int3
1053018f:	cc                                              	int3
