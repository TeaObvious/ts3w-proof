# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107844a0 (DownloadContent_DeleteLotContentsImpl)
Paired Ghidra pseudocode: 107844A0_DownloadContent_DeleteLotContentsImpl.c
Window: [0x107844a0, 0x107844c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x107844c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107844a0: 8b 0d d8 e9 c6 10 85 c9 74 10 8b 44 24 08 8b 54
107844b0: 24 04 50 52 e8 e7 6f 91 ff c3 32 c0 c3 cc cc cc

LINEAR DISASSEMBLY
107844a0 <.text+0x7834a0>:
107844a0:	8b 0d d8 e9 c6 10                               	mov    ecx,DWORD PTR ds:0x10c6e9d8
107844a6:	85 c9                                           	test   ecx,ecx
107844a8:	74 10                                           	je     0x107844ba
107844aa:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
107844ae:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
107844b2:	50                                              	push   eax
107844b3:	52                                              	push   edx
107844b4:	e8 e7 6f 91 ff                                  	call   0x1009b4a0
107844b9:	c3                                              	ret
107844ba:	32 c0                                           	xor    al,al
107844bc:	c3                                              	ret
107844bd:	cc                                              	int3
107844be:	cc                                              	int3
107844bf:	cc                                              	int3
