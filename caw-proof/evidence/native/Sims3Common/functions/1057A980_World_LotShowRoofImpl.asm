# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057a980 (World_LotShowRoofImpl)
Paired Ghidra pseudocode: 1057A980_World_LotShowRoofImpl.c
Window: [0x1057a980, 0x1057a9c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057a9c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057a980: 8b 0d c4 00 c7 10 85 c9 74 2b 8b 44 24 08 8b 54
1057a990: 24 04 6a 00 50 52 e8 75 c6 cb ff 85 c0 74 16 8b
1057a9a0: 80 ac 02 00 00 85 c0 74 0c 8b 4c 24 0c 51 8b c8
1057a9b0: e8 fb 8c be ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057a980 <.text+0x579980>:
1057a980:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057a986:	85 c9                                           	test   ecx,ecx
1057a988:	74 2b                                           	je     0x1057a9b5
1057a98a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057a98e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057a992:	6a 00                                           	push   0x0
1057a994:	50                                              	push   eax
1057a995:	52                                              	push   edx
1057a996:	e8 75 c6 cb ff                                  	call   0x10237010
1057a99b:	85 c0                                           	test   eax,eax
1057a99d:	74 16                                           	je     0x1057a9b5
1057a99f:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
1057a9a5:	85 c0                                           	test   eax,eax
1057a9a7:	74 0c                                           	je     0x1057a9b5
1057a9a9:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057a9ad:	51                                              	push   ecx
1057a9ae:	8b c8                                           	mov    ecx,eax
1057a9b0:	e8 fb 8c be ff                                  	call   0x101636b0
1057a9b5:	c3                                              	ret
1057a9b6:	cc                                              	int3
1057a9b7:	cc                                              	int3
1057a9b8:	cc                                              	int3
1057a9b9:	cc                                              	int3
1057a9ba:	cc                                              	int3
1057a9bb:	cc                                              	int3
1057a9bc:	cc                                              	int3
1057a9bd:	cc                                              	int3
1057a9be:	cc                                              	int3
1057a9bf:	cc                                              	int3
