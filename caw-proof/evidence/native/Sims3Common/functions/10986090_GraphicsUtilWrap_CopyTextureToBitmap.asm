# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986090 (GraphicsUtilWrap_CopyTextureToBitmap)
Paired Ghidra pseudocode: 10986090_GraphicsUtilWrap_CopyTextureToBitmap.c
Window: [0x10986090, 0x109860c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109860c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986090: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
109860a0: 0c 51 8b 4c 24 0c 52 50 6a 00 51 e8 80 fe ff ff
109860b0: 83 c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986090 <.text+0x985090>:
10986090:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10986094:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10986098:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1098609c:	50                                              	push   eax
1098609d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
109860a1:	51                                              	push   ecx
109860a2:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
109860a6:	52                                              	push   edx
109860a7:	50                                              	push   eax
109860a8:	6a 00                                           	push   0x0
109860aa:	51                                              	push   ecx
109860ab:	e8 80 fe ff ff                                  	call   0x10985f30
109860b0:	83 c4 18                                        	add    esp,0x18
109860b3:	c3                                              	ret
109860b4:	cc                                              	int3
109860b5:	cc                                              	int3
109860b6:	cc                                              	int3
109860b7:	cc                                              	int3
109860b8:	cc                                              	int3
109860b9:	cc                                              	int3
109860ba:	cc                                              	int3
109860bb:	cc                                              	int3
109860bc:	cc                                              	int3
109860bd:	cc                                              	int3
109860be:	cc                                              	int3
109860bf:	cc                                              	int3
