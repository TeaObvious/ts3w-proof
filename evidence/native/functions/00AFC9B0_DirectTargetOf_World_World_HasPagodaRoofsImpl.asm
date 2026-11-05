# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00afc9b0 (DirectTargetOf_World_World_HasPagodaRoofsImpl)
Paired Ghidra pseudocode: 00AFC9B0_DirectTargetOf_World_World_HasPagodaRoofsImpl.c
Window: [0x00afc9b0, 0x00afc9f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00afc9f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00afc9b0: 56 8b 35 c4 db 1e 01 85 f6 74 27 6a 00 8b ce e8
00afc9c0: 9c 2b 16 00 52 50 8b ce e8 43 5e 16 00 85 c0 74
00afc9d0: 11 8b 80 ac 02 00 00 85 c0 74 07 8b c8 e8 ae bc
00afc9e0: 09 00 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00afc9b0 <.text+0x6fb9b0>:
  afc9b0:	56                                              	push   esi
  afc9b1:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  afc9b7:	85 f6                                           	test   esi,esi
  afc9b9:	74 27                                           	je     0xafc9e2
  afc9bb:	6a 00                                           	push   0x0
  afc9bd:	8b ce                                           	mov    ecx,esi
  afc9bf:	e8 9c 2b 16 00                                  	call   0xc5f560
  afc9c4:	52                                              	push   edx
  afc9c5:	50                                              	push   eax
  afc9c6:	8b ce                                           	mov    ecx,esi
  afc9c8:	e8 43 5e 16 00                                  	call   0xc62810
  afc9cd:	85 c0                                           	test   eax,eax
  afc9cf:	74 11                                           	je     0xafc9e2
  afc9d1:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
  afc9d7:	85 c0                                           	test   eax,eax
  afc9d9:	74 07                                           	je     0xafc9e2
  afc9db:	8b c8                                           	mov    ecx,eax
  afc9dd:	e8 ae bc 09 00                                  	call   0xb98690
  afc9e2:	32 c0                                           	xor    al,al
  afc9e4:	5e                                              	pop    esi
  afc9e5:	c3                                              	ret
  afc9e6:	cc                                              	int3
  afc9e7:	cc                                              	int3
  afc9e8:	cc                                              	int3
  afc9e9:	cc                                              	int3
  afc9ea:	cc                                              	int3
  afc9eb:	cc                                              	int3
  afc9ec:	cc                                              	int3
  afc9ed:	cc                                              	int3
  afc9ee:	cc                                              	int3
  afc9ef:	cc                                              	int3
