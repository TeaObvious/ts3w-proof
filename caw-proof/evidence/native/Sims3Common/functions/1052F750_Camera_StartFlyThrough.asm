# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f750 (Camera_StartFlyThrough)
Paired Ghidra pseudocode: 1052F750_Camera_StartFlyThrough.c
Window: [0x1052f750, 0x1052f780) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f750: e8 db ce 22 00 85 c0 74 1c 8b c8 e8 20 83 40 00
1052f760: 85 c0 74 11 8b 4c 24 08 8b 54 24 04 51 52 8b c8
1052f770: e8 0b e4 22 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052f750 <.text+0x52e750>:
1052f750:	e8 db ce 22 00                                  	call   0x1075c630
1052f755:	85 c0                                           	test   eax,eax
1052f757:	74 1c                                           	je     0x1052f775
1052f759:	8b c8                                           	mov    ecx,eax
1052f75b:	e8 20 83 40 00                                  	call   0x10937a80
1052f760:	85 c0                                           	test   eax,eax
1052f762:	74 11                                           	je     0x1052f775
1052f764:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1052f768:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1052f76c:	51                                              	push   ecx
1052f76d:	52                                              	push   edx
1052f76e:	8b c8                                           	mov    ecx,eax
1052f770:	e8 0b e4 22 00                                  	call   0x1075db80
1052f775:	c3                                              	ret
1052f776:	cc                                              	int3
1052f777:	cc                                              	int3
1052f778:	cc                                              	int3
1052f779:	cc                                              	int3
1052f77a:	cc                                              	int3
1052f77b:	cc                                              	int3
1052f77c:	cc                                              	int3
1052f77d:	cc                                              	int3
1052f77e:	cc                                              	int3
1052f77f:	cc                                              	int3
