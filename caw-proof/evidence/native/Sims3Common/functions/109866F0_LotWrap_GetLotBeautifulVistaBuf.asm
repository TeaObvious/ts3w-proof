# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109866f0 (LotWrap_GetLotBeautifulVistaBuf)
Paired Ghidra pseudocode: 109866F0_LotWrap_GetLotBeautifulVistaBuf.c
Window: [0x109866f0, 0x10986720) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986720
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109866f0: 8b 4c 24 04 85 c9 8b 44 24 08 0f 57 c0 f3 0f 11
10986700: 00 74 0e d9 81 18 04 00 00 d9 18 b8 01 00 00 00
10986710: c3 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109866f0 <.text+0x9856f0>:
109866f0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109866f4:	85 c9                                           	test   ecx,ecx
109866f6:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109866fa:	0f 57 c0                                        	xorps  xmm0,xmm0
109866fd:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
10986701:	74 0e                                           	je     0x10986711
10986703:	d9 81 18 04 00 00                               	fld    DWORD PTR [ecx+0x418]
10986709:	d9 18                                           	fstp   DWORD PTR [eax]
1098670b:	b8 01 00 00 00                                  	mov    eax,0x1
10986710:	c3                                              	ret
10986711:	33 c0                                           	xor    eax,eax
10986713:	c3                                              	ret
10986714:	cc                                              	int3
10986715:	cc                                              	int3
10986716:	cc                                              	int3
10986717:	cc                                              	int3
10986718:	cc                                              	int3
10986719:	cc                                              	int3
1098671a:	cc                                              	int3
1098671b:	cc                                              	int3
1098671c:	cc                                              	int3
1098671d:	cc                                              	int3
1098671e:	cc                                              	int3
1098671f:	cc                                              	int3
