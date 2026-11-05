# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007861d0 (ScriptCore.World::World_DesignModeSwap_SetSourceObjectImpl)
Paired Ghidra pseudocode: 007861D0_ScriptCore_World_World_DesignModeSwap_SetSourceObjectImpl.c
Window: [0x007861d0, 0x00786210) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007861d0: e8 bb 31 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
007861e0: ff 81 fa 00 00 00 45 74 03 32 c0 c3 8b 10 51 8b
007861f0: c8 8b 82 cc 00 00 00 ff d0 85 c0 74 ec 8b 4c 24
00786200: 0c 8b 54 24 08 51 52 8b c8 e8 52 92 2d 00 c3 cc

LINEAR DISASSEMBLY
007861d0 <.text+0x3851d0>:
  7861d0:	e8 bb 31 fe ff                                  	call   0x769390
  7861d5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7861d9:	8b d1                                           	mov    edx,ecx
  7861db:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  7861e1:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
  7861e7:	74 03                                           	je     0x7861ec
  7861e9:	32 c0                                           	xor    al,al
  7861eb:	c3                                              	ret
  7861ec:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7861ee:	51                                              	push   ecx
  7861ef:	8b c8                                           	mov    ecx,eax
  7861f1:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7861f7:	ff d0                                           	call   eax
  7861f9:	85 c0                                           	test   eax,eax
  7861fb:	74 ec                                           	je     0x7861e9
  7861fd:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  786201:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  786205:	51                                              	push   ecx
  786206:	52                                              	push   edx
  786207:	8b c8                                           	mov    ecx,eax
  786209:	e8 52 92 2d 00                                  	call   0xa5f460
  78620e:	c3                                              	ret
  78620f:	cc                                              	int3
