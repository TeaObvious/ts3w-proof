# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787a80 (ScriptCore.World::World_ObjectDesigner_GetPatternKeyImpl)
Paired Ghidra pseudocode: 00787A80_ScriptCore_World_World_ObjectDesigner_GetPatternKeyImpl.c
Window: [0x00787a80, 0x00787ad0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787ad0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787a80: 83 ec 10 56 e8 17 88 3a 00 8b 74 24 18 8b 4c 24
00787a90: 1c 33 d2 89 16 89 56 04 89 56 08 89 56 0c 51 8d
00787aa0: 54 24 08 52 8b c8 e8 35 e5 3a 00 8b 44 24 04 8b
00787ab0: 4c 24 08 8b 54 24 10 89 46 08 8b 44 24 0c 89 06
00787ac0: 89 4e 0c 89 56 04 8b c6 5e 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00787a80 <.text+0x386a80>:
  787a80:	83 ec 10                                        	sub    esp,0x10
  787a83:	56                                              	push   esi
  787a84:	e8 17 88 3a 00                                  	call   0xb302a0
  787a89:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  787a8d:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  787a91:	33 d2                                           	xor    edx,edx
  787a93:	89 16                                           	mov    DWORD PTR [esi],edx
  787a95:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
  787a98:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  787a9b:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  787a9e:	51                                              	push   ecx
  787a9f:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  787aa3:	52                                              	push   edx
  787aa4:	8b c8                                           	mov    ecx,eax
  787aa6:	e8 35 e5 3a 00                                  	call   0xb35fe0
  787aab:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  787aaf:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  787ab3:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  787ab7:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  787aba:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  787abe:	89 06                                           	mov    DWORD PTR [esi],eax
  787ac0:	89 4e 0c                                        	mov    DWORD PTR [esi+0xc],ecx
  787ac3:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
  787ac6:	8b c6                                           	mov    eax,esi
  787ac8:	5e                                              	pop    esi
  787ac9:	83 c4 10                                        	add    esp,0x10
  787acc:	c3                                              	ret
  787acd:	cc                                              	int3
  787ace:	cc                                              	int3
  787acf:	cc                                              	int3
