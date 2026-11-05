# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10537880 (OnlineFeaturesHost_GetStoreManifestFile)
Paired Ghidra pseudocode: 10537880_OnlineFeaturesHost_GetStoreManifestFile.c
Window: [0x10537880, 0x105378a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105378a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10537880: a1 dc 88 c7 10 85 c0 74 07 8d 48 f8 85 c9 75 03
10537890: 32 c0 c3 e8 c8 83 14 00 b0 01 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10537880 <.text+0x536880>:
10537880:	a1 dc 88 c7 10                                  	mov    eax,ds:0x10c788dc
10537885:	85 c0                                           	test   eax,eax
10537887:	74 07                                           	je     0x10537890
10537889:	8d 48 f8                                        	lea    ecx,[eax-0x8]
1053788c:	85 c9                                           	test   ecx,ecx
1053788e:	75 03                                           	jne    0x10537893
10537890:	32 c0                                           	xor    al,al
10537892:	c3                                              	ret
10537893:	e8 c8 83 14 00                                  	call   0x1067fc60
10537898:	b0 01                                           	mov    al,0x1
1053789a:	c3                                              	ret
1053789b:	cc                                              	int3
1053789c:	cc                                              	int3
1053789d:	cc                                              	int3
1053789e:	cc                                              	int3
1053789f:	cc                                              	int3
