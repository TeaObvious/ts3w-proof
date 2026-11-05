# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786ad0 (ScriptCore.World::World_LotGetIsAutoRoofEnabledImpl)
Paired Ghidra pseudocode: 00786AD0_ScriptCore_World_World_LotGetIsAutoRoofEnabledImpl.c
Window: [0x00786ad0, 0x00786b00) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786ad0: 8b 0d c4 db 1e 01 85 c9 74 1b 8b 44 24 08 8b 54
00786ae0: 24 04 6a 00 50 52 e8 25 bd 4d 00 50 e8 2f ac 37
00786af0: 00 83 c4 04 c3 32 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786ad0 <.text+0x385ad0>:
  786ad0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786ad6:	85 c9                                           	test   ecx,ecx
  786ad8:	74 1b                                           	je     0x786af5
  786ada:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  786ade:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  786ae2:	6a 00                                           	push   0x0
  786ae4:	50                                              	push   eax
  786ae5:	52                                              	push   edx
  786ae6:	e8 25 bd 4d 00                                  	call   0xc62810
  786aeb:	50                                              	push   eax
  786aec:	e8 2f ac 37 00                                  	call   0xb01720
  786af1:	83 c4 04                                        	add    esp,0x4
  786af4:	c3                                              	ret
  786af5:	32 c0                                           	xor    al,al
  786af7:	c3                                              	ret
  786af8:	cc                                              	int3
  786af9:	cc                                              	int3
  786afa:	cc                                              	int3
  786afb:	cc                                              	int3
  786afc:	cc                                              	int3
  786afd:	cc                                              	int3
  786afe:	cc                                              	int3
  786aff:	cc                                              	int3
