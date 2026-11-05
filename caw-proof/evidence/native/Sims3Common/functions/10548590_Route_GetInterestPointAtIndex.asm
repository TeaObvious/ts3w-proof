# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548590 (Route_GetInterestPointAtIndex)
Paired Ghidra pseudocode: 10548590_Route_GetInterestPointAtIndex.c
Window: [0x10548590, 0x105485d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105485d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548590: 8b 44 24 0c 8b 4c 24 08 83 ec 40 56 57 50 51 8d
105485a0: 54 24 10 52 e8 27 e2 ff ff 8b f0 8b 44 24 58 83
105485b0: c4 0c b9 10 00 00 00 8b f8 f3 a5 5f 5e 83 c4 40
105485c0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548590 <.text+0x547590>:
10548590:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10548594:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10548598:	83 ec 40                                        	sub    esp,0x40
1054859b:	56                                              	push   esi
1054859c:	57                                              	push   edi
1054859d:	50                                              	push   eax
1054859e:	51                                              	push   ecx
1054859f:	8d 54 24 10                                     	lea    edx,[esp+0x10]
105485a3:	52                                              	push   edx
105485a4:	e8 27 e2 ff ff                                  	call   0x105467d0
105485a9:	8b f0                                           	mov    esi,eax
105485ab:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
105485af:	83 c4 0c                                        	add    esp,0xc
105485b2:	b9 10 00 00 00                                  	mov    ecx,0x10
105485b7:	8b f8                                           	mov    edi,eax
105485b9:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
105485bb:	5f                                              	pop    edi
105485bc:	5e                                              	pop    esi
105485bd:	83 c4 40                                        	add    esp,0x40
105485c0:	c3                                              	ret
105485c1:	cc                                              	int3
105485c2:	cc                                              	int3
105485c3:	cc                                              	int3
105485c4:	cc                                              	int3
105485c5:	cc                                              	int3
105485c6:	cc                                              	int3
105485c7:	cc                                              	int3
105485c8:	cc                                              	int3
105485c9:	cc                                              	int3
105485ca:	cc                                              	int3
105485cb:	cc                                              	int3
105485cc:	cc                                              	int3
105485cd:	cc                                              	int3
105485ce:	cc                                              	int3
105485cf:	cc                                              	int3
