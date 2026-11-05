# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00afc970 (DirectTargetOf_World_World_HasRoofsWhoseSlopesCantBeChangedImpl)
Paired Ghidra pseudocode: 00AFC970_DirectTargetOf_World_World_HasRoofsWhoseSlopesCantBeChangedImpl.c
Window: [0x00afc970, 0x00afc9b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00afc9b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00afc970: 56 8b 35 c4 db 1e 01 85 f6 74 28 6a 00 8b ce e8
00afc980: dc 2b 16 00 52 50 8b ce e8 83 5e 16 00 85 c0 74
00afc990: 12 8b 80 ac 02 00 00 85 c0 74 08 8b c8 5e e9 0d
00afc9a0: be 09 00 32 c0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00afc970 <.text+0x6fb970>:
  afc970:	56                                              	push   esi
  afc971:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  afc977:	85 f6                                           	test   esi,esi
  afc979:	74 28                                           	je     0xafc9a3
  afc97b:	6a 00                                           	push   0x0
  afc97d:	8b ce                                           	mov    ecx,esi
  afc97f:	e8 dc 2b 16 00                                  	call   0xc5f560
  afc984:	52                                              	push   edx
  afc985:	50                                              	push   eax
  afc986:	8b ce                                           	mov    ecx,esi
  afc988:	e8 83 5e 16 00                                  	call   0xc62810
  afc98d:	85 c0                                           	test   eax,eax
  afc98f:	74 12                                           	je     0xafc9a3
  afc991:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
  afc997:	85 c0                                           	test   eax,eax
  afc999:	74 08                                           	je     0xafc9a3
  afc99b:	8b c8                                           	mov    ecx,eax
  afc99d:	5e                                              	pop    esi
  afc99e:	e9 0d be 09 00                                  	jmp    0xb987b0
  afc9a3:	32 c0                                           	xor    al,al
  afc9a5:	5e                                              	pop    esi
  afc9a6:	c3                                              	ret
  afc9a7:	cc                                              	int3
  afc9a8:	cc                                              	int3
  afc9a9:	cc                                              	int3
  afc9aa:	cc                                              	int3
  afc9ab:	cc                                              	int3
  afc9ac:	cc                                              	int3
  afc9ad:	cc                                              	int3
  afc9ae:	cc                                              	int3
  afc9af:	cc                                              	int3
