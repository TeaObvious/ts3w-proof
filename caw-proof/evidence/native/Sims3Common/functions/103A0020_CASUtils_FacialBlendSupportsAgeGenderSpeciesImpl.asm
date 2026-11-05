# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a0020 (CASUtils_FacialBlendSupportsAgeGenderSpeciesImpl)
Paired Ghidra pseudocode: 103A0020_CASUtils_FacialBlendSupportsAgeGenderSpeciesImpl.c
Window: [0x103a0020, 0x103a0060) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a0060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a0020: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a0030: 35 74 04 32 c0 5e c3 e8 e4 b0 1b 00 8b 10 8b c8
103a0040: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 4c 24
103a0050: 0c 51 8b c8 e8 67 fe 01 00 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
103a0020 <.text+0x39f020>:
103a0020:	56                                              	push   esi
103a0021:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a0025:	8b c6                                           	mov    eax,esi
103a0027:	25 00 00 00 ff                                  	and    eax,0xff000000
103a002c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a0031:	74 04                                           	je     0x103a0037
103a0033:	32 c0                                           	xor    al,al
103a0035:	5e                                              	pop    esi
103a0036:	c3                                              	ret
103a0037:	e8 e4 b0 1b 00                                  	call   0x1055b120
103a003c:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a003e:	8b c8                                           	mov    ecx,eax
103a0040:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a0046:	56                                              	push   esi
103a0047:	ff d0                                           	call   eax
103a0049:	85 c0                                           	test   eax,eax
103a004b:	74 e6                                           	je     0x103a0033
103a004d:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
103a0051:	51                                              	push   ecx
103a0052:	8b c8                                           	mov    ecx,eax
103a0054:	e8 67 fe 01 00                                  	call   0x103bfec0
103a0059:	5e                                              	pop    esi
103a005a:	c3                                              	ret
103a005b:	cc                                              	int3
103a005c:	cc                                              	int3
103a005d:	cc                                              	int3
103a005e:	cc                                              	int3
103a005f:	cc                                              	int3
