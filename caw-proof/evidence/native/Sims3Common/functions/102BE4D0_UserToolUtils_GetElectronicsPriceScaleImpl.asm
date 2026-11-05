# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be4d0 (UserToolUtils_GetElectronicsPriceScaleImpl)
Paired Ghidra pseudocode: 102BE4D0_UserToolUtils_GetElectronicsPriceScaleImpl.c
Window: [0x102be4d0, 0x102be500) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be4d0: 51 a1 20 0c c7 10 85 c0 74 0f 8b 48 08 85 c9 74
102be4e0: 08 83 c4 04 e9 47 8f 00 00 f3 0f 10 05 d4 b0 ac
102be4f0: 10 f3 0f 11 04 24 d9 04 24 59 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
102be4d0 <.text+0x2bd4d0>:
102be4d0:	51                                              	push   ecx
102be4d1:	a1 20 0c c7 10                                  	mov    eax,ds:0x10c70c20
102be4d6:	85 c0                                           	test   eax,eax
102be4d8:	74 0f                                           	je     0x102be4e9
102be4da:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
102be4dd:	85 c9                                           	test   ecx,ecx
102be4df:	74 08                                           	je     0x102be4e9
102be4e1:	83 c4 04                                        	add    esp,0x4
102be4e4:	e9 47 8f 00 00                                  	jmp    0x102c7430
102be4e9:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
102be4f1:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
102be4f6:	d9 04 24                                        	fld    DWORD PTR [esp]
102be4f9:	59                                              	pop    ecx
102be4fa:	c3                                              	ret
102be4fb:	cc                                              	int3
102be4fc:	cc                                              	int3
102be4fd:	cc                                              	int3
102be4fe:	cc                                              	int3
102be4ff:	cc                                              	int3
