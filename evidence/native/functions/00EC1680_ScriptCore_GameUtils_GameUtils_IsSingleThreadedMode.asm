# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1680 (ScriptCore.GameUtils::GameUtils_IsSingleThreadedMode)
Paired Ghidra pseudocode: 00EC1680_ScriptCore_GameUtils_GameUtils_IsSingleThreadedMode.c
Window: [0x00ec1680, 0x00ec16a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec16a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1680: 56 e8 ba 85 91 ff 8b f0 e8 93 85 91 ff 33 c9 3b
00ec1690: f0 0f 94 c1 8a c1 5e c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1680 <.text+0xac0680>:
  ec1680:	56                                              	push   esi
  ec1681:	e8 ba 85 91 ff                                  	call   0x7d9c40
  ec1686:	8b f0                                           	mov    esi,eax
  ec1688:	e8 93 85 91 ff                                  	call   0x7d9c20
  ec168d:	33 c9                                           	xor    ecx,ecx
  ec168f:	3b f0                                           	cmp    esi,eax
  ec1691:	0f 94 c1                                        	sete   cl
  ec1694:	8a c1                                           	mov    al,cl
  ec1696:	5e                                              	pop    esi
  ec1697:	c3                                              	ret
  ec1698:	cc                                              	int3
  ec1699:	cc                                              	int3
  ec169a:	cc                                              	int3
  ec169b:	cc                                              	int3
  ec169c:	cc                                              	int3
  ec169d:	cc                                              	int3
  ec169e:	cc                                              	int3
  ec169f:	cc                                              	int3
