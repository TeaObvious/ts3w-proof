# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d890 (App3D_StartProcessMessages)
Paired Ghidra pseudocode: 1097D890_App3D_StartProcessMessages.c
Window: [0x1097d890, 0x1097d8b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d8b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d890: e8 8b d8 bd ff 8b 10 8b c8 8b 42 4c 68 70 d8 97
1097d8a0: 10 ff d0 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d890 <.text+0x97c890>:
1097d890:	e8 8b d8 bd ff                                  	call   0x1055b120
1097d895:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097d897:	8b c8                                           	mov    ecx,eax
1097d899:	8b 42 4c                                        	mov    eax,DWORD PTR [edx+0x4c]
1097d89c:	68 70 d8 97 10                                  	push   0x1097d870
1097d8a1:	ff d0                                           	call   eax
1097d8a3:	c3                                              	ret
1097d8a4:	cc                                              	int3
1097d8a5:	cc                                              	int3
1097d8a6:	cc                                              	int3
1097d8a7:	cc                                              	int3
1097d8a8:	cc                                              	int3
1097d8a9:	cc                                              	int3
1097d8aa:	cc                                              	int3
1097d8ab:	cc                                              	int3
1097d8ac:	cc                                              	int3
1097d8ad:	cc                                              	int3
1097d8ae:	cc                                              	int3
1097d8af:	cc                                              	int3
