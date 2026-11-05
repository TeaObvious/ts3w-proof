# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be0b0 (UserToolUtils_IncViewCountStoreFeaturedItemImpl)
Paired Ghidra pseudocode: 102BE0B0_UserToolUtils_IncViewCountStoreFeaturedItemImpl.c
Window: [0x102be0b0, 0x102be0e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be0e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be0b0: 8b 44 24 08 8b 54 24 04 8b 0d 34 05 c7 10 50 52
102be0c0: e8 5b 7a fa ff 85 c0 74 07 8b c8 e9 e0 42 fb ff
102be0d0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102be0b0 <.text+0x2bd0b0>:
102be0b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
102be0b4:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
102be0b8:	8b 0d 34 05 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70534
102be0be:	50                                              	push   eax
102be0bf:	52                                              	push   edx
102be0c0:	e8 5b 7a fa ff                                  	call   0x10265b20
102be0c5:	85 c0                                           	test   eax,eax
102be0c7:	74 07                                           	je     0x102be0d0
102be0c9:	8b c8                                           	mov    ecx,eax
102be0cb:	e9 e0 42 fb ff                                  	jmp    0x102723b0
102be0d0:	c3                                              	ret
102be0d1:	cc                                              	int3
102be0d2:	cc                                              	int3
102be0d3:	cc                                              	int3
102be0d4:	cc                                              	int3
102be0d5:	cc                                              	int3
102be0d6:	cc                                              	int3
102be0d7:	cc                                              	int3
102be0d8:	cc                                              	int3
102be0d9:	cc                                              	int3
102be0da:	cc                                              	int3
102be0db:	cc                                              	int3
102be0dc:	cc                                              	int3
102be0dd:	cc                                              	int3
102be0de:	cc                                              	int3
102be0df:	cc                                              	int3
