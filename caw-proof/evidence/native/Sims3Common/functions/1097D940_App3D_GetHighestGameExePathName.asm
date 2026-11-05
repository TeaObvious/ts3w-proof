# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d940 (App3D_GetHighestGameExePathName)
Paired Ghidra pseudocode: 1097D940_App3D_GetHighestGameExePathName.c
Window: [0x1097d940, 0x1097d980) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d940: 81 ec 08 02 00 00 8d 04 24 68 04 01 00 00 50 e8
1097d950: 9c 8b ff ff 83 c4 08 85 c0 74 0e 50 ff 15 c4 b6
1097d960: aa 10 81 c4 08 02 00 00 c3 33 c0 81 c4 08 02 00
1097d970: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d940 <.text+0x97c940>:
1097d940:	81 ec 08 02 00 00                               	sub    esp,0x208
1097d946:	8d 04 24                                        	lea    eax,[esp]
1097d949:	68 04 01 00 00                                  	push   0x104
1097d94e:	50                                              	push   eax
1097d94f:	e8 9c 8b ff ff                                  	call   0x109764f0
1097d954:	83 c4 08                                        	add    esp,0x8
1097d957:	85 c0                                           	test   eax,eax
1097d959:	74 0e                                           	je     0x1097d969
1097d95b:	50                                              	push   eax
1097d95c:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1097d962:	81 c4 08 02 00 00                               	add    esp,0x208
1097d968:	c3                                              	ret
1097d969:	33 c0                                           	xor    eax,eax
1097d96b:	81 c4 08 02 00 00                               	add    esp,0x208
1097d971:	c3                                              	ret
1097d972:	cc                                              	int3
1097d973:	cc                                              	int3
1097d974:	cc                                              	int3
1097d975:	cc                                              	int3
1097d976:	cc                                              	int3
1097d977:	cc                                              	int3
1097d978:	cc                                              	int3
1097d979:	cc                                              	int3
1097d97a:	cc                                              	int3
1097d97b:	cc                                              	int3
1097d97c:	cc                                              	int3
1097d97d:	cc                                              	int3
1097d97e:	cc                                              	int3
1097d97f:	cc                                              	int3
