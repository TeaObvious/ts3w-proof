# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105772b0 (World_DecayLeavesImpl)
Paired Ghidra pseudocode: 105772B0_World_DecayLeavesImpl.c
Window: [0x105772b0, 0x105772e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105772e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105772b0: 8b 0d c4 00 c7 10 85 c9 74 24 8b 44 24 08 8b 54
105772c0: 24 04 6a 00 50 52 e8 45 fd cb ff 85 c0 74 0f d9
105772d0: 44 24 0c 51 8b c8 d9 1c 24 e8 f2 46 b0 ff c3 cc

LINEAR DISASSEMBLY
105772b0 <.text+0x5762b0>:
105772b0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
105772b6:	85 c9                                           	test   ecx,ecx
105772b8:	74 24                                           	je     0x105772de
105772ba:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105772be:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105772c2:	6a 00                                           	push   0x0
105772c4:	50                                              	push   eax
105772c5:	52                                              	push   edx
105772c6:	e8 45 fd cb ff                                  	call   0x10237010
105772cb:	85 c0                                           	test   eax,eax
105772cd:	74 0f                                           	je     0x105772de
105772cf:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
105772d3:	51                                              	push   ecx
105772d4:	8b c8                                           	mov    ecx,eax
105772d6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105772d9:	e8 f2 46 b0 ff                                  	call   0x1007b9d0
105772de:	c3                                              	ret
105772df:	cc                                              	int3
