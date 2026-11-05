# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7770 (ScriptCore.CASUtils::CASUtils_ExtractEyebrowColorImpl)
Paired Ghidra pseudocode: 005A7770_ScriptCore_CASUtils_CASUtils_ExtractEyebrowColorImpl.c
Window: [0x005a7770, 0x005a7810) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7770: 83 ec 6c 56 57 e8 16 1c 1c 00 8b 4c 24 78 8b f0
005a7780: 8b 06 8b 50 58 51 8b ce ff d2 8b f8 85 ff 75 06
005a7790: 5f 5e 83 c4 6c c3 8d 4c 24 14 e8 21 83 01 00 57
005a77a0: 8d 4c 24 18 e8 b7 88 01 00 8d 44 24 0c 50 8d 4c
005a77b0: 24 14 51 68 f8 f6 fd 00 8d 4c 24 20 e8 af 7c 01
005a77c0: 00 8b 16 8b 92 84 00 00 00 6a 01 8d 44 24 0c 50
005a77d0: 8b ce ff d2 8b 06 8b 80 9c 00 00 00 6a 01 6a 00
005a77e0: 8d 4c 24 14 51 8d 54 24 14 52 8b ce ff d0 8b 74
005a77f0: 24 08 8d 4c 24 14 e8 e5 84 01 00 5f 8b c6 5e 83
005a7800: c4 6c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7770 <.text+0x1a6770>:
  5a7770:	83 ec 6c                                        	sub    esp,0x6c
  5a7773:	56                                              	push   esi
  5a7774:	57                                              	push   edi
  5a7775:	e8 16 1c 1c 00                                  	call   0x769390
  5a777a:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
  5a777e:	8b f0                                           	mov    esi,eax
  5a7780:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a7782:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5a7785:	51                                              	push   ecx
  5a7786:	8b ce                                           	mov    ecx,esi
  5a7788:	ff d2                                           	call   edx
  5a778a:	8b f8                                           	mov    edi,eax
  5a778c:	85 ff                                           	test   edi,edi
  5a778e:	75 06                                           	jne    0x5a7796
  5a7790:	5f                                              	pop    edi
  5a7791:	5e                                              	pop    esi
  5a7792:	83 c4 6c                                        	add    esp,0x6c
  5a7795:	c3                                              	ret
  5a7796:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5a779a:	e8 21 83 01 00                                  	call   0x5bfac0
  5a779f:	57                                              	push   edi
  5a77a0:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5a77a4:	e8 b7 88 01 00                                  	call   0x5c0060
  5a77a9:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  5a77ad:	50                                              	push   eax
  5a77ae:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5a77b2:	51                                              	push   ecx
  5a77b3:	68 f8 f6 fd 00                                  	push   0xfdf6f8
  5a77b8:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  5a77bc:	e8 af 7c 01 00                                  	call   0x5bf470
  5a77c1:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a77c3:	8b 92 84 00 00 00                               	mov    edx,DWORD PTR [edx+0x84]
  5a77c9:	6a 01                                           	push   0x1
  5a77cb:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  5a77cf:	50                                              	push   eax
  5a77d0:	8b ce                                           	mov    ecx,esi
  5a77d2:	ff d2                                           	call   edx
  5a77d4:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a77d6:	8b 80 9c 00 00 00                               	mov    eax,DWORD PTR [eax+0x9c]
  5a77dc:	6a 01                                           	push   0x1
  5a77de:	6a 00                                           	push   0x0
  5a77e0:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5a77e4:	51                                              	push   ecx
  5a77e5:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  5a77e9:	52                                              	push   edx
  5a77ea:	8b ce                                           	mov    ecx,esi
  5a77ec:	ff d0                                           	call   eax
  5a77ee:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a77f2:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5a77f6:	e8 e5 84 01 00                                  	call   0x5bfce0
  5a77fb:	5f                                              	pop    edi
  5a77fc:	8b c6                                           	mov    eax,esi
  5a77fe:	5e                                              	pop    esi
  5a77ff:	83 c4 6c                                        	add    esp,0x6c
  5a7802:	c3                                              	ret
  5a7803:	cc                                              	int3
  5a7804:	cc                                              	int3
  5a7805:	cc                                              	int3
  5a7806:	cc                                              	int3
  5a7807:	cc                                              	int3
  5a7808:	cc                                              	int3
  5a7809:	cc                                              	int3
  5a780a:	cc                                              	int3
  5a780b:	cc                                              	int3
  5a780c:	cc                                              	int3
  5a780d:	cc                                              	int3
  5a780e:	cc                                              	int3
  5a780f:	cc                                              	int3
