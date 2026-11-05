# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786110 (ScriptCore.World::World_DesignModeSwap_SetFloodImpl)
Paired Ghidra pseudocode: 00786110_ScriptCore_World_World_DesignModeSwap_SetFloodImpl.c
Window: [0x00786110, 0x00786150) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786150
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786110: e8 7b 32 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
00786120: ff 81 fa 00 00 00 45 74 03 32 c0 c3 8b 10 51 8b
00786130: c8 8b 82 cc 00 00 00 ff d0 85 c0 74 ec 8b 4c 24
00786140: 08 51 8b c8 e8 57 7f 2d 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786110 <.text+0x385110>:
  786110:	e8 7b 32 fe ff                                  	call   0x769390
  786115:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  786119:	8b d1                                           	mov    edx,ecx
  78611b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  786121:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
  786127:	74 03                                           	je     0x78612c
  786129:	32 c0                                           	xor    al,al
  78612b:	c3                                              	ret
  78612c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78612e:	51                                              	push   ecx
  78612f:	8b c8                                           	mov    ecx,eax
  786131:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  786137:	ff d0                                           	call   eax
  786139:	85 c0                                           	test   eax,eax
  78613b:	74 ec                                           	je     0x786129
  78613d:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  786141:	51                                              	push   ecx
  786142:	8b c8                                           	mov    ecx,eax
  786144:	e8 57 7f 2d 00                                  	call   0xa5e0a0
  786149:	c3                                              	ret
  78614a:	cc                                              	int3
  78614b:	cc                                              	int3
  78614c:	cc                                              	int3
  78614d:	cc                                              	int3
  78614e:	cc                                              	int3
  78614f:	cc                                              	int3
