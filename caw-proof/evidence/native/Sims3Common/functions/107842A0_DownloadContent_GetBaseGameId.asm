# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107842a0 (DownloadContent_GetBaseGameId)
Paired Ghidra pseudocode: 107842A0_DownloadContent_GetBaseGameId.c
Window: [0x107842a0, 0x107842e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x107842e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107842a0: 8d 44 24 f0 83 ec 10 50 e8 53 42 00 00 83 c4 04
107842b0: 6a 00 8d 4c 24 04 e8 b5 f0 1a 00 8b 4c 24 14 89
107842c0: 01 89 51 04 6a 01 8d 4c 24 04 e8 a1 f0 1a 00 8b
107842d0: 4c 24 18 89 01 89 51 04 83 c4 10 c3 cc cc cc cc

LINEAR DISASSEMBLY
107842a0 <.text+0x7832a0>:
107842a0:	8d 44 24 f0                                     	lea    eax,[esp-0x10]
107842a4:	83 ec 10                                        	sub    esp,0x10
107842a7:	50                                              	push   eax
107842a8:	e8 53 42 00 00                                  	call   0x10788500
107842ad:	83 c4 04                                        	add    esp,0x4
107842b0:	6a 00                                           	push   0x0
107842b2:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
107842b6:	e8 b5 f0 1a 00                                  	call   0x10933370
107842bb:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
107842bf:	89 01                                           	mov    DWORD PTR [ecx],eax
107842c1:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
107842c4:	6a 01                                           	push   0x1
107842c6:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
107842ca:	e8 a1 f0 1a 00                                  	call   0x10933370
107842cf:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
107842d3:	89 01                                           	mov    DWORD PTR [ecx],eax
107842d5:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
107842d8:	83 c4 10                                        	add    esp,0x10
107842db:	c3                                              	ret
107842dc:	cc                                              	int3
107842dd:	cc                                              	int3
107842de:	cc                                              	int3
107842df:	cc                                              	int3
