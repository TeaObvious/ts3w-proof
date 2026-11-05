# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a76c0 (ScriptCore.CASUtils::CASUtils_ExtractHairColorImpl)
Paired Ghidra pseudocode: 005A76C0_ScriptCore_CASUtils_CASUtils_ExtractHairColorImpl.c
Window: [0x005a76c0, 0x005a7770) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a76c0: 83 ec 78 56 57 e8 c6 1c 1c 00 8b 8c 24 84 00 00
005a76d0: 00 8b f8 8b 07 8b 50 58 51 8b cf ff d2 8b f0 85
005a76e0: f6 75 06 5f 5e 83 c4 78 c3 8d 4c 24 20 e8 ce 83
005a76f0: 01 00 56 8d 4c 24 24 e8 64 89 01 00 33 f6 8b ff
005a7700: 8b 96 d4 61 15 01 8d 44 34 10 50 8d 4c 24 10 51
005a7710: 52 8d 4c 24 2c e8 56 7d 01 00 83 c6 04 83 fe 10
005a7720: 7c de 8b 07 8b 90 84 00 00 00 6a 04 8d 4c 24 0c
005a7730: 51 8b cf ff d2 8b 07 8b 80 9c 00 00 00 6a 04 6a
005a7740: 00 8d 4c 24 18 51 8d 54 24 14 52 8b cf ff d0 8b
005a7750: 74 24 08 8d 4c 24 20 e8 84 85 01 00 5f 8b c6 5e
005a7760: 83 c4 78 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a76c0 <.text+0x1a66c0>:
  5a76c0:	83 ec 78                                        	sub    esp,0x78
  5a76c3:	56                                              	push   esi
  5a76c4:	57                                              	push   edi
  5a76c5:	e8 c6 1c 1c 00                                  	call   0x769390
  5a76ca:	8b 8c 24 84 00 00 00                            	mov    ecx,DWORD PTR [esp+0x84]
  5a76d1:	8b f8                                           	mov    edi,eax
  5a76d3:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5a76d5:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5a76d8:	51                                              	push   ecx
  5a76d9:	8b cf                                           	mov    ecx,edi
  5a76db:	ff d2                                           	call   edx
  5a76dd:	8b f0                                           	mov    esi,eax
  5a76df:	85 f6                                           	test   esi,esi
  5a76e1:	75 06                                           	jne    0x5a76e9
  5a76e3:	5f                                              	pop    edi
  5a76e4:	5e                                              	pop    esi
  5a76e5:	83 c4 78                                        	add    esp,0x78
  5a76e8:	c3                                              	ret
  5a76e9:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  5a76ed:	e8 ce 83 01 00                                  	call   0x5bfac0
  5a76f2:	56                                              	push   esi
  5a76f3:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  5a76f7:	e8 64 89 01 00                                  	call   0x5c0060
  5a76fc:	33 f6                                           	xor    esi,esi
  5a76fe:	8b ff                                           	mov    edi,edi
  5a7700:	8b 96 d4 61 15 01                               	mov    edx,DWORD PTR [esi+0x11561d4]
  5a7706:	8d 44 34 10                                     	lea    eax,[esp+esi*1+0x10]
  5a770a:	50                                              	push   eax
  5a770b:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a770f:	51                                              	push   ecx
  5a7710:	52                                              	push   edx
  5a7711:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5a7715:	e8 56 7d 01 00                                  	call   0x5bf470
  5a771a:	83 c6 04                                        	add    esi,0x4
  5a771d:	83 fe 10                                        	cmp    esi,0x10
  5a7720:	7c de                                           	jl     0x5a7700
  5a7722:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5a7724:	8b 90 84 00 00 00                               	mov    edx,DWORD PTR [eax+0x84]
  5a772a:	6a 04                                           	push   0x4
  5a772c:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5a7730:	51                                              	push   ecx
  5a7731:	8b cf                                           	mov    ecx,edi
  5a7733:	ff d2                                           	call   edx
  5a7735:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5a7737:	8b 80 9c 00 00 00                               	mov    eax,DWORD PTR [eax+0x9c]
  5a773d:	6a 04                                           	push   0x4
  5a773f:	6a 00                                           	push   0x0
  5a7741:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5a7745:	51                                              	push   ecx
  5a7746:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  5a774a:	52                                              	push   edx
  5a774b:	8b cf                                           	mov    ecx,edi
  5a774d:	ff d0                                           	call   eax
  5a774f:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a7753:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  5a7757:	e8 84 85 01 00                                  	call   0x5bfce0
  5a775c:	5f                                              	pop    edi
  5a775d:	8b c6                                           	mov    eax,esi
  5a775f:	5e                                              	pop    esi
  5a7760:	83 c4 78                                        	add    esp,0x78
  5a7763:	c3                                              	ret
  5a7764:	cc                                              	int3
  5a7765:	cc                                              	int3
  5a7766:	cc                                              	int3
  5a7767:	cc                                              	int3
  5a7768:	cc                                              	int3
  5a7769:	cc                                              	int3
  5a776a:	cc                                              	int3
  5a776b:	cc                                              	int3
  5a776c:	cc                                              	int3
  5a776d:	cc                                              	int3
  5a776e:	cc                                              	int3
  5a776f:	cc                                              	int3
