# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be3e0 (UserToolUtils_MainMenuFeaturedSetUpdateImpl)
Paired Ghidra pseudocode: 102BE3E0_UserToolUtils_MainMenuFeaturedSetUpdateImpl.c
Window: [0x102be3e0, 0x102be410) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be3e0: 8b 44 24 08 8b 54 24 04 8b 0d 34 05 c7 10 50 52
102be3f0: e8 2b 77 fa ff 85 c0 74 13 8b 0d 50 e1 c8 10 85
102be400: c9 74 09 83 c0 58 50 e8 34 85 50 00 c3 cc cc cc

LINEAR DISASSEMBLY
102be3e0 <.text+0x2bd3e0>:
102be3e0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
102be3e4:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
102be3e8:	8b 0d 34 05 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70534
102be3ee:	50                                              	push   eax
102be3ef:	52                                              	push   edx
102be3f0:	e8 2b 77 fa ff                                  	call   0x10265b20
102be3f5:	85 c0                                           	test   eax,eax
102be3f7:	74 13                                           	je     0x102be40c
102be3f9:	8b 0d 50 e1 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8e150
102be3ff:	85 c9                                           	test   ecx,ecx
102be401:	74 09                                           	je     0x102be40c
102be403:	83 c0 58                                        	add    eax,0x58
102be406:	50                                              	push   eax
102be407:	e8 34 85 50 00                                  	call   0x107c6940
102be40c:	c3                                              	ret
102be40d:	cc                                              	int3
102be40e:	cc                                              	int3
102be40f:	cc                                              	int3
