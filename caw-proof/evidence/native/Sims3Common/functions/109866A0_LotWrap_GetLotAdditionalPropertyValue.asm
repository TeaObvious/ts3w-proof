# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109866a0 (LotWrap_GetLotAdditionalPropertyValue)
Paired Ghidra pseudocode: 109866A0_LotWrap_GetLotAdditionalPropertyValue.c
Window: [0x109866a0, 0x109866d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109866d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109866a0: 8b 4c 24 04 85 c9 8b 44 24 08 f3 0f 10 05 d4 b0
109866b0: ac 10 f3 0f 11 00 74 0e d9 81 20 04 00 00 d9 18
109866c0: b8 01 00 00 00 c3 33 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109866a0 <.text+0x9856a0>:
109866a0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109866a4:	85 c9                                           	test   ecx,ecx
109866a6:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109866aa:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
109866b2:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
109866b6:	74 0e                                           	je     0x109866c6
109866b8:	d9 81 20 04 00 00                               	fld    DWORD PTR [ecx+0x420]
109866be:	d9 18                                           	fstp   DWORD PTR [eax]
109866c0:	b8 01 00 00 00                                  	mov    eax,0x1
109866c5:	c3                                              	ret
109866c6:	33 c0                                           	xor    eax,eax
109866c8:	c3                                              	ret
109866c9:	cc                                              	int3
109866ca:	cc                                              	int3
109866cb:	cc                                              	int3
109866cc:	cc                                              	int3
109866cd:	cc                                              	int3
109866ce:	cc                                              	int3
109866cf:	cc                                              	int3
