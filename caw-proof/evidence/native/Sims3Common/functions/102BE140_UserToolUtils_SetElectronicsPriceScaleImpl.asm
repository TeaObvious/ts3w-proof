# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be140 (UserToolUtils_SetElectronicsPriceScaleImpl)
Paired Ghidra pseudocode: 102BE140_UserToolUtils_SetElectronicsPriceScaleImpl.c
Window: [0x102be140, 0x102be180) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be140: a1 20 0c c7 10 85 c0 74 14 8b 48 08 85 c9 74 0d
102be150: d9 44 24 04 51 d9 1c 24 e8 b3 92 00 00 c3 cc cc
102be160: a1 20 0c c7 10 85 c0 74 0c 8b 48 08 85 c9 74 05
102be170: e9 bb 92 00 00 d9 e8 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102be140 <.text+0x2bd140>:
102be140:	a1 20 0c c7 10                                  	mov    eax,ds:0x10c70c20
102be145:	85 c0                                           	test   eax,eax
102be147:	74 14                                           	je     0x102be15d
102be149:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
102be14c:	85 c9                                           	test   ecx,ecx
102be14e:	74 0d                                           	je     0x102be15d
102be150:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
102be154:	51                                              	push   ecx
102be155:	d9 1c 24                                        	fstp   DWORD PTR [esp]
102be158:	e8 b3 92 00 00                                  	call   0x102c7410
102be15d:	c3                                              	ret
102be15e:	cc                                              	int3
102be15f:	cc                                              	int3
102be160:	a1 20 0c c7 10                                  	mov    eax,ds:0x10c70c20
102be165:	85 c0                                           	test   eax,eax
102be167:	74 0c                                           	je     0x102be175
102be169:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
102be16c:	85 c9                                           	test   ecx,ecx
102be16e:	74 05                                           	je     0x102be175
102be170:	e9 bb 92 00 00                                  	jmp    0x102c7430
102be175:	d9 e8                                           	fld1
102be177:	c3                                              	ret
102be178:	cc                                              	int3
102be179:	cc                                              	int3
102be17a:	cc                                              	int3
102be17b:	cc                                              	int3
102be17c:	cc                                              	int3
102be17d:	cc                                              	int3
102be17e:	cc                                              	int3
102be17f:	cc                                              	int3
