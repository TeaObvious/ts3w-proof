# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00746130 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_UnregisteredFromSharingService)
Paired Ghidra pseudocode: 00746130_ScriptCore_OnlineFeatures_OnlineFeaturesHost_UnregisteredFromSharingService.c
Window: [0x00746130, 0x00746190) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00746190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00746130: 8b 44 24 04 85 c0 74 4f 33 d2 a9 00 00 ff ff 74
00746140: 08 ba 10 00 00 00 c1 e8 10 a9 00 ff 00 00 74 06
00746150: 83 c2 08 c1 e8 08 a8 f0 74 06 83 c2 04 c1 e8 04
00746160: a8 0c 74 06 83 c2 02 c1 e8 02 a8 02 74 03 83 c2
00746170: 01 a1 68 50 1d 01 85 c0 74 0d 8d 48 f8 85 c9 74
00746180: 06 52 e8 69 c6 13 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00746130 <.text+0x345130>:
  746130:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  746134:	85 c0                                           	test   eax,eax
  746136:	74 4f                                           	je     0x746187
  746138:	33 d2                                           	xor    edx,edx
  74613a:	a9 00 00 ff ff                                  	test   eax,0xffff0000
  74613f:	74 08                                           	je     0x746149
  746141:	ba 10 00 00 00                                  	mov    edx,0x10
  746146:	c1 e8 10                                        	shr    eax,0x10
  746149:	a9 00 ff 00 00                                  	test   eax,0xff00
  74614e:	74 06                                           	je     0x746156
  746150:	83 c2 08                                        	add    edx,0x8
  746153:	c1 e8 08                                        	shr    eax,0x8
  746156:	a8 f0                                           	test   al,0xf0
  746158:	74 06                                           	je     0x746160
  74615a:	83 c2 04                                        	add    edx,0x4
  74615d:	c1 e8 04                                        	shr    eax,0x4
  746160:	a8 0c                                           	test   al,0xc
  746162:	74 06                                           	je     0x74616a
  746164:	83 c2 02                                        	add    edx,0x2
  746167:	c1 e8 02                                        	shr    eax,0x2
  74616a:	a8 02                                           	test   al,0x2
  74616c:	74 03                                           	je     0x746171
  74616e:	83 c2 01                                        	add    edx,0x1
  746171:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  746176:	85 c0                                           	test   eax,eax
  746178:	74 0d                                           	je     0x746187
  74617a:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  74617d:	85 c9                                           	test   ecx,ecx
  74617f:	74 06                                           	je     0x746187
  746181:	52                                              	push   edx
  746182:	e8 69 c6 13 00                                  	call   0x8827f0
  746187:	c3                                              	ret
  746188:	cc                                              	int3
  746189:	cc                                              	int3
  74618a:	cc                                              	int3
  74618b:	cc                                              	int3
  74618c:	cc                                              	int3
  74618d:	cc                                              	int3
  74618e:	cc                                              	int3
  74618f:	cc                                              	int3
