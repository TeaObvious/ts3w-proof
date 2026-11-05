# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ab9500 (DirectTargetOf_World_World_EnableBuyDebugModeImpl)
Paired Ghidra pseudocode: 00AB9500_DirectTargetOf_World_World_EnableBuyDebugModeImpl.c
Window: [0x00ab9500, 0x00ab9540) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ab9540
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ab9500: 8a 44 24 04 38 05 9a c4 1e 01 74 2f 56 8b 35 c4
00ab9510: db 1e 01 85 f6 a2 9a c4 1e 01 74 1e 6a 00 8b ce
00ab9520: e8 3b 60 1a 00 52 50 8b ce e8 e2 92 1a 00 85 c0
00ab9530: 74 08 8b c8 5e e9 26 b2 ff ff 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
00ab9500 <.text+0x6b8500>:
  ab9500:	8a 44 24 04                                     	mov    al,BYTE PTR [esp+0x4]
  ab9504:	38 05 9a c4 1e 01                               	cmp    BYTE PTR ds:0x11ec49a,al
  ab950a:	74 2f                                           	je     0xab953b
  ab950c:	56                                              	push   esi
  ab950d:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  ab9513:	85 f6                                           	test   esi,esi
  ab9515:	a2 9a c4 1e 01                                  	mov    ds:0x11ec49a,al
  ab951a:	74 1e                                           	je     0xab953a
  ab951c:	6a 00                                           	push   0x0
  ab951e:	8b ce                                           	mov    ecx,esi
  ab9520:	e8 3b 60 1a 00                                  	call   0xc5f560
  ab9525:	52                                              	push   edx
  ab9526:	50                                              	push   eax
  ab9527:	8b ce                                           	mov    ecx,esi
  ab9529:	e8 e2 92 1a 00                                  	call   0xc62810
  ab952e:	85 c0                                           	test   eax,eax
  ab9530:	74 08                                           	je     0xab953a
  ab9532:	8b c8                                           	mov    ecx,eax
  ab9534:	5e                                              	pop    esi
  ab9535:	e9 26 b2 ff ff                                  	jmp    0xab4760
  ab953a:	5e                                              	pop    esi
  ab953b:	c3                                              	ret
  ab953c:	cc                                              	int3
  ab953d:	cc                                              	int3
  ab953e:	cc                                              	int3
  ab953f:	cc                                              	int3
