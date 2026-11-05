# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e5e0 (ScriptCore.World::World_SetFloorCutoutStateForObjectImpl)
Paired Ghidra pseudocode: 0078E5E0_ScriptCore_World_World_SetFloorCutoutStateForObjectImpl.c
Window: [0x0078e5e0, 0x0078e640) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e5e0: 56 e8 8a 8f 1a 00 8b 4c 24 0c 8b 54 24 08 51 52
0078e5f0: 8b c8 e8 89 99 1a 00 8b f0 85 f6 74 3b a1 08 df
0078e600: 1e 01 50 8b ce e8 56 5c 1a 00 85 c0 74 2a 53 8a
0078e610: 5c 24 14 84 db 0f 94 c1 51 8b c8 e8 30 af 4f 00
0078e620: 84 db 5b 56 74 0a e8 55 9b 37 00 83 c4 04 5e c3
0078e630: e8 eb 33 37 00 83 c4 04 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078e5e0 <.text+0x38d5e0>:
  78e5e0:	56                                              	push   esi
  78e5e1:	e8 8a 8f 1a 00                                  	call   0x937570
  78e5e6:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78e5ea:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  78e5ee:	51                                              	push   ecx
  78e5ef:	52                                              	push   edx
  78e5f0:	8b c8                                           	mov    ecx,eax
  78e5f2:	e8 89 99 1a 00                                  	call   0x937f80
  78e5f7:	8b f0                                           	mov    esi,eax
  78e5f9:	85 f6                                           	test   esi,esi
  78e5fb:	74 3b                                           	je     0x78e638
  78e5fd:	a1 08 df 1e 01                                  	mov    eax,ds:0x11edf08
  78e602:	50                                              	push   eax
  78e603:	8b ce                                           	mov    ecx,esi
  78e605:	e8 56 5c 1a 00                                  	call   0x934260
  78e60a:	85 c0                                           	test   eax,eax
  78e60c:	74 2a                                           	je     0x78e638
  78e60e:	53                                              	push   ebx
  78e60f:	8a 5c 24 14                                     	mov    bl,BYTE PTR [esp+0x14]
  78e613:	84 db                                           	test   bl,bl
  78e615:	0f 94 c1                                        	sete   cl
  78e618:	51                                              	push   ecx
  78e619:	8b c8                                           	mov    ecx,eax
  78e61b:	e8 30 af 4f 00                                  	call   0xc89550
  78e620:	84 db                                           	test   bl,bl
  78e622:	5b                                              	pop    ebx
  78e623:	56                                              	push   esi
  78e624:	74 0a                                           	je     0x78e630
  78e626:	e8 55 9b 37 00                                  	call   0xb08180
  78e62b:	83 c4 04                                        	add    esp,0x4
  78e62e:	5e                                              	pop    esi
  78e62f:	c3                                              	ret
  78e630:	e8 eb 33 37 00                                  	call   0xb01a20
  78e635:	83 c4 04                                        	add    esp,0x4
  78e638:	5e                                              	pop    esi
  78e639:	c3                                              	ret
  78e63a:	cc                                              	int3
  78e63b:	cc                                              	int3
  78e63c:	cc                                              	int3
  78e63d:	cc                                              	int3
  78e63e:	cc                                              	int3
  78e63f:	cc                                              	int3
