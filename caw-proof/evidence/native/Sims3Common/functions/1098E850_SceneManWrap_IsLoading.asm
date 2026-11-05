# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e850 (SceneManWrap_IsLoading)
Paired Ghidra pseudocode: 1098E850_SceneManWrap_IsLoading.c
Window: [0x1098e850, 0x1098e870) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e850: 8b 4c 24 04 6a 00 6a 00 6a 00 6a ff e8 1f af b5
1098e860: ff f6 d8 1b c0 f7 d8 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e850 <.text+0x98d850>:
1098e850:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098e854:	6a 00                                           	push   0x0
1098e856:	6a 00                                           	push   0x0
1098e858:	6a 00                                           	push   0x0
1098e85a:	6a ff                                           	push   0xffffffff
1098e85c:	e8 1f af b5 ff                                  	call   0x104e9780
1098e861:	f6 d8                                           	neg    al
1098e863:	1b c0                                           	sbb    eax,eax
1098e865:	f7 d8                                           	neg    eax
1098e867:	c3                                              	ret
1098e868:	cc                                              	int3
1098e869:	cc                                              	int3
1098e86a:	cc                                              	int3
1098e86b:	cc                                              	int3
1098e86c:	cc                                              	int3
1098e86d:	cc                                              	int3
1098e86e:	cc                                              	int3
1098e86f:	cc                                              	int3
