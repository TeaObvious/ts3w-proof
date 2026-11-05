# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ab9540 (DirectTargetOf_World_World_RestrictBuildBuyInBuildingsImpl)
Paired Ghidra pseudocode: 00AB9540_DirectTargetOf_World_World_RestrictBuildBuyInBuildingsImpl.c
Window: [0x00ab9540, 0x00ab9580) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ab9580
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ab9540: 8a 44 24 04 38 05 88 3e 18 01 74 2f 56 8b 35 c4
00ab9550: db 1e 01 85 f6 a2 88 3e 18 01 74 1e 6a 00 8b ce
00ab9560: e8 fb 5f 1a 00 52 50 8b ce e8 a2 92 1a 00 85 c0
00ab9570: 74 08 8b c8 5e e9 46 b2 ff ff 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
00ab9540 <.text+0x6b8540>:
  ab9540:	8a 44 24 04                                     	mov    al,BYTE PTR [esp+0x4]
  ab9544:	38 05 88 3e 18 01                               	cmp    BYTE PTR ds:0x1183e88,al
  ab954a:	74 2f                                           	je     0xab957b
  ab954c:	56                                              	push   esi
  ab954d:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  ab9553:	85 f6                                           	test   esi,esi
  ab9555:	a2 88 3e 18 01                                  	mov    ds:0x1183e88,al
  ab955a:	74 1e                                           	je     0xab957a
  ab955c:	6a 00                                           	push   0x0
  ab955e:	8b ce                                           	mov    ecx,esi
  ab9560:	e8 fb 5f 1a 00                                  	call   0xc5f560
  ab9565:	52                                              	push   edx
  ab9566:	50                                              	push   eax
  ab9567:	8b ce                                           	mov    ecx,esi
  ab9569:	e8 a2 92 1a 00                                  	call   0xc62810
  ab956e:	85 c0                                           	test   eax,eax
  ab9570:	74 08                                           	je     0xab957a
  ab9572:	8b c8                                           	mov    ecx,eax
  ab9574:	5e                                              	pop    esi
  ab9575:	e9 46 b2 ff ff                                  	jmp    0xab47c0
  ab957a:	5e                                              	pop    esi
  ab957b:	c3                                              	ret
  ab957c:	cc                                              	int3
  ab957d:	cc                                              	int3
  ab957e:	cc                                              	int3
  ab957f:	cc                                              	int3
