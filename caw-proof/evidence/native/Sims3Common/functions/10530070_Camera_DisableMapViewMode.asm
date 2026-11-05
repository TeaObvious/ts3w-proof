# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10530070 (Camera_DisableMapViewMode)
Paired Ghidra pseudocode: 10530070_Camera_DisableMapViewMode.c
Window: [0x10530070, 0x105300d0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x105300d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10530070: e8 bb c5 22 00 85 c0 74 4b 8b c8 e8 00 7a 40 00
10530080: 85 c0 74 40 8b c8 e8 c5 c8 22 00 85 c0 74 35 8b
10530090: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
105300a0: 23 d9 44 24 0c 6a 00 83 ec 0c d9 5c 24 08 8b c8
105300b0: d9 44 24 18 d9 5c 24 04 d9 44 24 14 d9 1c 24 e8
105300c0: ec 63 23 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10530070 <.text+0x52f070>:
10530070:	e8 bb c5 22 00                                  	call   0x1075c630
10530075:	85 c0                                           	test   eax,eax
10530077:	74 4b                                           	je     0x105300c4
10530079:	8b c8                                           	mov    ecx,eax
1053007b:	e8 00 7a 40 00                                  	call   0x10937a80
10530080:	85 c0                                           	test   eax,eax
10530082:	74 40                                           	je     0x105300c4
10530084:	8b c8                                           	mov    ecx,eax
10530086:	e8 c5 c8 22 00                                  	call   0x1075c950
1053008b:	85 c0                                           	test   eax,eax
1053008d:	74 35                                           	je     0x105300c4
1053008f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10530091:	8b c8                                           	mov    ecx,eax
10530093:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
10530096:	68 89 dd 0f 11                                  	push   0x110fdd89
1053009b:	ff d0                                           	call   eax
1053009d:	85 c0                                           	test   eax,eax
1053009f:	74 23                                           	je     0x105300c4
105300a1:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
105300a5:	6a 00                                           	push   0x0
105300a7:	83 ec 0c                                        	sub    esp,0xc
105300aa:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
105300ae:	8b c8                                           	mov    ecx,eax
105300b0:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
105300b4:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
105300b8:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
105300bc:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105300bf:	e8 ec 63 23 00                                  	call   0x107664b0
105300c4:	c3                                              	ret
105300c5:	cc                                              	int3
105300c6:	cc                                              	int3
105300c7:	cc                                              	int3
105300c8:	cc                                              	int3
105300c9:	cc                                              	int3
105300ca:	cc                                              	int3
105300cb:	cc                                              	int3
105300cc:	cc                                              	int3
105300cd:	cc                                              	int3
105300ce:	cc                                              	int3
105300cf:	cc                                              	int3
