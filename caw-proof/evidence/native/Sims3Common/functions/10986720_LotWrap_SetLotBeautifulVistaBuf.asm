# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986720 (LotWrap_SetLotBeautifulVistaBuf)
Paired Ghidra pseudocode: 10986720_LotWrap_SetLotBeautifulVistaBuf.c
Window: [0x10986720, 0x10986740) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986720: 8b 44 24 04 85 c0 74 0e f3 0f 10 44 24 08 f3 0f
10986730: 11 80 18 04 00 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986720 <.text+0x985720>:
10986720:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10986724:	85 c0                                           	test   eax,eax
10986726:	74 0e                                           	je     0x10986736
10986728:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
1098672e:	f3 0f 11 80 18 04 00 00                         	movss  DWORD PTR [eax+0x418],xmm0
10986736:	c3                                              	ret
10986737:	cc                                              	int3
10986738:	cc                                              	int3
10986739:	cc                                              	int3
1098673a:	cc                                              	int3
1098673b:	cc                                              	int3
1098673c:	cc                                              	int3
1098673d:	cc                                              	int3
1098673e:	cc                                              	int3
1098673f:	cc                                              	int3
