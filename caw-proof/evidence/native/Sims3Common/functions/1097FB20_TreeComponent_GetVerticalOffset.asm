# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fb20 (TreeComponent_GetVerticalOffset)
Paired Ghidra pseudocode: 1097FB20_TreeComponent_GetVerticalOffset.c
Window: [0x1097fb20, 0x1097fb40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fb40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fb20: 51 8b 4c 24 08 85 c9 0f 57 c0 f3 0f 11 04 24 74
1097fb30: 08 83 c4 04 e9 a7 d3 dc ff d9 04 24 59 c3 cc cc

LINEAR DISASSEMBLY
1097fb20 <.text+0x97eb20>:
1097fb20:	51                                              	push   ecx
1097fb21:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1097fb25:	85 c9                                           	test   ecx,ecx
1097fb27:	0f 57 c0                                        	xorps  xmm0,xmm0
1097fb2a:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1097fb2f:	74 08                                           	je     0x1097fb39
1097fb31:	83 c4 04                                        	add    esp,0x4
1097fb34:	e9 a7 d3 dc ff                                  	jmp    0x1074cee0
1097fb39:	d9 04 24                                        	fld    DWORD PTR [esp]
1097fb3c:	59                                              	pop    ecx
1097fb3d:	c3                                              	ret
1097fb3e:	cc                                              	int3
1097fb3f:	cc                                              	int3
