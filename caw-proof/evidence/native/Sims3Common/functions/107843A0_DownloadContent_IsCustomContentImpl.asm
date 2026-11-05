# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107843a0 (DownloadContent_IsCustomContentImpl)
Paired Ghidra pseudocode: 107843A0_DownloadContent_IsCustomContentImpl.c
Window: [0x107843a0, 0x107843e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x107843e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107843a0: 83 ec 10 8d 04 24 50 8d 4c 24 18 e8 00 98 dd ff
107843b0: 50 e8 da de ff ff 83 c4 04 83 f8 03 74 0f 83 f8
107843c0: 02 74 0a 85 c0 74 06 33 c0 83 c4 10 c3 b8 01 00
107843d0: 00 00 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
107843a0 <.text+0x7833a0>:
107843a0:	83 ec 10                                        	sub    esp,0x10
107843a3:	8d 04 24                                        	lea    eax,[esp]
107843a6:	50                                              	push   eax
107843a7:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
107843ab:	e8 00 98 dd ff                                  	call   0x1055dbb0
107843b0:	50                                              	push   eax
107843b1:	e8 da de ff ff                                  	call   0x10782290
107843b6:	83 c4 04                                        	add    esp,0x4
107843b9:	83 f8 03                                        	cmp    eax,0x3
107843bc:	74 0f                                           	je     0x107843cd
107843be:	83 f8 02                                        	cmp    eax,0x2
107843c1:	74 0a                                           	je     0x107843cd
107843c3:	85 c0                                           	test   eax,eax
107843c5:	74 06                                           	je     0x107843cd
107843c7:	33 c0                                           	xor    eax,eax
107843c9:	83 c4 10                                        	add    esp,0x10
107843cc:	c3                                              	ret
107843cd:	b8 01 00 00 00                                  	mov    eax,0x1
107843d2:	83 c4 10                                        	add    esp,0x10
107843d5:	c3                                              	ret
107843d6:	cc                                              	int3
107843d7:	cc                                              	int3
107843d8:	cc                                              	int3
107843d9:	cc                                              	int3
107843da:	cc                                              	int3
107843db:	cc                                              	int3
107843dc:	cc                                              	int3
107843dd:	cc                                              	int3
107843de:	cc                                              	int3
107843df:	cc                                              	int3
