# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8430 (ScriptCore.CASUtils::CASUtils_PartDataRemoveDesignPresetImpl)
Paired Ghidra pseudocode: 005A8430_ScriptCore_CASUtils_CASUtils_PartDataRemoveDesignPresetImpl.c
Window: [0x005a8430, 0x005a84d0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a84d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8430: 83 ec 14 56 57 e8 46 7a f0 ff 8b f0 e8 5f 7e 58
005a8440: 00 8b 4c 24 2c 8b 54 24 20 6a 00 8b f8 8b 44 24
005a8450: 2c 6a 00 89 44 24 14 8b 44 24 2c 6a 00 89 44 24
005a8460: 24 89 4c 24 1c 6a 00 8d 44 24 18 89 54 24 24 8b
005a8470: 16 8b 52 0c 50 8d 4c 24 20 51 8b ce ff d2 84 c0
005a8480: 74 3a 8b 4c 24 08 85 c9 74 14 8b 01 8b 50 0c 68
005a8490: 7b 77 4c 03 ff d2 85 c0 75 11 8b 4c 24 08 8b 01
005a84a0: 8b 50 04 ff d2 5f 5e 83 c4 14 c3 8b 44 24 30 50
005a84b0: 8d 4c 24 10 51 8b cf e8 84 95 58 00 5f 5e 83 c4
005a84c0: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a8430 <.text+0x1a7430>:
  5a8430:	83 ec 14                                        	sub    esp,0x14
  5a8433:	56                                              	push   esi
  5a8434:	57                                              	push   edi
  5a8435:	e8 46 7a f0 ff                                  	call   0x4afe80
  5a843a:	8b f0                                           	mov    esi,eax
  5a843c:	e8 5f 7e 58 00                                  	call   0xb302a0
  5a8441:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  5a8445:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  5a8449:	6a 00                                           	push   0x0
  5a844b:	8b f8                                           	mov    edi,eax
  5a844d:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  5a8451:	6a 00                                           	push   0x0
  5a8453:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  5a8457:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  5a845b:	6a 00                                           	push   0x0
  5a845d:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  5a8461:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  5a8465:	6a 00                                           	push   0x0
  5a8467:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  5a846b:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5a846f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8471:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  5a8474:	50                                              	push   eax
  5a8475:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  5a8479:	51                                              	push   ecx
  5a847a:	8b ce                                           	mov    ecx,esi
  5a847c:	ff d2                                           	call   edx
  5a847e:	84 c0                                           	test   al,al
  5a8480:	74 3a                                           	je     0x5a84bc
  5a8482:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  5a8486:	85 c9                                           	test   ecx,ecx
  5a8488:	74 14                                           	je     0x5a849e
  5a848a:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a848c:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5a848f:	68 7b 77 4c 03                                  	push   0x34c777b
  5a8494:	ff d2                                           	call   edx
  5a8496:	85 c0                                           	test   eax,eax
  5a8498:	75 11                                           	jne    0x5a84ab
  5a849a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  5a849e:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a84a0:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a84a3:	ff d2                                           	call   edx
  5a84a5:	5f                                              	pop    edi
  5a84a6:	5e                                              	pop    esi
  5a84a7:	83 c4 14                                        	add    esp,0x14
  5a84aa:	c3                                              	ret
  5a84ab:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  5a84af:	50                                              	push   eax
  5a84b0:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a84b4:	51                                              	push   ecx
  5a84b5:	8b cf                                           	mov    ecx,edi
  5a84b7:	e8 84 95 58 00                                  	call   0xb31a40
  5a84bc:	5f                                              	pop    edi
  5a84bd:	5e                                              	pop    esi
  5a84be:	83 c4 14                                        	add    esp,0x14
  5a84c1:	c3                                              	ret
  5a84c2:	cc                                              	int3
  5a84c3:	cc                                              	int3
  5a84c4:	cc                                              	int3
  5a84c5:	cc                                              	int3
  5a84c6:	cc                                              	int3
  5a84c7:	cc                                              	int3
  5a84c8:	cc                                              	int3
  5a84c9:	cc                                              	int3
  5a84ca:	cc                                              	int3
  5a84cb:	cc                                              	int3
  5a84cc:	cc                                              	int3
  5a84cd:	cc                                              	int3
  5a84ce:	cc                                              	int3
  5a84cf:	cc                                              	int3
