# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998be0 (WorldWrap_SetWeatherDreariness)
Paired Ghidra pseudocode: 10998BE0_WorldWrap_SetWeatherDreariness.c
Window: [0x10998be0, 0x10998c10) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998c10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998be0: 8b 44 24 04 85 c0 74 1f 8b 48 74 85 c9 74 18 e8
10998bf0: 7c 97 9a ff 85 c0 74 0f d9 44 24 08 51 8b c8 d9
10998c00: 1c 24 e8 f9 b7 84 ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998be0 <.text+0x997be0>:
10998be0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10998be4:	85 c0                                           	test   eax,eax
10998be6:	74 1f                                           	je     0x10998c07
10998be8:	8b 48 74                                        	mov    ecx,DWORD PTR [eax+0x74]
10998beb:	85 c9                                           	test   ecx,ecx
10998bed:	74 18                                           	je     0x10998c07
10998bef:	e8 7c 97 9a ff                                  	call   0x10342370
10998bf4:	85 c0                                           	test   eax,eax
10998bf6:	74 0f                                           	je     0x10998c07
10998bf8:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10998bfc:	51                                              	push   ecx
10998bfd:	8b c8                                           	mov    ecx,eax
10998bff:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10998c02:	e8 f9 b7 84 ff                                  	call   0x101e4400
10998c07:	c3                                              	ret
10998c08:	cc                                              	int3
10998c09:	cc                                              	int3
10998c0a:	cc                                              	int3
10998c0b:	cc                                              	int3
10998c0c:	cc                                              	int3
10998c0d:	cc                                              	int3
10998c0e:	cc                                              	int3
10998c0f:	cc                                              	int3
