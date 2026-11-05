# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d900 (App3D_GetInstalledGameDir)
Paired Ghidra pseudocode: 1097D900_App3D_GetInstalledGameDir.c
Window: [0x1097d900, 0x1097d940) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d900: 81 ec 08 02 00 00 8d 04 24 68 04 01 00 00 50 e8
1097d910: 7c 66 c4 ff 83 c4 08 85 c0 74 0e 50 ff 15 c4 b6
1097d920: aa 10 81 c4 08 02 00 00 c3 33 c0 81 c4 08 02 00
1097d930: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d900 <.text+0x97c900>:
1097d900:	81 ec 08 02 00 00                               	sub    esp,0x208
1097d906:	8d 04 24                                        	lea    eax,[esp]
1097d909:	68 04 01 00 00                                  	push   0x104
1097d90e:	50                                              	push   eax
1097d90f:	e8 7c 66 c4 ff                                  	call   0x105c3f90
1097d914:	83 c4 08                                        	add    esp,0x8
1097d917:	85 c0                                           	test   eax,eax
1097d919:	74 0e                                           	je     0x1097d929
1097d91b:	50                                              	push   eax
1097d91c:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1097d922:	81 c4 08 02 00 00                               	add    esp,0x208
1097d928:	c3                                              	ret
1097d929:	33 c0                                           	xor    eax,eax
1097d92b:	81 c4 08 02 00 00                               	add    esp,0x208
1097d931:	c3                                              	ret
1097d932:	cc                                              	int3
1097d933:	cc                                              	int3
1097d934:	cc                                              	int3
1097d935:	cc                                              	int3
1097d936:	cc                                              	int3
1097d937:	cc                                              	int3
1097d938:	cc                                              	int3
1097d939:	cc                                              	int3
1097d93a:	cc                                              	int3
1097d93b:	cc                                              	int3
1097d93c:	cc                                              	int3
1097d93d:	cc                                              	int3
1097d93e:	cc                                              	int3
1097d93f:	cc                                              	int3
