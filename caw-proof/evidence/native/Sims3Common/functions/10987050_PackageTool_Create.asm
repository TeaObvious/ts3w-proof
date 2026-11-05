# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10987050 (PackageTool_Create)
Paired Ghidra pseudocode: 10987050_PackageTool_Create.c
Window: [0x10987050, 0x109870f0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x109870f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10987050: 81 ec 98 03 00 00 56 8b b4 24 a0 03 00 00 56 e8
10987060: fc 99 f8 ff 83 c4 04 84 c0 75 66 53 6a 00 6a 00
10987070: 8d 4c 24 10 e8 57 7f f5 ff 8d 4c 24 08 e8 2e 42
10987080: d8 ff 84 c0 74 32 56 8d 4c 24 0c e8 60 7d f5 ff
10987090: 84 c0 74 24 6a 00 6a 06 6a 02 8d 4c 24 14 e8 bd
109870a0: 68 f5 ff 84 c0 74 11 8d 4c 24 08 e8 b0 5c f5 ff
109870b0: 84 c0 74 04 b3 01 eb 02 32 db 8d 4c 24 08 e8 9d
109870c0: 5c f5 ff 84 db 5b 8d 4c 24 04 74 0f e8 ff 74 f5
109870d0: ff b0 01 5e 81 c4 98 03 00 00 c3 e8 f0 74 f5 ff
109870e0: 32 c0 5e 81 c4 98 03 00 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10987050 <.text+0x986050>:
10987050:	81 ec 98 03 00 00                               	sub    esp,0x398
10987056:	56                                              	push   esi
10987057:	8b b4 24 a0 03 00 00                            	mov    esi,DWORD PTR [esp+0x3a0]
1098705e:	56                                              	push   esi
1098705f:	e8 fc 99 f8 ff                                  	call   0x10910a60
10987064:	83 c4 04                                        	add    esp,0x4
10987067:	84 c0                                           	test   al,al
10987069:	75 66                                           	jne    0x109870d1
1098706b:	53                                              	push   ebx
1098706c:	6a 00                                           	push   0x0
1098706e:	6a 00                                           	push   0x0
10987070:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10987074:	e8 57 7f f5 ff                                  	call   0x108defd0
10987079:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1098707d:	e8 2e 42 d8 ff                                  	call   0x1070b2b0
10987082:	84 c0                                           	test   al,al
10987084:	74 32                                           	je     0x109870b8
10987086:	56                                              	push   esi
10987087:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1098708b:	e8 60 7d f5 ff                                  	call   0x108dedf0
10987090:	84 c0                                           	test   al,al
10987092:	74 24                                           	je     0x109870b8
10987094:	6a 00                                           	push   0x0
10987096:	6a 06                                           	push   0x6
10987098:	6a 02                                           	push   0x2
1098709a:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1098709e:	e8 bd 68 f5 ff                                  	call   0x108dd960
109870a3:	84 c0                                           	test   al,al
109870a5:	74 11                                           	je     0x109870b8
109870a7:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
109870ab:	e8 b0 5c f5 ff                                  	call   0x108dcd60
109870b0:	84 c0                                           	test   al,al
109870b2:	74 04                                           	je     0x109870b8
109870b4:	b3 01                                           	mov    bl,0x1
109870b6:	eb 02                                           	jmp    0x109870ba
109870b8:	32 db                                           	xor    bl,bl
109870ba:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
109870be:	e8 9d 5c f5 ff                                  	call   0x108dcd60
109870c3:	84 db                                           	test   bl,bl
109870c5:	5b                                              	pop    ebx
109870c6:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
109870ca:	74 0f                                           	je     0x109870db
109870cc:	e8 ff 74 f5 ff                                  	call   0x108de5d0
109870d1:	b0 01                                           	mov    al,0x1
109870d3:	5e                                              	pop    esi
109870d4:	81 c4 98 03 00 00                               	add    esp,0x398
109870da:	c3                                              	ret
109870db:	e8 f0 74 f5 ff                                  	call   0x108de5d0
109870e0:	32 c0                                           	xor    al,al
109870e2:	5e                                              	pop    esi
109870e3:	81 c4 98 03 00 00                               	add    esp,0x398
109870e9:	c3                                              	ret
109870ea:	cc                                              	int3
109870eb:	cc                                              	int3
109870ec:	cc                                              	int3
109870ed:	cc                                              	int3
109870ee:	cc                                              	int3
109870ef:	cc                                              	int3
