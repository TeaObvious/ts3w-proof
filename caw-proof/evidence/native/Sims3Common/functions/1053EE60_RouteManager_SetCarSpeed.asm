# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053ee60 (RouteManager_SetCarSpeed)
Paired Ghidra pseudocode: 1053EE60_RouteManager_SetCarSpeed.c
Window: [0x1053ee60, 0x1053eea0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053eea0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053ee60: e8 3b b3 1e 00 85 c0 74 36 8b 4c 24 08 8b 54 24
1053ee70: 04 51 52 8b c8 e8 36 bd 1e 00 85 c0 74 21 8b 0d
1053ee80: 78 d9 c8 10 51 8b c8 e8 14 7f 1e 00 85 c0 74 0f
1053ee90: d9 44 24 0c 51 8b c8 d9 1c 24 e8 01 82 20 00 c3

LINEAR DISASSEMBLY
1053ee60 <.text+0x53de60>:
1053ee60:	e8 3b b3 1e 00                                  	call   0x1072a1a0
1053ee65:	85 c0                                           	test   eax,eax
1053ee67:	74 36                                           	je     0x1053ee9f
1053ee69:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053ee6d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053ee71:	51                                              	push   ecx
1053ee72:	52                                              	push   edx
1053ee73:	8b c8                                           	mov    ecx,eax
1053ee75:	e8 36 bd 1e 00                                  	call   0x1072abb0
1053ee7a:	85 c0                                           	test   eax,eax
1053ee7c:	74 21                                           	je     0x1053ee9f
1053ee7e:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
1053ee84:	51                                              	push   ecx
1053ee85:	8b c8                                           	mov    ecx,eax
1053ee87:	e8 14 7f 1e 00                                  	call   0x10726da0
1053ee8c:	85 c0                                           	test   eax,eax
1053ee8e:	74 0f                                           	je     0x1053ee9f
1053ee90:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
1053ee94:	51                                              	push   ecx
1053ee95:	8b c8                                           	mov    ecx,eax
1053ee97:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053ee9a:	e8 01 82 20 00                                  	call   0x107470a0
1053ee9f:	c3                                              	ret
