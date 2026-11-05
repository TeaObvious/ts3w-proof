# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ae70 (World_HasAnyRoofImpl)
Paired Ghidra pseudocode: 1057AE70_World_HasAnyRoofImpl.c
Window: [0x1057ae70, 0x1057aeb0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057aeb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ae70: 8b 0d c4 00 c7 10 85 c9 74 2c 8b 44 24 08 8b 54
1057ae80: 24 04 6a 00 50 52 e8 85 c1 cb ff 85 c0 74 17 8b
1057ae90: 80 ac 02 00 00 85 c0 74 0d 8b c8 e8 60 45 df ff
1057aea0: 85 c0 0f 97 c0 c3 32 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057ae70 <.text+0x579e70>:
1057ae70:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057ae76:	85 c9                                           	test   ecx,ecx
1057ae78:	74 2c                                           	je     0x1057aea6
1057ae7a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057ae7e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057ae82:	6a 00                                           	push   0x0
1057ae84:	50                                              	push   eax
1057ae85:	52                                              	push   edx
1057ae86:	e8 85 c1 cb ff                                  	call   0x10237010
1057ae8b:	85 c0                                           	test   eax,eax
1057ae8d:	74 17                                           	je     0x1057aea6
1057ae8f:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
1057ae95:	85 c0                                           	test   eax,eax
1057ae97:	74 0d                                           	je     0x1057aea6
1057ae99:	8b c8                                           	mov    ecx,eax
1057ae9b:	e8 60 45 df ff                                  	call   0x1036f400
1057aea0:	85 c0                                           	test   eax,eax
1057aea2:	0f 97 c0                                        	seta   al
1057aea5:	c3                                              	ret
1057aea6:	32 c0                                           	xor    al,al
1057aea8:	c3                                              	ret
1057aea9:	cc                                              	int3
1057aeaa:	cc                                              	int3
1057aeab:	cc                                              	int3
1057aeac:	cc                                              	int3
1057aead:	cc                                              	int3
1057aeae:	cc                                              	int3
1057aeaf:	cc                                              	int3
