# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999930 (WorldWrap_EnableFog)
Paired Ghidra pseudocode: 10999930_WorldWrap_EnableFog.c
Window: [0x10999930, 0x10999950) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999930: 8b 44 24 04 85 c0 74 15 8b 48 64 85 c9 74 0e 83
10999940: 7c 24 08 00 0f 95 c0 50 e8 43 7c 84 ff c3 cc cc

LINEAR DISASSEMBLY
10999930 <.text+0x998930>:
10999930:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10999934:	85 c0                                           	test   eax,eax
10999936:	74 15                                           	je     0x1099994d
10999938:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
1099993b:	85 c9                                           	test   ecx,ecx
1099993d:	74 0e                                           	je     0x1099994d
1099993f:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
10999944:	0f 95 c0                                        	setne  al
10999947:	50                                              	push   eax
10999948:	e8 43 7c 84 ff                                  	call   0x101e1590
1099994d:	c3                                              	ret
1099994e:	cc                                              	int3
1099994f:	cc                                              	int3
