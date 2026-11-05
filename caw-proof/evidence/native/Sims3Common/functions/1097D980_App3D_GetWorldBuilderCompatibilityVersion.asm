# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d980 (App3D_GetWorldBuilderCompatibilityVersion)
Paired Ghidra pseudocode: 1097D980_App3D_GetWorldBuilderCompatibilityVersion.c
Window: [0x1097d980, 0x1097d9a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d9a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d980: a1 38 9b c5 10 8b 0d 34 9b c5 10 6a ff 50 51 e8
1097d990: 5c b0 a0 ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d980 <.text+0x97c980>:
1097d980:	a1 38 9b c5 10                                  	mov    eax,ds:0x10c59b38
1097d985:	8b 0d 34 9b c5 10                               	mov    ecx,DWORD PTR ds:0x10c59b34
1097d98b:	6a ff                                           	push   0xffffffff
1097d98d:	50                                              	push   eax
1097d98e:	51                                              	push   ecx
1097d98f:	e8 5c b0 a0 ff                                  	call   0x103889f0
1097d994:	83 c4 0c                                        	add    esp,0xc
1097d997:	c3                                              	ret
1097d998:	cc                                              	int3
1097d999:	cc                                              	int3
1097d99a:	cc                                              	int3
1097d99b:	cc                                              	int3
1097d99c:	cc                                              	int3
1097d99d:	cc                                              	int3
1097d99e:	cc                                              	int3
1097d99f:	cc                                              	int3
