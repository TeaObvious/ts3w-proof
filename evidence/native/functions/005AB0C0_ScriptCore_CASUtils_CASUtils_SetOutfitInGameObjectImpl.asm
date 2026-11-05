# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ab0c0 (ScriptCore.CASUtils::CASUtils_SetOutfitInGameObjectImpl)
Paired Ghidra pseudocode: 005AB0C0_ScriptCore_CASUtils_CASUtils_SetOutfitInGameObjectImpl.c
Window: [0x005ab0c0, 0x005ab100) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ab100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ab0c0: 8b 44 24 1c 8b 4c 24 18 8b 54 24 14 50 6a 00 51
005ab0d0: 8b 4c 24 10 52 8b 54 24 18 83 ec 10 8b c4 89 08
005ab0e0: 8b 4c 24 2c 89 50 04 8b 54 24 30 89 48 08 89 50
005ab0f0: 0c e8 da f5 ff ff 83 c4 20 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
005ab0c0 <.text+0x1aa0c0>:
  5ab0c0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  5ab0c4:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5ab0c8:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  5ab0cc:	50                                              	push   eax
  5ab0cd:	6a 00                                           	push   0x0
  5ab0cf:	51                                              	push   ecx
  5ab0d0:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5ab0d4:	52                                              	push   edx
  5ab0d5:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  5ab0d9:	83 ec 10                                        	sub    esp,0x10
  5ab0dc:	8b c4                                           	mov    eax,esp
  5ab0de:	89 08                                           	mov    DWORD PTR [eax],ecx
  5ab0e0:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  5ab0e4:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  5ab0e7:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  5ab0eb:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  5ab0ee:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  5ab0f1:	e8 da f5 ff ff                                  	call   0x5aa6d0
  5ab0f6:	83 c4 20                                        	add    esp,0x20
  5ab0f9:	c3                                              	ret
  5ab0fa:	cc                                              	int3
  5ab0fb:	cc                                              	int3
  5ab0fc:	cc                                              	int3
  5ab0fd:	cc                                              	int3
  5ab0fe:	cc                                              	int3
  5ab0ff:	cc                                              	int3
