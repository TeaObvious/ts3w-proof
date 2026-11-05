# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109870f0 (PackageTool_Compact)
Paired Ghidra pseudocode: 109870F0_PackageTool_Compact.c
Window: [0x109870f0, 0x10987180) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10987180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109870f0: 81 ec 98 03 00 00 6a 00 6a 00 8d 4c 24 08 e8 cd
10987100: 7e f5 ff 8d 0c 24 e8 a5 41 d8 ff 84 c0 74 51 8b
10987110: 84 24 9c 03 00 00 50 8d 4c 24 04 e8 d0 7c f5 ff
10987120: 84 c0 74 3c 6a 00 6a 06 6a 03 8d 4c 24 0c e8 2d
10987130: 68 f5 ff 84 c0 74 29 8d 0c 24 e8 11 8a f5 ff 84
10987140: c0 74 1d 8d 0c 24 e8 15 5c f5 ff 84 c0 74 11 8d
10987150: 0c 24 e8 79 74 f5 ff b0 01 81 c4 98 03 00 00 c3
10987160: 8d 0c 24 e8 f8 5b f5 ff 8d 0c 24 e8 60 74 f5 ff
10987170: 32 c0 81 c4 98 03 00 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109870f0 <.text+0x9860f0>:
109870f0:	81 ec 98 03 00 00                               	sub    esp,0x398
109870f6:	6a 00                                           	push   0x0
109870f8:	6a 00                                           	push   0x0
109870fa:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
109870fe:	e8 cd 7e f5 ff                                  	call   0x108defd0
10987103:	8d 0c 24                                        	lea    ecx,[esp]
10987106:	e8 a5 41 d8 ff                                  	call   0x1070b2b0
1098710b:	84 c0                                           	test   al,al
1098710d:	74 51                                           	je     0x10987160
1098710f:	8b 84 24 9c 03 00 00                            	mov    eax,DWORD PTR [esp+0x39c]
10987116:	50                                              	push   eax
10987117:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1098711b:	e8 d0 7c f5 ff                                  	call   0x108dedf0
10987120:	84 c0                                           	test   al,al
10987122:	74 3c                                           	je     0x10987160
10987124:	6a 00                                           	push   0x0
10987126:	6a 06                                           	push   0x6
10987128:	6a 03                                           	push   0x3
1098712a:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1098712e:	e8 2d 68 f5 ff                                  	call   0x108dd960
10987133:	84 c0                                           	test   al,al
10987135:	74 29                                           	je     0x10987160
10987137:	8d 0c 24                                        	lea    ecx,[esp]
1098713a:	e8 11 8a f5 ff                                  	call   0x108dfb50
1098713f:	84 c0                                           	test   al,al
10987141:	74 1d                                           	je     0x10987160
10987143:	8d 0c 24                                        	lea    ecx,[esp]
10987146:	e8 15 5c f5 ff                                  	call   0x108dcd60
1098714b:	84 c0                                           	test   al,al
1098714d:	74 11                                           	je     0x10987160
1098714f:	8d 0c 24                                        	lea    ecx,[esp]
10987152:	e8 79 74 f5 ff                                  	call   0x108de5d0
10987157:	b0 01                                           	mov    al,0x1
10987159:	81 c4 98 03 00 00                               	add    esp,0x398
1098715f:	c3                                              	ret
10987160:	8d 0c 24                                        	lea    ecx,[esp]
10987163:	e8 f8 5b f5 ff                                  	call   0x108dcd60
10987168:	8d 0c 24                                        	lea    ecx,[esp]
1098716b:	e8 60 74 f5 ff                                  	call   0x108de5d0
10987170:	32 c0                                           	xor    al,al
10987172:	81 c4 98 03 00 00                               	add    esp,0x398
10987178:	c3                                              	ret
10987179:	cc                                              	int3
1098717a:	cc                                              	int3
1098717b:	cc                                              	int3
1098717c:	cc                                              	int3
1098717d:	cc                                              	int3
1098717e:	cc                                              	int3
1098717f:	cc                                              	int3
