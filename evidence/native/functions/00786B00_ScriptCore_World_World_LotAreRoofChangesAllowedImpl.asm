# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786b00 (ScriptCore.World::World_LotAreRoofChangesAllowedImpl)
Paired Ghidra pseudocode: 00786B00_ScriptCore_World_World_LotAreRoofChangesAllowedImpl.c
Window: [0x00786b00, 0x00786b30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786b30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786b00: 8b 0d c4 db 1e 01 85 c9 74 1b 8b 44 24 08 8b 54
00786b10: 24 04 6a 00 50 52 e8 f5 bc 4d 00 50 e8 2f ac 37
00786b20: 00 83 c4 04 c3 32 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786b00 <.text+0x385b00>:
  786b00:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786b06:	85 c9                                           	test   ecx,ecx
  786b08:	74 1b                                           	je     0x786b25
  786b0a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  786b0e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  786b12:	6a 00                                           	push   0x0
  786b14:	50                                              	push   eax
  786b15:	52                                              	push   edx
  786b16:	e8 f5 bc 4d 00                                  	call   0xc62810
  786b1b:	50                                              	push   eax
  786b1c:	e8 2f ac 37 00                                  	call   0xb01750
  786b21:	83 c4 04                                        	add    esp,0x4
  786b24:	c3                                              	ret
  786b25:	32 c0                                           	xor    al,al
  786b27:	c3                                              	ret
  786b28:	cc                                              	int3
  786b29:	cc                                              	int3
  786b2a:	cc                                              	int3
  786b2b:	cc                                              	int3
  786b2c:	cc                                              	int3
  786b2d:	cc                                              	int3
  786b2e:	cc                                              	int3
  786b2f:	cc                                              	int3
