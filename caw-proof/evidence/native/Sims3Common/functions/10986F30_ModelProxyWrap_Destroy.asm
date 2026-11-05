# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986f30 (ModelProxyWrap_Destroy)
Paired Ghidra pseudocode: 10986F30_ModelProxyWrap_Destroy.c
Window: [0x10986f30, 0x10986f50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986f50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986f30: 56 8b 74 24 08 85 f6 74 10 8b ce e8 50 cd b4 ff
10986f40: 56 e8 4a 1f f9 ff 83 c4 04 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10986f30 <.text+0x985f30>:
10986f30:	56                                              	push   esi
10986f31:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10986f35:	85 f6                                           	test   esi,esi
10986f37:	74 10                                           	je     0x10986f49
10986f39:	8b ce                                           	mov    ecx,esi
10986f3b:	e8 50 cd b4 ff                                  	call   0x104d3c90
10986f40:	56                                              	push   esi
10986f41:	e8 4a 1f f9 ff                                  	call   0x10918e90
10986f46:	83 c4 04                                        	add    esp,0x4
10986f49:	5e                                              	pop    esi
10986f4a:	c3                                              	ret
10986f4b:	cc                                              	int3
10986f4c:	cc                                              	int3
10986f4d:	cc                                              	int3
10986f4e:	cc                                              	int3
10986f4f:	cc                                              	int3
