# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00742fc0 (SaveWorld_DeliverCompletionBoolean)
Paired Ghidra pseudocode: 00742FC0_SaveWorld_DeliverCompletionBoolean.c
Window: [0x00742fc0, 0x00743050) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00742fc0: 83 ec 20 56 8b f1 e8 c5 63 02 00 85 c0 74 51 8a
00742fd0: 4c 24 28 8b 10 8b 92 24 01 00 00 88 4c 24 14 8d
00742fe0: 4c 24 04 51 8b 4e 34 51 8b 4e 30 51 8b c8 c7 44
00742ff0: 24 10 6c 88 00 01 66 c7 44 24 1a 01 00 66 c7 44
00743000: 24 18 02 00 ff d2 f6 44 24 0c 04 c7 44 24 04 f4
00743010: a6 fb 00 74 0b 6a 00 8d 4c 24 08 e8 40 27 db ff
00743020: 5e 83 c4 20 c2 04 00 cc cc cc cc cc cc cc cc cc
00743030: 83 e9 20 e9 48 74 fc ff cc cc cc cc cc cc cc cc
00743040: 83 e9 20 e9 c8 eb 77 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00742fc0 <.text+0x341fc0>:
  742fc0:	83 ec 20                                        	sub    esp,0x20
  742fc3:	56                                              	push   esi
  742fc4:	8b f1                                           	mov    esi,ecx
  742fc6:	e8 c5 63 02 00                                  	call   0x769390
  742fcb:	85 c0                                           	test   eax,eax
  742fcd:	74 51                                           	je     0x743020
  742fcf:	8a 4c 24 28                                     	mov    cl,BYTE PTR [esp+0x28]
  742fd3:	8b 10                                           	mov    edx,DWORD PTR [eax]
  742fd5:	8b 92 24 01 00 00                               	mov    edx,DWORD PTR [edx+0x124]
  742fdb:	88 4c 24 14                                     	mov    BYTE PTR [esp+0x14],cl
  742fdf:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  742fe3:	51                                              	push   ecx
  742fe4:	8b 4e 34                                        	mov    ecx,DWORD PTR [esi+0x34]
  742fe7:	51                                              	push   ecx
  742fe8:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  742feb:	51                                              	push   ecx
  742fec:	8b c8                                           	mov    ecx,eax
  742fee:	c7 44 24 10 6c 88 00 01                         	mov    DWORD PTR [esp+0x10],0x100886c
  742ff6:	66 c7 44 24 1a 01 00                            	mov    WORD PTR [esp+0x1a],0x1
  742ffd:	66 c7 44 24 18 02 00                            	mov    WORD PTR [esp+0x18],0x2
  743004:	ff d2                                           	call   edx
  743006:	f6 44 24 0c 04                                  	test   BYTE PTR [esp+0xc],0x4
  74300b:	c7 44 24 04 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x4],0xfba6f4
  743013:	74 0b                                           	je     0x743020
  743015:	6a 00                                           	push   0x0
  743017:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  74301b:	e8 40 27 db ff                                  	call   0x4f5760
  743020:	5e                                              	pop    esi
  743021:	83 c4 20                                        	add    esp,0x20
  743024:	c2 04 00                                        	ret    0x4
  743027:	cc                                              	int3
  743028:	cc                                              	int3
  743029:	cc                                              	int3
  74302a:	cc                                              	int3
  74302b:	cc                                              	int3
  74302c:	cc                                              	int3
  74302d:	cc                                              	int3
  74302e:	cc                                              	int3
  74302f:	cc                                              	int3
  743030:	83 e9 20                                        	sub    ecx,0x20
  743033:	e9 48 74 fc ff                                  	jmp    0x70a480
  743038:	cc                                              	int3
  743039:	cc                                              	int3
  74303a:	cc                                              	int3
  74303b:	cc                                              	int3
  74303c:	cc                                              	int3
  74303d:	cc                                              	int3
  74303e:	cc                                              	int3
  74303f:	cc                                              	int3
  743040:	83 e9 20                                        	sub    ecx,0x20
  743043:	e9 c8 eb 77 00                                  	jmp    0xec1c10
  743048:	cc                                              	int3
  743049:	cc                                              	int3
  74304a:	cc                                              	int3
  74304b:	cc                                              	int3
  74304c:	cc                                              	int3
  74304d:	cc                                              	int3
  74304e:	cc                                              	int3
  74304f:	cc                                              	int3
