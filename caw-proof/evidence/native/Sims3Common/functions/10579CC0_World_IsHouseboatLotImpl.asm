# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579cc0 (World_IsHouseboatLotImpl)
Paired Ghidra pseudocode: 10579CC0_World_IsHouseboatLotImpl.c
Window: [0x10579cc0, 0x10579cf0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579cc0: 8b 0d c4 00 c7 10 85 c9 74 21 8b 44 24 08 8b 54
10579cd0: 24 04 6a 00 50 52 e8 35 d3 cb ff 85 c0 74 0c 80
10579ce0: b8 bc 04 00 00 00 74 03 b0 01 c3 32 c0 c3 cc cc

LINEAR DISASSEMBLY
10579cc0 <.text+0x578cc0>:
10579cc0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10579cc6:	85 c9                                           	test   ecx,ecx
10579cc8:	74 21                                           	je     0x10579ceb
10579cca:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10579cce:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10579cd2:	6a 00                                           	push   0x0
10579cd4:	50                                              	push   eax
10579cd5:	52                                              	push   edx
10579cd6:	e8 35 d3 cb ff                                  	call   0x10237010
10579cdb:	85 c0                                           	test   eax,eax
10579cdd:	74 0c                                           	je     0x10579ceb
10579cdf:	80 b8 bc 04 00 00 00                            	cmp    BYTE PTR [eax+0x4bc],0x0
10579ce6:	74 03                                           	je     0x10579ceb
10579ce8:	b0 01                                           	mov    al,0x1
10579cea:	c3                                              	ret
10579ceb:	32 c0                                           	xor    al,al
10579ced:	c3                                              	ret
10579cee:	cc                                              	int3
10579cef:	cc                                              	int3
