# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786060 (ScriptCore.World::World_DesignModeSwap_ReleaseImpl)
Paired Ghidra pseudocode: 00786060_ScriptCore_World_World_DesignModeSwap_ReleaseImpl.c
Window: [0x00786060, 0x00786090) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786060: e8 3b a2 3a 00 8b 4c 24 04 8b d1 81 e2 00 00 00
00786070: ff 81 fa 00 00 00 45 75 08 51 8b c8 e8 df 0f 3b
00786080: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786060 <.text+0x385060>:
  786060:	e8 3b a2 3a 00                                  	call   0xb302a0
  786065:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  786069:	8b d1                                           	mov    edx,ecx
  78606b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  786071:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
  786077:	75 08                                           	jne    0x786081
  786079:	51                                              	push   ecx
  78607a:	8b c8                                           	mov    ecx,eax
  78607c:	e8 df 0f 3b 00                                  	call   0xb37060
  786081:	c3                                              	ret
  786082:	cc                                              	int3
  786083:	cc                                              	int3
  786084:	cc                                              	int3
  786085:	cc                                              	int3
  786086:	cc                                              	int3
  786087:	cc                                              	int3
  786088:	cc                                              	int3
  786089:	cc                                              	int3
  78608a:	cc                                              	int3
  78608b:	cc                                              	int3
  78608c:	cc                                              	int3
  78608d:	cc                                              	int3
  78608e:	cc                                              	int3
  78608f:	cc                                              	int3
