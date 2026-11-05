# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107847c0 (DownloadContent_SetSimSavedCallbackImpl)
Paired Ghidra pseudocode: 107847C0_DownloadContent_SetSimSavedCallbackImpl.c
Window: [0x107847c0, 0x107847e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x107847e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107847c0: e8 fb fc fe ff 85 c0 74 14 8b 88 64 06 00 00 85
107847d0: c9 74 0a 8b 44 24 04 50 e8 53 61 03 00 c3 cc cc

LINEAR DISASSEMBLY
107847c0 <.text+0x7837c0>:
107847c0:	e8 fb fc fe ff                                  	call   0x107744c0
107847c5:	85 c0                                           	test   eax,eax
107847c7:	74 14                                           	je     0x107847dd
107847c9:	8b 88 64 06 00 00                               	mov    ecx,DWORD PTR [eax+0x664]
107847cf:	85 c9                                           	test   ecx,ecx
107847d1:	74 0a                                           	je     0x107847dd
107847d3:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
107847d7:	50                                              	push   eax
107847d8:	e8 53 61 03 00                                  	call   0x107ba930
107847dd:	c3                                              	ret
107847de:	cc                                              	int3
107847df:	cc                                              	int3
