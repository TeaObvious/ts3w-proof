# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109825a0 (ConfigRegistry_Load)
Paired Ghidra pseudocode: 109825A0_ConfigRegistry_Load.c
Window: [0x109825a0, 0x10982630) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109825a0: 81 ec 10 04 00 00 83 3d 30 7f cb 10 00 74 72 66
109825b0: c7 84 24 00 02 00 00 00 00 e8 d2 cf ff ff 8d 14
109825c0: 24 0f b7 08 66 89 0a 83 c0 02 83 c2 02 66 85 c9
109825d0: 75 ef 8d 04 24 6a ff 50 e8 e3 eb f9 ff 8b 8c 24
109825e0: 1c 04 00 00 51 8d 54 24 0c 52 68 64 99 b3 10 8d
109825f0: 84 24 1c 02 00 00 68 03 01 00 00 50 66 c7 84 24
10982600: 24 04 00 00 00 00 e8 05 3e fa ff 83 c4 1c 8d 8c
10982610: 24 08 02 00 00 51 8b 0d 30 7f cb 10 e8 1f 94 a0
10982620: ff 81 c4 10 04 00 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109825a0 <.text+0x9815a0>:
109825a0:	81 ec 10 04 00 00                               	sub    esp,0x410
109825a6:	83 3d 30 7f cb 10 00                            	cmp    DWORD PTR ds:0x10cb7f30,0x0
109825ad:	74 72                                           	je     0x10982621
109825af:	66 c7 84 24 00 02 00 00 00 00                   	mov    WORD PTR [esp+0x200],0x0
109825b9:	e8 d2 cf ff ff                                  	call   0x1097f590
109825be:	8d 14 24                                        	lea    edx,[esp]
109825c1:	0f b7 08                                        	movzx  ecx,WORD PTR [eax]
109825c4:	66 89 0a                                        	mov    WORD PTR [edx],cx
109825c7:	83 c0 02                                        	add    eax,0x2
109825ca:	83 c2 02                                        	add    edx,0x2
109825cd:	66 85 c9                                        	test   cx,cx
109825d0:	75 ef                                           	jne    0x109825c1
109825d2:	8d 04 24                                        	lea    eax,[esp]
109825d5:	6a ff                                           	push   0xffffffff
109825d7:	50                                              	push   eax
109825d8:	e8 e3 eb f9 ff                                  	call   0x109211c0
109825dd:	8b 8c 24 1c 04 00 00                            	mov    ecx,DWORD PTR [esp+0x41c]
109825e4:	51                                              	push   ecx
109825e5:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
109825e9:	52                                              	push   edx
109825ea:	68 64 99 b3 10                                  	push   0x10b39964
109825ef:	8d 84 24 1c 02 00 00                            	lea    eax,[esp+0x21c]
109825f6:	68 03 01 00 00                                  	push   0x103
109825fb:	50                                              	push   eax
109825fc:	66 c7 84 24 24 04 00 00 00 00                   	mov    WORD PTR [esp+0x424],0x0
10982606:	e8 05 3e fa ff                                  	call   0x10926410
1098260b:	83 c4 1c                                        	add    esp,0x1c
1098260e:	8d 8c 24 08 02 00 00                            	lea    ecx,[esp+0x208]
10982615:	51                                              	push   ecx
10982616:	8b 0d 30 7f cb 10                               	mov    ecx,DWORD PTR ds:0x10cb7f30
1098261c:	e8 1f 94 a0 ff                                  	call   0x1038ba40
10982621:	81 c4 10 04 00 00                               	add    esp,0x410
10982627:	c3                                              	ret
10982628:	cc                                              	int3
10982629:	cc                                              	int3
1098262a:	cc                                              	int3
1098262b:	cc                                              	int3
1098262c:	cc                                              	int3
1098262d:	cc                                              	int3
1098262e:	cc                                              	int3
1098262f:	cc                                              	int3
