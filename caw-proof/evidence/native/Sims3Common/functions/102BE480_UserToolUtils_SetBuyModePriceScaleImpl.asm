# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be480 (UserToolUtils_SetBuyModePriceScaleImpl)
Paired Ghidra pseudocode: 102BE480_UserToolUtils_SetBuyModePriceScaleImpl.c
Window: [0x102be480, 0x102be4a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be4a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be480: a1 20 0c c7 10 85 c0 74 14 8b 48 08 85 c9 74 0d
102be490: d9 44 24 04 51 d9 1c 24 e8 43 8f 00 00 c3 cc cc

LINEAR DISASSEMBLY
102be480 <.text+0x2bd480>:
102be480:	a1 20 0c c7 10                                  	mov    eax,ds:0x10c70c20
102be485:	85 c0                                           	test   eax,eax
102be487:	74 14                                           	je     0x102be49d
102be489:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
102be48c:	85 c9                                           	test   ecx,ecx
102be48e:	74 0d                                           	je     0x102be49d
102be490:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
102be494:	51                                              	push   ecx
102be495:	d9 1c 24                                        	fstp   DWORD PTR [esp]
102be498:	e8 43 8f 00 00                                  	call   0x102c73e0
102be49d:	c3                                              	ret
102be49e:	cc                                              	int3
102be49f:	cc                                              	int3
