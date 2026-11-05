# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109926f0 (Sims3PackFile_GetFileCount)
Paired Ghidra pseudocode: 109926F0_Sims3PackFile_GetFileCount.c
Window: [0x109926f0, 0x10992710) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10992710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109926f0: 8b 44 24 04 8b 48 08 2b 48 04 b8 97 6a d0 79 f7
10992700: e9 c1 fa 0a 8b c2 c1 e8 1f 03 c2 c3 cc cc cc cc

LINEAR DISASSEMBLY
109926f0 <.text+0x9916f0>:
109926f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109926f4:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
109926f7:	2b 48 04                                        	sub    ecx,DWORD PTR [eax+0x4]
109926fa:	b8 97 6a d0 79                                  	mov    eax,0x79d06a97
109926ff:	f7 e9                                           	imul   ecx
10992701:	c1 fa 0a                                        	sar    edx,0xa
10992704:	8b c2                                           	mov    eax,edx
10992706:	c1 e8 1f                                        	shr    eax,0x1f
10992709:	03 c2                                           	add    eax,edx
1099270b:	c3                                              	ret
1099270c:	cc                                              	int3
1099270d:	cc                                              	int3
1099270e:	cc                                              	int3
1099270f:	cc                                              	int3
