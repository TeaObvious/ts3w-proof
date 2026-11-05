# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999000 (WorldTerrainWrap_RedoLayerPaint)
Paired Ghidra pseudocode: 10999000_WorldTerrainWrap_RedoLayerPaint.c
Window: [0x10999000, 0x10999030) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999030
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999000: a1 c4 00 c7 10 85 c0 74 17 8b 48 54 85 c9 74 10
10999010: e8 3b da d1 ff 85 c0 74 07 8b c8 e9 80 91 85 ff
10999020: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10999000 <.text+0x998000>:
10999000:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10999005:	85 c0                                           	test   eax,eax
10999007:	74 17                                           	je     0x10999020
10999009:	8b 48 54                                        	mov    ecx,DWORD PTR [eax+0x54]
1099900c:	85 c9                                           	test   ecx,ecx
1099900e:	74 10                                           	je     0x10999020
10999010:	e8 3b da d1 ff                                  	call   0x106b6a50
10999015:	85 c0                                           	test   eax,eax
10999017:	74 07                                           	je     0x10999020
10999019:	8b c8                                           	mov    ecx,eax
1099901b:	e9 80 91 85 ff                                  	jmp    0x101f21a0
10999020:	c3                                              	ret
10999021:	cc                                              	int3
10999022:	cc                                              	int3
10999023:	cc                                              	int3
10999024:	cc                                              	int3
10999025:	cc                                              	int3
10999026:	cc                                              	int3
10999027:	cc                                              	int3
10999028:	cc                                              	int3
10999029:	cc                                              	int3
1099902a:	cc                                              	int3
1099902b:	cc                                              	int3
1099902c:	cc                                              	int3
1099902d:	cc                                              	int3
1099902e:	cc                                              	int3
1099902f:	cc                                              	int3
