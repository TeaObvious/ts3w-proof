# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00789880 (ScriptCore.World::World_AddObjectToSceneImpl)
Paired Ghidra pseudocode: 00789880_ScriptCore_World_World_AddObjectToSceneImpl.c
Window: [0x00789880, 0x007898e0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x007898e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00789880: 51 56 e8 e9 dc 1a 00 8b 4c 24 10 8b 54 24 0c 51
00789890: 52 8b c8 e8 e8 e6 1a 00 8b f0 85 f6 74 3a 57 8d
007898a0: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 6a 00 56
007898b0: 6a 0b e8 09 be 1a 00 83 c4 0c 8b d7 83 c8 ff f0
007898c0: 0f c1 02 48 75 11 b9 01 00 00 00 87 0f 8b 16 8b
007898d0: 02 6a 01 8b ce ff d0 5f 5e 59 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00789880 <.text+0x388880>:
  789880:	51                                              	push   ecx
  789881:	56                                              	push   esi
  789882:	e8 e9 dc 1a 00                                  	call   0x937570
  789887:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78988b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78988f:	51                                              	push   ecx
  789890:	52                                              	push   edx
  789891:	8b c8                                           	mov    ecx,eax
  789893:	e8 e8 e6 1a 00                                  	call   0x937f80
  789898:	8b f0                                           	mov    esi,eax
  78989a:	85 f6                                           	test   esi,esi
  78989c:	74 3a                                           	je     0x7898d8
  78989e:	57                                              	push   edi
  78989f:	8d 7e 04                                        	lea    edi,[esi+0x4]
  7898a2:	8b c7                                           	mov    eax,edi
  7898a4:	b9 01 00 00 00                                  	mov    ecx,0x1
  7898a9:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  7898ad:	6a 00                                           	push   0x0
  7898af:	56                                              	push   esi
  7898b0:	6a 0b                                           	push   0xb
  7898b2:	e8 09 be 1a 00                                  	call   0x9356c0
  7898b7:	83 c4 0c                                        	add    esp,0xc
  7898ba:	8b d7                                           	mov    edx,edi
  7898bc:	83 c8 ff                                        	or     eax,0xffffffff
  7898bf:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  7898c3:	48                                              	dec    eax
  7898c4:	75 11                                           	jne    0x7898d7
  7898c6:	b9 01 00 00 00                                  	mov    ecx,0x1
  7898cb:	87 0f                                           	xchg   DWORD PTR [edi],ecx
  7898cd:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7898cf:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7898d1:	6a 01                                           	push   0x1
  7898d3:	8b ce                                           	mov    ecx,esi
  7898d5:	ff d0                                           	call   eax
  7898d7:	5f                                              	pop    edi
  7898d8:	5e                                              	pop    esi
  7898d9:	59                                              	pop    ecx
  7898da:	c3                                              	ret
  7898db:	cc                                              	int3
  7898dc:	cc                                              	int3
  7898dd:	cc                                              	int3
  7898de:	cc                                              	int3
  7898df:	cc                                              	int3
