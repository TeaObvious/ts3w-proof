# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997f20 (WorldWrap_CreateNewPond)
Paired Ghidra pseudocode: 10997F20_WorldWrap_CreateNewPond.c
Window: [0x10997f20, 0x10997f50) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997f50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997f20: 6a 00 6a 00 6a 00 6a 00 68 2c 7c b9 10 68 50 05
10997f30: 00 00 e8 79 0f f8 ff 83 c4 18 85 c0 74 0d 8b 4c
10997f40: 24 04 51 8b c8 e8 c6 0c 79 ff c3 33 c0 c3 cc cc

LINEAR DISASSEMBLY
10997f20 <.text+0x996f20>:
10997f20:	6a 00                                           	push   0x0
10997f22:	6a 00                                           	push   0x0
10997f24:	6a 00                                           	push   0x0
10997f26:	6a 00                                           	push   0x0
10997f28:	68 2c 7c b9 10                                  	push   0x10b97c2c
10997f2d:	68 50 05 00 00                                  	push   0x550
10997f32:	e8 79 0f f8 ff                                  	call   0x10918eb0
10997f37:	83 c4 18                                        	add    esp,0x18
10997f3a:	85 c0                                           	test   eax,eax
10997f3c:	74 0d                                           	je     0x10997f4b
10997f3e:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997f42:	51                                              	push   ecx
10997f43:	8b c8                                           	mov    ecx,eax
10997f45:	e8 c6 0c 79 ff                                  	call   0x10128c10
10997f4a:	c3                                              	ret
10997f4b:	33 c0                                           	xor    eax,eax
10997f4d:	c3                                              	ret
10997f4e:	cc                                              	int3
10997f4f:	cc                                              	int3
