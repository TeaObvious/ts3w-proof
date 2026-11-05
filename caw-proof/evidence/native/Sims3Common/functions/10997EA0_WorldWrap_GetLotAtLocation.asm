# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997ea0 (WorldWrap_GetLotAtLocation)
Paired Ghidra pseudocode: 10997EA0_WorldWrap_GetLotAtLocation.c
Window: [0x10997ea0, 0x10997ed0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997ed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997ea0: 8b 4c 24 04 85 c9 74 18 d9 44 24 0c 83 ec 08 d9
10997eb0: 5c 24 04 d9 44 24 10 d9 1c 24 e8 b1 51 8a ff c3
10997ec0: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997ea0 <.text+0x996ea0>:
10997ea0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997ea4:	85 c9                                           	test   ecx,ecx
10997ea6:	74 18                                           	je     0x10997ec0
10997ea8:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10997eac:	83 ec 08                                        	sub    esp,0x8
10997eaf:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10997eb3:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
10997eb7:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10997eba:	e8 b1 51 8a ff                                  	call   0x1023d070
10997ebf:	c3                                              	ret
10997ec0:	33 c0                                           	xor    eax,eax
10997ec2:	c3                                              	ret
10997ec3:	cc                                              	int3
10997ec4:	cc                                              	int3
10997ec5:	cc                                              	int3
10997ec6:	cc                                              	int3
10997ec7:	cc                                              	int3
10997ec8:	cc                                              	int3
10997ec9:	cc                                              	int3
10997eca:	cc                                              	int3
10997ecb:	cc                                              	int3
10997ecc:	cc                                              	int3
10997ecd:	cc                                              	int3
10997ece:	cc                                              	int3
10997ecf:	cc                                              	int3
