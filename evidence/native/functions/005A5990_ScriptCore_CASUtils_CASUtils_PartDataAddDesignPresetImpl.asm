# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5990 (ScriptCore.CASUtils::CASUtils_PartDataAddDesignPresetImpl)
Paired Ghidra pseudocode: 005A5990_ScriptCore_CASUtils_CASUtils_PartDataAddDesignPresetImpl.c
Window: [0x005a5990, 0x005a5a00) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5a00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5990: 83 ec 10 56 57 e8 f6 39 1c 00 8b f0 e8 ff a8 58
005a59a0: 00 8b 4c 24 2c 8b f8 8b 06 8b 50 58 51 8b ce ff
005a59b0: d2 85 c0 75 06 5f 5e 83 c4 10 c3 8b 4c 24 24 8b
005a59c0: 54 24 28 6a 00 6a 00 89 4c 24 10 8b 4c 24 24 50
005a59d0: 89 54 24 18 8b 54 24 2c 8d 44 24 14 89 4c 24 1c
005a59e0: 50 8b cf 89 54 24 24 e8 f4 ce 58 00 5f 5e 83 c4
005a59f0: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5990 <.text+0x1a4990>:
  5a5990:	83 ec 10                                        	sub    esp,0x10
  5a5993:	56                                              	push   esi
  5a5994:	57                                              	push   edi
  5a5995:	e8 f6 39 1c 00                                  	call   0x769390
  5a599a:	8b f0                                           	mov    esi,eax
  5a599c:	e8 ff a8 58 00                                  	call   0xb302a0
  5a59a1:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  5a59a5:	8b f8                                           	mov    edi,eax
  5a59a7:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a59a9:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5a59ac:	51                                              	push   ecx
  5a59ad:	8b ce                                           	mov    ecx,esi
  5a59af:	ff d2                                           	call   edx
  5a59b1:	85 c0                                           	test   eax,eax
  5a59b3:	75 06                                           	jne    0x5a59bb
  5a59b5:	5f                                              	pop    edi
  5a59b6:	5e                                              	pop    esi
  5a59b7:	83 c4 10                                        	add    esp,0x10
  5a59ba:	c3                                              	ret
  5a59bb:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5a59bf:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5a59c3:	6a 00                                           	push   0x0
  5a59c5:	6a 00                                           	push   0x0
  5a59c7:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  5a59cb:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5a59cf:	50                                              	push   eax
  5a59d0:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  5a59d4:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  5a59d8:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  5a59dc:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  5a59e0:	50                                              	push   eax
  5a59e1:	8b cf                                           	mov    ecx,edi
  5a59e3:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5a59e7:	e8 f4 ce 58 00                                  	call   0xb328e0
  5a59ec:	5f                                              	pop    edi
  5a59ed:	5e                                              	pop    esi
  5a59ee:	83 c4 10                                        	add    esp,0x10
  5a59f1:	c3                                              	ret
  5a59f2:	cc                                              	int3
  5a59f3:	cc                                              	int3
  5a59f4:	cc                                              	int3
  5a59f5:	cc                                              	int3
  5a59f6:	cc                                              	int3
  5a59f7:	cc                                              	int3
  5a59f8:	cc                                              	int3
  5a59f9:	cc                                              	int3
  5a59fa:	cc                                              	int3
  5a59fb:	cc                                              	int3
  5a59fc:	cc                                              	int3
  5a59fd:	cc                                              	int3
  5a59fe:	cc                                              	int3
  5a59ff:	cc                                              	int3
