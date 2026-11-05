# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109804d0 (TransformComponent_GetAbsoluteTransform)
Paired Ghidra pseudocode: 109804D0_TransformComponent_GetAbsoluteTransform.c
Window: [0x109804d0, 0x10980510) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109804d0: 55 8b ec 83 e4 f0 8b 4d 0c 81 ec 88 00 00 00 56
109804e0: 57 8d 44 24 10 50 e8 25 9e dc ff 50 8d 4c 24 54
109804f0: 51 e8 2a fb ff ff 8b f0 8b 45 08 83 c4 08 b9 10
10980500: 00 00 00 8b f8 f3 a5 5f 5e 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
109804d0 <.text+0x97f4d0>:
109804d0:	55                                              	push   ebp
109804d1:	8b ec                                           	mov    ebp,esp
109804d3:	83 e4 f0                                        	and    esp,0xfffffff0
109804d6:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
109804d9:	81 ec 88 00 00 00                               	sub    esp,0x88
109804df:	56                                              	push   esi
109804e0:	57                                              	push   edi
109804e1:	8d 44 24 10                                     	lea    eax,[esp+0x10]
109804e5:	50                                              	push   eax
109804e6:	e8 25 9e dc ff                                  	call   0x1074a310
109804eb:	50                                              	push   eax
109804ec:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
109804f0:	51                                              	push   ecx
109804f1:	e8 2a fb ff ff                                  	call   0x10980020
109804f6:	8b f0                                           	mov    esi,eax
109804f8:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
109804fb:	83 c4 08                                        	add    esp,0x8
109804fe:	b9 10 00 00 00                                  	mov    ecx,0x10
10980503:	8b f8                                           	mov    edi,eax
10980505:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10980507:	5f                                              	pop    edi
10980508:	5e                                              	pop    esi
10980509:	8b e5                                           	mov    esp,ebp
1098050b:	5d                                              	pop    ebp
1098050c:	c3                                              	ret
1098050d:	cc                                              	int3
1098050e:	cc                                              	int3
1098050f:	cc                                              	int3
