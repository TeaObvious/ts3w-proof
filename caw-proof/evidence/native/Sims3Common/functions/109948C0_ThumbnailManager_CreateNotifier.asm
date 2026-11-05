# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109948c0 (ThumbnailManager_CreateNotifier)
Paired Ghidra pseudocode: 109948C0_ThumbnailManager_CreateNotifier.c
Window: [0x109948c0, 0x10994970) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x10994970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109948c0: 56 6a 00 6a 00 6a 00 6a 00 68 f8 77 b9 10 6a 30
109948d0: e8 db 45 f8 ff 8b f0 83 c4 18 85 f6 74 3e 8b ce
109948e0: e8 3b 0c 99 ff c7 46 20 cc f8 aa 10 c7 46 24 d8
109948f0: e9 aa 10 c7 06 34 78 b9 10 c7 46 20 24 78 b9 10
10994900: c7 46 24 18 78 b9 10 c6 46 28 00 c6 46 29 00 8b
10994910: 06 8b 50 04 8b ce ff d2 8b c6 5e c3 33 f6 8b 06
10994920: 8b 50 04 8b ce ff d2 8b c6 5e c3 cc cc cc cc cc
10994930: 83 e9 20 e9 e8 00 73 ff cc cc cc cc cc cc cc cc
10994940: 83 e9 24 e9 d8 00 73 ff cc cc cc cc cc cc cc cc
10994950: 83 e9 20 e9 c8 7f b9 ff cc cc cc cc cc cc cc cc
10994960: 83 e9 24 e9 b8 7f b9 ff cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109948c0 <.text+0x9938c0>:
109948c0:	56                                              	push   esi
109948c1:	6a 00                                           	push   0x0
109948c3:	6a 00                                           	push   0x0
109948c5:	6a 00                                           	push   0x0
109948c7:	6a 00                                           	push   0x0
109948c9:	68 f8 77 b9 10                                  	push   0x10b977f8
109948ce:	6a 30                                           	push   0x30
109948d0:	e8 db 45 f8 ff                                  	call   0x10918eb0
109948d5:	8b f0                                           	mov    esi,eax
109948d7:	83 c4 18                                        	add    esp,0x18
109948da:	85 f6                                           	test   esi,esi
109948dc:	74 3e                                           	je     0x1099491c
109948de:	8b ce                                           	mov    ecx,esi
109948e0:	e8 3b 0c 99 ff                                  	call   0x10325520
109948e5:	c7 46 20 cc f8 aa 10                            	mov    DWORD PTR [esi+0x20],0x10aaf8cc
109948ec:	c7 46 24 d8 e9 aa 10                            	mov    DWORD PTR [esi+0x24],0x10aae9d8
109948f3:	c7 06 34 78 b9 10                               	mov    DWORD PTR [esi],0x10b97834
109948f9:	c7 46 20 24 78 b9 10                            	mov    DWORD PTR [esi+0x20],0x10b97824
10994900:	c7 46 24 18 78 b9 10                            	mov    DWORD PTR [esi+0x24],0x10b97818
10994907:	c6 46 28 00                                     	mov    BYTE PTR [esi+0x28],0x0
1099490b:	c6 46 29 00                                     	mov    BYTE PTR [esi+0x29],0x0
1099490f:	8b 06                                           	mov    eax,DWORD PTR [esi]
10994911:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10994914:	8b ce                                           	mov    ecx,esi
10994916:	ff d2                                           	call   edx
10994918:	8b c6                                           	mov    eax,esi
1099491a:	5e                                              	pop    esi
1099491b:	c3                                              	ret
1099491c:	33 f6                                           	xor    esi,esi
1099491e:	8b 06                                           	mov    eax,DWORD PTR [esi]
10994920:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10994923:	8b ce                                           	mov    ecx,esi
10994925:	ff d2                                           	call   edx
10994927:	8b c6                                           	mov    eax,esi
10994929:	5e                                              	pop    esi
1099492a:	c3                                              	ret
1099492b:	cc                                              	int3
1099492c:	cc                                              	int3
1099492d:	cc                                              	int3
1099492e:	cc                                              	int3
1099492f:	cc                                              	int3
10994930:	83 e9 20                                        	sub    ecx,0x20
10994933:	e9 e8 00 73 ff                                  	jmp    0x100c4a20
10994938:	cc                                              	int3
10994939:	cc                                              	int3
1099493a:	cc                                              	int3
1099493b:	cc                                              	int3
1099493c:	cc                                              	int3
1099493d:	cc                                              	int3
1099493e:	cc                                              	int3
1099493f:	cc                                              	int3
10994940:	83 e9 24                                        	sub    ecx,0x24
10994943:	e9 d8 00 73 ff                                  	jmp    0x100c4a20
10994948:	cc                                              	int3
10994949:	cc                                              	int3
1099494a:	cc                                              	int3
1099494b:	cc                                              	int3
1099494c:	cc                                              	int3
1099494d:	cc                                              	int3
1099494e:	cc                                              	int3
1099494f:	cc                                              	int3
10994950:	83 e9 20                                        	sub    ecx,0x20
10994953:	e9 c8 7f b9 ff                                  	jmp    0x1052c920
10994958:	cc                                              	int3
10994959:	cc                                              	int3
1099495a:	cc                                              	int3
1099495b:	cc                                              	int3
1099495c:	cc                                              	int3
1099495d:	cc                                              	int3
1099495e:	cc                                              	int3
1099495f:	cc                                              	int3
10994960:	83 e9 24                                        	sub    ecx,0x24
10994963:	e9 b8 7f b9 ff                                  	jmp    0x1052c920
10994968:	cc                                              	int3
10994969:	cc                                              	int3
1099496a:	cc                                              	int3
1099496b:	cc                                              	int3
1099496c:	cc                                              	int3
1099496d:	cc                                              	int3
1099496e:	cc                                              	int3
1099496f:	cc                                              	int3
