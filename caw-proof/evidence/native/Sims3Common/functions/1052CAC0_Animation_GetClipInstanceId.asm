# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052cac0 (Animation_GetClipInstanceId)
Paired Ghidra pseudocode: 1052CAC0_Animation_GetClipInstanceId.c
Window: [0x1052cac0, 0x1052cb10) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052cb10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052cac0: 81 ec 00 01 00 00 e8 55 e6 02 00 8b 8c 24 04 01
1052cad0: 00 00 8b 10 8b 52 58 51 8b c8 ff d2 6a ff 50 8d
1052cae0: 44 24 08 68 00 01 00 00 50 e8 b2 ad 3f 00 8d 4c
1052caf0: 24 10 6a 00 51 e8 96 a2 e4 ff 81 c4 18 01 00 00
1052cb00: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052cac0 <.text+0x52bac0>:
1052cac0:	81 ec 00 01 00 00                               	sub    esp,0x100
1052cac6:	e8 55 e6 02 00                                  	call   0x1055b120
1052cacb:	8b 8c 24 04 01 00 00                            	mov    ecx,DWORD PTR [esp+0x104]
1052cad2:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052cad4:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1052cad7:	51                                              	push   ecx
1052cad8:	8b c8                                           	mov    ecx,eax
1052cada:	ff d2                                           	call   edx
1052cadc:	6a ff                                           	push   0xffffffff
1052cade:	50                                              	push   eax
1052cadf:	8d 44 24 08                                     	lea    eax,[esp+0x8]
1052cae3:	68 00 01 00 00                                  	push   0x100
1052cae8:	50                                              	push   eax
1052cae9:	e8 b2 ad 3f 00                                  	call   0x109278a0
1052caee:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1052caf2:	6a 00                                           	push   0x0
1052caf4:	51                                              	push   ecx
1052caf5:	e8 96 a2 e4 ff                                  	call   0x10376d90
1052cafa:	81 c4 18 01 00 00                               	add    esp,0x118
1052cb00:	c3                                              	ret
1052cb01:	cc                                              	int3
1052cb02:	cc                                              	int3
1052cb03:	cc                                              	int3
1052cb04:	cc                                              	int3
1052cb05:	cc                                              	int3
1052cb06:	cc                                              	int3
1052cb07:	cc                                              	int3
1052cb08:	cc                                              	int3
1052cb09:	cc                                              	int3
1052cb0a:	cc                                              	int3
1052cb0b:	cc                                              	int3
1052cb0c:	cc                                              	int3
1052cb0d:	cc                                              	int3
1052cb0e:	cc                                              	int3
1052cb0f:	cc                                              	int3
