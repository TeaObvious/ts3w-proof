# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540d00 (RouteManager_SetAvoidanceFieldSmoothing)
Paired Ghidra pseudocode: 10540D00_RouteManager_SetAvoidanceFieldSmoothing.c
Window: [0x10540d00, 0x10540d70) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540d70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540d00: f3 0f 10 44 24 0c 0f 57 c9 0f 2f c8 f3 0f 11 44
10540d10: 24 0c 77 0d f3 0f 10 0d d4 b0 ac 10 0f 2f c1 76
10540d20: 06 f3 0f 11 4c 24 0c e8 74 94 1e 00 85 c0 74 3f
10540d30: 8b 4c 24 08 8b 54 24 04 51 52 8b c8 e8 6f 9e 1e
10540d40: 00 85 c0 74 2a 8b 0d 78 d9 c8 10 51 8b c8 e8 4d
10540d50: 60 1e 00 85 c0 74 18 8b 80 0c 01 00 00 85 c0 74
10540d60: 0e f3 0f 10 44 24 0c f3 0f 11 80 b0 00 00 00 c3

LINEAR DISASSEMBLY
10540d00 <.text+0x53fd00>:
10540d00:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
10540d06:	0f 57 c9                                        	xorps  xmm1,xmm1
10540d09:	0f 2f c8                                        	comiss xmm1,xmm0
10540d0c:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10540d12:	77 0d                                           	ja     0x10540d21
10540d14:	f3 0f 10 0d d4 b0 ac 10                         	movss  xmm1,DWORD PTR ds:0x10acb0d4
10540d1c:	0f 2f c1                                        	comiss xmm0,xmm1
10540d1f:	76 06                                           	jbe    0x10540d27
10540d21:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
10540d27:	e8 74 94 1e 00                                  	call   0x1072a1a0
10540d2c:	85 c0                                           	test   eax,eax
10540d2e:	74 3f                                           	je     0x10540d6f
10540d30:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10540d34:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10540d38:	51                                              	push   ecx
10540d39:	52                                              	push   edx
10540d3a:	8b c8                                           	mov    ecx,eax
10540d3c:	e8 6f 9e 1e 00                                  	call   0x1072abb0
10540d41:	85 c0                                           	test   eax,eax
10540d43:	74 2a                                           	je     0x10540d6f
10540d45:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
10540d4b:	51                                              	push   ecx
10540d4c:	8b c8                                           	mov    ecx,eax
10540d4e:	e8 4d 60 1e 00                                  	call   0x10726da0
10540d53:	85 c0                                           	test   eax,eax
10540d55:	74 18                                           	je     0x10540d6f
10540d57:	8b 80 0c 01 00 00                               	mov    eax,DWORD PTR [eax+0x10c]
10540d5d:	85 c0                                           	test   eax,eax
10540d5f:	74 0e                                           	je     0x10540d6f
10540d61:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
10540d67:	f3 0f 11 80 b0 00 00 00                         	movss  DWORD PTR [eax+0xb0],xmm0
10540d6f:	c3                                              	ret
