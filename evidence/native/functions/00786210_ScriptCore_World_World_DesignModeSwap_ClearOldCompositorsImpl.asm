# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786210 (ScriptCore.World::World_DesignModeSwap_ClearOldCompositorsImpl)
Paired Ghidra pseudocode: 00786210_ScriptCore_World_World_DesignModeSwap_ClearOldCompositorsImpl.c
Window: [0x00786210, 0x00786250) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786210: e8 7b 31 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
00786220: ff 81 fa 00 00 00 45 75 18 8b 10 51 8b c8 8b 82
00786230: cc 00 00 00 ff d0 85 c0 74 07 8b c8 e9 af 94 2d
00786240: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786210 <.text+0x385210>:
  786210:	e8 7b 31 fe ff                                  	call   0x769390
  786215:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  786219:	8b d1                                           	mov    edx,ecx
  78621b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  786221:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
  786227:	75 18                                           	jne    0x786241
  786229:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78622b:	51                                              	push   ecx
  78622c:	8b c8                                           	mov    ecx,eax
  78622e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  786234:	ff d0                                           	call   eax
  786236:	85 c0                                           	test   eax,eax
  786238:	74 07                                           	je     0x786241
  78623a:	8b c8                                           	mov    ecx,eax
  78623c:	e9 af 94 2d 00                                  	jmp    0xa5f6f0
  786241:	c3                                              	ret
  786242:	cc                                              	int3
  786243:	cc                                              	int3
  786244:	cc                                              	int3
  786245:	cc                                              	int3
  786246:	cc                                              	int3
  786247:	cc                                              	int3
  786248:	cc                                              	int3
  786249:	cc                                              	int3
  78624a:	cc                                              	int3
  78624b:	cc                                              	int3
  78624c:	cc                                              	int3
  78624d:	cc                                              	int3
  78624e:	cc                                              	int3
  78624f:	cc                                              	int3
