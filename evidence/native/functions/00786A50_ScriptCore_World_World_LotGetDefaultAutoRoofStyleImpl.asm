# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786a50 (ScriptCore.World::World_LotGetDefaultAutoRoofStyleImpl)
Paired Ghidra pseudocode: 00786A50_ScriptCore_World_World_LotGetDefaultAutoRoofStyleImpl.c
Window: [0x00786a50, 0x00786ad0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786ad0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786a50: 8b 0d c4 db 1e 01 83 ec 10 85 c9 56 8b 74 24 18
00786a60: c7 46 04 00 00 00 00 c7 46 08 00 00 00 00 c7 46
00786a70: 0c 00 00 00 00 c7 06 00 00 00 00 74 46 8b 44 24
00786a80: 20 8b 54 24 1c 6a 00 50 52 e8 82 bd 4d 00 85 c0
00786a90: 74 31 8b 80 ac 02 00 00 85 c0 74 27 8d 4c 24 04
00786aa0: 51 8b c8 e8 c8 da 40 00 8b 54 24 04 8b 44 24 08
00786ab0: 8b 4c 24 10 89 56 08 8b 54 24 0c 89 46 0c 89 4e
00786ac0: 04 89 16 8b c6 5e 83 c4 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786a50 <.text+0x385a50>:
  786a50:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786a56:	83 ec 10                                        	sub    esp,0x10
  786a59:	85 c9                                           	test   ecx,ecx
  786a5b:	56                                              	push   esi
  786a5c:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  786a60:	c7 46 04 00 00 00 00                            	mov    DWORD PTR [esi+0x4],0x0
  786a67:	c7 46 08 00 00 00 00                            	mov    DWORD PTR [esi+0x8],0x0
  786a6e:	c7 46 0c 00 00 00 00                            	mov    DWORD PTR [esi+0xc],0x0
  786a75:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  786a7b:	74 46                                           	je     0x786ac3
  786a7d:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  786a81:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  786a85:	6a 00                                           	push   0x0
  786a87:	50                                              	push   eax
  786a88:	52                                              	push   edx
  786a89:	e8 82 bd 4d 00                                  	call   0xc62810
  786a8e:	85 c0                                           	test   eax,eax
  786a90:	74 31                                           	je     0x786ac3
  786a92:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
  786a98:	85 c0                                           	test   eax,eax
  786a9a:	74 27                                           	je     0x786ac3
  786a9c:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  786aa0:	51                                              	push   ecx
  786aa1:	8b c8                                           	mov    ecx,eax
  786aa3:	e8 c8 da 40 00                                  	call   0xb94570
  786aa8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  786aac:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  786ab0:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  786ab4:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  786ab7:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  786abb:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  786abe:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  786ac1:	89 16                                           	mov    DWORD PTR [esi],edx
  786ac3:	8b c6                                           	mov    eax,esi
  786ac5:	5e                                              	pop    esi
  786ac6:	83 c4 10                                        	add    esp,0x10
  786ac9:	c3                                              	ret
  786aca:	cc                                              	int3
  786acb:	cc                                              	int3
  786acc:	cc                                              	int3
  786acd:	cc                                              	int3
  786ace:	cc                                              	int3
  786acf:	cc                                              	int3
