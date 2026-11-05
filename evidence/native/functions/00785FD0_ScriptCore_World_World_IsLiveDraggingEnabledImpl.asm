# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785fd0 (ScriptCore.World::World_IsLiveDraggingEnabledImpl)
Paired Ghidra pseudocode: 00785FD0_ScriptCore_World_World_IsLiveDraggingEnabledImpl.c
Window: [0x00785fd0, 0x00786010) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786010
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785fd0: e8 9b 15 1b 00 85 c0 74 2f 8b 4c 24 08 8b 54 24
00785fe0: 04 51 52 8b c8 e8 96 1f 1b 00 85 c0 74 1a 8b 0d
00785ff0: 34 e0 1e 01 83 c0 18 50 e8 b3 8b 50 00 85 c0 74
00786000: 07 8b c8 e9 38 17 51 00 32 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00785fd0 <.text+0x384fd0>:
  785fd0:	e8 9b 15 1b 00                                  	call   0x937570
  785fd5:	85 c0                                           	test   eax,eax
  785fd7:	74 2f                                           	je     0x786008
  785fd9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  785fdd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  785fe1:	51                                              	push   ecx
  785fe2:	52                                              	push   edx
  785fe3:	8b c8                                           	mov    ecx,eax
  785fe5:	e8 96 1f 1b 00                                  	call   0x937f80
  785fea:	85 c0                                           	test   eax,eax
  785fec:	74 1a                                           	je     0x786008
  785fee:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  785ff4:	83 c0 18                                        	add    eax,0x18
  785ff7:	50                                              	push   eax
  785ff8:	e8 b3 8b 50 00                                  	call   0xc8ebb0
  785ffd:	85 c0                                           	test   eax,eax
  785fff:	74 07                                           	je     0x786008
  786001:	8b c8                                           	mov    ecx,eax
  786003:	e9 38 17 51 00                                  	jmp    0xc97740
  786008:	32 c0                                           	xor    al,al
  78600a:	c3                                              	ret
  78600b:	cc                                              	int3
  78600c:	cc                                              	int3
  78600d:	cc                                              	int3
  78600e:	cc                                              	int3
  78600f:	cc                                              	int3
