# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10785560 (DownloadContent_DeleteExportBinPackageImpl)
Paired Ghidra pseudocode: 10785560_DownloadContent_DeleteExportBinPackageImpl.c
Window: [0x10785560, 0x107855f0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x107855f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10785560: 83 ec 10 e8 b8 5b dd ff 85 c0 74 71 8b 4c 24 14
10785570: 8b 10 8b 52 58 53 51 8b c8 ff d2 50 8d 4c 24 08
10785580: c7 44 24 08 00 00 00 00 c7 44 24 0c 00 00 00 00
10785590: c7 44 24 10 00 00 00 00 c7 44 24 14 00 8d b5 10
107855a0: e8 7b 50 8e ff 8b 0d 94 de c8 10 8d 44 24 04 50
107855b0: e8 db cc 00 00 8b 4c 24 0c 8a d8 8b 44 24 04 2b
107855c0: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 bd
107855d0: 38 19 00 83 c4 04 8a c3 5b 83 c4 10 c3 32 c0 83
107855e0: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10785560 <.text+0x784560>:
10785560:	83 ec 10                                        	sub    esp,0x10
10785563:	e8 b8 5b dd ff                                  	call   0x1055b120
10785568:	85 c0                                           	test   eax,eax
1078556a:	74 71                                           	je     0x107855dd
1078556c:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10785570:	8b 10                                           	mov    edx,DWORD PTR [eax]
10785572:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10785575:	53                                              	push   ebx
10785576:	51                                              	push   ecx
10785577:	8b c8                                           	mov    ecx,eax
10785579:	ff d2                                           	call   edx
1078557b:	50                                              	push   eax
1078557c:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10785580:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
10785588:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
10785590:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
10785598:	c7 44 24 14 00 8d b5 10                         	mov    DWORD PTR [esp+0x14],0x10b58d00
107855a0:	e8 7b 50 8e ff                                  	call   0x1006a620
107855a5:	8b 0d 94 de c8 10                               	mov    ecx,DWORD PTR ds:0x10c8de94
107855ab:	8d 44 24 04                                     	lea    eax,[esp+0x4]
107855af:	50                                              	push   eax
107855b0:	e8 db cc 00 00                                  	call   0x10792290
107855b5:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
107855b9:	8a d8                                           	mov    bl,al
107855bb:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
107855bf:	2b c8                                           	sub    ecx,eax
107855c1:	83 e1 fe                                        	and    ecx,0xfffffffe
107855c4:	83 f9 02                                        	cmp    ecx,0x2
107855c7:	7e 0d                                           	jle    0x107855d6
107855c9:	85 c0                                           	test   eax,eax
107855cb:	74 09                                           	je     0x107855d6
107855cd:	50                                              	push   eax
107855ce:	e8 bd 38 19 00                                  	call   0x10918e90
107855d3:	83 c4 04                                        	add    esp,0x4
107855d6:	8a c3                                           	mov    al,bl
107855d8:	5b                                              	pop    ebx
107855d9:	83 c4 10                                        	add    esp,0x10
107855dc:	c3                                              	ret
107855dd:	32 c0                                           	xor    al,al
107855df:	83 c4 10                                        	add    esp,0x10
107855e2:	c3                                              	ret
107855e3:	cc                                              	int3
107855e4:	cc                                              	int3
107855e5:	cc                                              	int3
107855e6:	cc                                              	int3
107855e7:	cc                                              	int3
107855e8:	cc                                              	int3
107855e9:	cc                                              	int3
107855ea:	cc                                              	int3
107855eb:	cc                                              	int3
107855ec:	cc                                              	int3
107855ed:	cc                                              	int3
107855ee:	cc                                              	int3
107855ef:	cc                                              	int3
