# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999910 (WorldWrap_GetThumbnailFilePath)
Paired Ghidra pseudocode: 10999910_WorldWrap_GetThumbnailFilePath.c
Window: [0x10999910, 0x10999930) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999910: 8b 44 24 04 85 c0 74 11 8b 88 b0 02 00 00 3b 88
10999920: b4 02 00 00 74 03 8b c1 c3 33 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
10999910 <.text+0x998910>:
10999910:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10999914:	85 c0                                           	test   eax,eax
10999916:	74 11                                           	je     0x10999929
10999918:	8b 88 b0 02 00 00                               	mov    ecx,DWORD PTR [eax+0x2b0]
1099991e:	3b 88 b4 02 00 00                               	cmp    ecx,DWORD PTR [eax+0x2b4]
10999924:	74 03                                           	je     0x10999929
10999926:	8b c1                                           	mov    eax,ecx
10999928:	c3                                              	ret
10999929:	33 c0                                           	xor    eax,eax
1099992b:	c3                                              	ret
1099992c:	cc                                              	int3
1099992d:	cc                                              	int3
1099992e:	cc                                              	int3
1099992f:	cc                                              	int3
