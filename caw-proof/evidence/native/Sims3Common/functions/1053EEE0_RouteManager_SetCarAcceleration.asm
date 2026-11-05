# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053eee0 (RouteManager_SetCarAcceleration)
Paired Ghidra pseudocode: 1053EEE0_RouteManager_SetCarAcceleration.c
Window: [0x1053eee0, 0x1053ef20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053ef20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053eee0: e8 bb b2 1e 00 85 c0 74 36 8b 4c 24 08 8b 54 24
1053eef0: 04 51 52 8b c8 e8 b6 bc 1e 00 85 c0 74 21 8b 0d
1053ef00: 78 d9 c8 10 51 8b c8 e8 94 7e 1e 00 85 c0 74 0f
1053ef10: d9 44 24 0c 51 8b c8 d9 1c 24 e8 11 82 20 00 c3

LINEAR DISASSEMBLY
1053eee0 <.text+0x53dee0>:
1053eee0:	e8 bb b2 1e 00                                  	call   0x1072a1a0
1053eee5:	85 c0                                           	test   eax,eax
1053eee7:	74 36                                           	je     0x1053ef1f
1053eee9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053eeed:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053eef1:	51                                              	push   ecx
1053eef2:	52                                              	push   edx
1053eef3:	8b c8                                           	mov    ecx,eax
1053eef5:	e8 b6 bc 1e 00                                  	call   0x1072abb0
1053eefa:	85 c0                                           	test   eax,eax
1053eefc:	74 21                                           	je     0x1053ef1f
1053eefe:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
1053ef04:	51                                              	push   ecx
1053ef05:	8b c8                                           	mov    ecx,eax
1053ef07:	e8 94 7e 1e 00                                  	call   0x10726da0
1053ef0c:	85 c0                                           	test   eax,eax
1053ef0e:	74 0f                                           	je     0x1053ef1f
1053ef10:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
1053ef14:	51                                              	push   ecx
1053ef15:	8b c8                                           	mov    ecx,eax
1053ef17:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053ef1a:	e8 11 82 20 00                                  	call   0x10747130
1053ef1f:	c3                                              	ret
