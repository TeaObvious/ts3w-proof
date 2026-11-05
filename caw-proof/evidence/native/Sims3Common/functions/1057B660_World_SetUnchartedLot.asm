# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b660 (World_SetUnchartedLot)
Paired Ghidra pseudocode: 1057B660_World_SetUnchartedLot.c
Window: [0x1057b660, 0x1057b690) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b690
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b660: 8b 0d c4 00 c7 10 85 c9 74 24 8b 44 24 08 8b 54
1057b670: 24 04 6a 00 50 52 e8 95 b9 cb ff 85 c0 74 0f d9
1057b680: 44 24 0c 51 8b c8 d9 1c 24 e8 12 9f af ff c3 cc

LINEAR DISASSEMBLY
1057b660 <.text+0x57a660>:
1057b660:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b666:	85 c9                                           	test   ecx,ecx
1057b668:	74 24                                           	je     0x1057b68e
1057b66a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057b66e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b672:	6a 00                                           	push   0x0
1057b674:	50                                              	push   eax
1057b675:	52                                              	push   edx
1057b676:	e8 95 b9 cb ff                                  	call   0x10237010
1057b67b:	85 c0                                           	test   eax,eax
1057b67d:	74 0f                                           	je     0x1057b68e
1057b67f:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
1057b683:	51                                              	push   ecx
1057b684:	8b c8                                           	mov    ecx,eax
1057b686:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1057b689:	e8 12 9f af ff                                  	call   0x100755a0
1057b68e:	c3                                              	ret
1057b68f:	cc                                              	int3
