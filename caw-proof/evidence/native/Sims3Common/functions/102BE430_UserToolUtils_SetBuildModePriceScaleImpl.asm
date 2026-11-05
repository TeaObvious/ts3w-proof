# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be430 (UserToolUtils_SetBuildModePriceScaleImpl)
Paired Ghidra pseudocode: 102BE430_UserToolUtils_SetBuildModePriceScaleImpl.c
Window: [0x102be430, 0x102be450) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be450
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be430: a1 20 0c c7 10 85 c0 74 14 8b 48 08 85 c9 74 0d
102be440: d9 44 24 04 51 d9 1c 24 e8 63 8f 00 00 c3 cc cc

LINEAR DISASSEMBLY
102be430 <.text+0x2bd430>:
102be430:	a1 20 0c c7 10                                  	mov    eax,ds:0x10c70c20
102be435:	85 c0                                           	test   eax,eax
102be437:	74 14                                           	je     0x102be44d
102be439:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
102be43c:	85 c9                                           	test   ecx,ecx
102be43e:	74 0d                                           	je     0x102be44d
102be440:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
102be444:	51                                              	push   ecx
102be445:	d9 1c 24                                        	fstp   DWORD PTR [esp]
102be448:	e8 63 8f 00 00                                  	call   0x102c73b0
102be44d:	c3                                              	ret
102be44e:	cc                                              	int3
102be44f:	cc                                              	int3
