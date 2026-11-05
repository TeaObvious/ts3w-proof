# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007854a0 (ScriptCore.World::World_IsOnRoofImpl)
Paired Ghidra pseudocode: 007854A0_ScriptCore_World_World_IsOnRoofImpl.c
Window: [0x007854a0, 0x007854d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007854d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007854a0: e8 cb 20 1b 00 85 c0 74 1f 8b 4c 24 08 8b 54 24
007854b0: 04 51 52 8b c8 e8 c6 2a 1b 00 85 c0 74 0a 50 e8
007854c0: fc b1 37 00 83 c4 04 c3 32 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
007854a0 <.text+0x3844a0>:
  7854a0:	e8 cb 20 1b 00                                  	call   0x937570
  7854a5:	85 c0                                           	test   eax,eax
  7854a7:	74 1f                                           	je     0x7854c8
  7854a9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7854ad:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7854b1:	51                                              	push   ecx
  7854b2:	52                                              	push   edx
  7854b3:	8b c8                                           	mov    ecx,eax
  7854b5:	e8 c6 2a 1b 00                                  	call   0x937f80
  7854ba:	85 c0                                           	test   eax,eax
  7854bc:	74 0a                                           	je     0x7854c8
  7854be:	50                                              	push   eax
  7854bf:	e8 fc b1 37 00                                  	call   0xb006c0
  7854c4:	83 c4 04                                        	add    esp,0x4
  7854c7:	c3                                              	ret
  7854c8:	32 c0                                           	xor    al,al
  7854ca:	c3                                              	ret
  7854cb:	cc                                              	int3
  7854cc:	cc                                              	int3
  7854cd:	cc                                              	int3
  7854ce:	cc                                              	int3
  7854cf:	cc                                              	int3
