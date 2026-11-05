# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107844c0 (DownloadContent_RefreshExportBin)
Paired Ghidra pseudocode: 107844C0_DownloadContent_RefreshExportBin.c
Window: [0x107844c0, 0x10784510) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107844c0: 8b 0d 94 de c8 10 e9 95 07 01 00 cc cc cc cc cc
107844d0: 8b 44 24 04 81 78 08 64 89 f8 04 75 0e f6 40 0c
107844e0: 01 75 08 b8 01 00 00 00 c2 04 00 33 c0 c2 04 00
107844f0: 8b 44 24 04 81 78 08 64 89 f8 04 75 0e f6 40 0c
10784500: 01 74 08 b8 01 00 00 00 c2 04 00 33 c0 c2 04 00

LINEAR DISASSEMBLY
107844c0 <.text+0x7834c0>:
107844c0:	8b 0d 94 de c8 10                               	mov    ecx,DWORD PTR ds:0x10c8de94
107844c6:	e9 95 07 01 00                                  	jmp    0x10794c60
107844cb:	cc                                              	int3
107844cc:	cc                                              	int3
107844cd:	cc                                              	int3
107844ce:	cc                                              	int3
107844cf:	cc                                              	int3
107844d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
107844d4:	81 78 08 64 89 f8 04                            	cmp    DWORD PTR [eax+0x8],0x4f88964
107844db:	75 0e                                           	jne    0x107844eb
107844dd:	f6 40 0c 01                                     	test   BYTE PTR [eax+0xc],0x1
107844e1:	75 08                                           	jne    0x107844eb
107844e3:	b8 01 00 00 00                                  	mov    eax,0x1
107844e8:	c2 04 00                                        	ret    0x4
107844eb:	33 c0                                           	xor    eax,eax
107844ed:	c2 04 00                                        	ret    0x4
107844f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
107844f4:	81 78 08 64 89 f8 04                            	cmp    DWORD PTR [eax+0x8],0x4f88964
107844fb:	75 0e                                           	jne    0x1078450b
107844fd:	f6 40 0c 01                                     	test   BYTE PTR [eax+0xc],0x1
10784501:	74 08                                           	je     0x1078450b
10784503:	b8 01 00 00 00                                  	mov    eax,0x1
10784508:	c2 04 00                                        	ret    0x4
1078450b:	33 c0                                           	xor    eax,eax
1078450d:	c2 04 00                                        	ret    0x4
