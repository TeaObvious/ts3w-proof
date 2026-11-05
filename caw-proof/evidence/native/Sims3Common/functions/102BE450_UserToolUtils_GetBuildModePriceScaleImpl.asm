# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be450 (UserToolUtils_GetBuildModePriceScaleImpl)
Paired Ghidra pseudocode: 102BE450_UserToolUtils_GetBuildModePriceScaleImpl.c
Window: [0x102be450, 0x102be480) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be450: 51 a1 20 0c c7 10 85 c0 74 0f 8b 48 08 85 c9 74
102be460: 08 83 c4 04 e9 67 8f 00 00 f3 0f 10 05 d4 b0 ac
102be470: 10 f3 0f 11 04 24 d9 04 24 59 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
102be450 <.text+0x2bd450>:
102be450:	51                                              	push   ecx
102be451:	a1 20 0c c7 10                                  	mov    eax,ds:0x10c70c20
102be456:	85 c0                                           	test   eax,eax
102be458:	74 0f                                           	je     0x102be469
102be45a:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
102be45d:	85 c9                                           	test   ecx,ecx
102be45f:	74 08                                           	je     0x102be469
102be461:	83 c4 04                                        	add    esp,0x4
102be464:	e9 67 8f 00 00                                  	jmp    0x102c73d0
102be469:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
102be471:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
102be476:	d9 04 24                                        	fld    DWORD PTR [esp]
102be479:	59                                              	pop    ecx
102be47a:	c3                                              	ret
102be47b:	cc                                              	int3
102be47c:	cc                                              	int3
102be47d:	cc                                              	int3
102be47e:	cc                                              	int3
102be47f:	cc                                              	int3
