# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107854c0 (DownloadContent_InitImpl)
Paired Ghidra pseudocode: 107854C0_DownloadContent_InitImpl.c
Window: [0x107854c0, 0x10785560) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10785560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107854c0: e8 fb c4 d9 ff 85 c0 0f 84 8c 00 00 00 8b 10 8b
107854d0: c8 8b 42 24 ff d0 66 83 38 00 8b c8 74 0b 8b ff
107854e0: 83 c1 02 66 83 39 00 75 f7 2b c8 d1 f9 8d 0c 48
107854f0: 51 50 b9 b0 e8 c4 10 e8 c4 a3 89 ff 68 b0 e8 c4
10785500: 10 e8 3a d1 19 00 68 e8 85 b5 10 68 c4 85 b5 10
10785510: 68 9c de aa 10 e8 26 32 c0 ff 83 c4 10 66 83 38
10785520: 00 8b c8 74 09 83 c1 02 66 83 39 00 75 f7 2b c8
10785530: d1 f9 8d 14 48 52 50 b9 b0 e8 c4 10 e8 6f 9e 89
10785540: ff 68 b0 e8 c4 10 e8 f5 d0 19 00 a1 b0 e8 c4 10
10785550: 50 e8 ba c9 18 00 83 c4 08 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
107854c0 <.text+0x7844c0>:
107854c0:	e8 fb c4 d9 ff                                  	call   0x105219c0
107854c5:	85 c0                                           	test   eax,eax
107854c7:	0f 84 8c 00 00 00                               	je     0x10785559
107854cd:	8b 10                                           	mov    edx,DWORD PTR [eax]
107854cf:	8b c8                                           	mov    ecx,eax
107854d1:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
107854d4:	ff d0                                           	call   eax
107854d6:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
107854da:	8b c8                                           	mov    ecx,eax
107854dc:	74 0b                                           	je     0x107854e9
107854de:	8b ff                                           	mov    edi,edi
107854e0:	83 c1 02                                        	add    ecx,0x2
107854e3:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
107854e7:	75 f7                                           	jne    0x107854e0
107854e9:	2b c8                                           	sub    ecx,eax
107854eb:	d1 f9                                           	sar    ecx,1
107854ed:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
107854f0:	51                                              	push   ecx
107854f1:	50                                              	push   eax
107854f2:	b9 b0 e8 c4 10                                  	mov    ecx,0x10c4e8b0
107854f7:	e8 c4 a3 89 ff                                  	call   0x1001f8c0
107854fc:	68 b0 e8 c4 10                                  	push   0x10c4e8b0
10785501:	e8 3a d1 19 00                                  	call   0x10922640
10785506:	68 e8 85 b5 10                                  	push   0x10b585e8
1078550b:	68 c4 85 b5 10                                  	push   0x10b585c4
10785510:	68 9c de aa 10                                  	push   0x10aade9c
10785515:	e8 26 32 c0 ff                                  	call   0x10388740
1078551a:	83 c4 10                                        	add    esp,0x10
1078551d:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
10785521:	8b c8                                           	mov    ecx,eax
10785523:	74 09                                           	je     0x1078552e
10785525:	83 c1 02                                        	add    ecx,0x2
10785528:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
1078552c:	75 f7                                           	jne    0x10785525
1078552e:	2b c8                                           	sub    ecx,eax
10785530:	d1 f9                                           	sar    ecx,1
10785532:	8d 14 48                                        	lea    edx,[eax+ecx*2]
10785535:	52                                              	push   edx
10785536:	50                                              	push   eax
10785537:	b9 b0 e8 c4 10                                  	mov    ecx,0x10c4e8b0
1078553c:	e8 6f 9e 89 ff                                  	call   0x1001f3b0
10785541:	68 b0 e8 c4 10                                  	push   0x10c4e8b0
10785546:	e8 f5 d0 19 00                                  	call   0x10922640
1078554b:	a1 b0 e8 c4 10                                  	mov    eax,ds:0x10c4e8b0
10785550:	50                                              	push   eax
10785551:	e8 ba c9 18 00                                  	call   0x10911f10
10785556:	83 c4 08                                        	add    esp,0x8
10785559:	c3                                              	ret
1078555a:	cc                                              	int3
1078555b:	cc                                              	int3
1078555c:	cc                                              	int3
1078555d:	cc                                              	int3
1078555e:	cc                                              	int3
1078555f:	cc                                              	int3
