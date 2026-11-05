# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989dc0 (ResourceMgr_FlushCaches)
Paired Ghidra pseudocode: 10989DC0_ResourceMgr_FlushCaches.c
Window: [0x10989dc0, 0x10989de0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989de0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989dc0: e8 0b b3 f5 ff 85 c0 75 03 32 c0 c3 8b 10 6a 00
10989dd0: 8b c8 8b 42 60 6a 00 ff d0 b0 01 c3 cc cc cc cc

LINEAR DISASSEMBLY
10989dc0 <.text+0x988dc0>:
10989dc0:	e8 0b b3 f5 ff                                  	call   0x108e50d0
10989dc5:	85 c0                                           	test   eax,eax
10989dc7:	75 03                                           	jne    0x10989dcc
10989dc9:	32 c0                                           	xor    al,al
10989dcb:	c3                                              	ret
10989dcc:	8b 10                                           	mov    edx,DWORD PTR [eax]
10989dce:	6a 00                                           	push   0x0
10989dd0:	8b c8                                           	mov    ecx,eax
10989dd2:	8b 42 60                                        	mov    eax,DWORD PTR [edx+0x60]
10989dd5:	6a 00                                           	push   0x0
10989dd7:	ff d0                                           	call   eax
10989dd9:	b0 01                                           	mov    al,0x1
10989ddb:	c3                                              	ret
10989ddc:	cc                                              	int3
10989ddd:	cc                                              	int3
10989dde:	cc                                              	int3
10989ddf:	cc                                              	int3
