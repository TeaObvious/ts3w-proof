# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076d6d0 (ScriptCore.Simulator::Simulator_LoadNthXmlAsString)
Paired Ghidra pseudocode: 0076D6D0_ScriptCore_Simulator_Simulator_LoadNthXmlAsString.c
Window: [0x0076d6d0, 0x0076d780) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076d780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076d6d0: 51 8b 4c 24 18 8b 54 24 14 56 57 8d 44 24 08 50
0076d6e0: 8b 44 24 1c 51 8b 4c 24 1c 52 8b 54 24 1c 50 51
0076d6f0: 52 c7 44 24 20 00 00 00 00 e8 c2 fe ff ff 83 c4
0076d700: 18 84 c0 74 57 e8 86 bc ff ff 8b 4c 24 08 8b f8
0076d710: 8b 01 8b 50 18 ff d2 8b f0 85 f6 74 3f 8b 06 8b
0076d720: 50 04 8b ce ff d2 8b 07 8b 90 b4 00 00 00 56 8b
0076d730: cf ff d2 8b f8 8b 06 8b 50 18 8b ce ff d2 8b 06
0076d740: 8b 50 08 8b ce ff d2 8b 4c 24 08 85 c9 74 07 8b
0076d750: 01 8b 50 08 ff d2 8b c7 5f 5e 59 c3 8b 4c 24 08
0076d760: 85 c9 74 07 8b 01 8b 50 08 ff d2 5f 33 c0 5e 59
0076d770: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076d6d0 <.text+0x36c6d0>:
  76d6d0:	51                                              	push   ecx
  76d6d1:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76d6d5:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  76d6d9:	56                                              	push   esi
  76d6da:	57                                              	push   edi
  76d6db:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  76d6df:	50                                              	push   eax
  76d6e0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  76d6e4:	51                                              	push   ecx
  76d6e5:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  76d6e9:	52                                              	push   edx
  76d6ea:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  76d6ee:	50                                              	push   eax
  76d6ef:	51                                              	push   ecx
  76d6f0:	52                                              	push   edx
  76d6f1:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
  76d6f9:	e8 c2 fe ff ff                                  	call   0x76d5c0
  76d6fe:	83 c4 18                                        	add    esp,0x18
  76d701:	84 c0                                           	test   al,al
  76d703:	74 57                                           	je     0x76d75c
  76d705:	e8 86 bc ff ff                                  	call   0x769390
  76d70a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76d70e:	8b f8                                           	mov    edi,eax
  76d710:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  76d712:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  76d715:	ff d2                                           	call   edx
  76d717:	8b f0                                           	mov    esi,eax
  76d719:	85 f6                                           	test   esi,esi
  76d71b:	74 3f                                           	je     0x76d75c
  76d71d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76d71f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  76d722:	8b ce                                           	mov    ecx,esi
  76d724:	ff d2                                           	call   edx
  76d726:	8b 07                                           	mov    eax,DWORD PTR [edi]
  76d728:	8b 90 b4 00 00 00                               	mov    edx,DWORD PTR [eax+0xb4]
  76d72e:	56                                              	push   esi
  76d72f:	8b cf                                           	mov    ecx,edi
  76d731:	ff d2                                           	call   edx
  76d733:	8b f8                                           	mov    edi,eax
  76d735:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76d737:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  76d73a:	8b ce                                           	mov    ecx,esi
  76d73c:	ff d2                                           	call   edx
  76d73e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76d740:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  76d743:	8b ce                                           	mov    ecx,esi
  76d745:	ff d2                                           	call   edx
  76d747:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76d74b:	85 c9                                           	test   ecx,ecx
  76d74d:	74 07                                           	je     0x76d756
  76d74f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  76d751:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  76d754:	ff d2                                           	call   edx
  76d756:	8b c7                                           	mov    eax,edi
  76d758:	5f                                              	pop    edi
  76d759:	5e                                              	pop    esi
  76d75a:	59                                              	pop    ecx
  76d75b:	c3                                              	ret
  76d75c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76d760:	85 c9                                           	test   ecx,ecx
  76d762:	74 07                                           	je     0x76d76b
  76d764:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  76d766:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  76d769:	ff d2                                           	call   edx
  76d76b:	5f                                              	pop    edi
  76d76c:	33 c0                                           	xor    eax,eax
  76d76e:	5e                                              	pop    esi
  76d76f:	59                                              	pop    ecx
  76d770:	c3                                              	ret
  76d771:	cc                                              	int3
  76d772:	cc                                              	int3
  76d773:	cc                                              	int3
  76d774:	cc                                              	int3
  76d775:	cc                                              	int3
  76d776:	cc                                              	int3
  76d777:	cc                                              	int3
  76d778:	cc                                              	int3
  76d779:	cc                                              	int3
  76d77a:	cc                                              	int3
  76d77b:	cc                                              	int3
  76d77c:	cc                                              	int3
  76d77d:	cc                                              	int3
  76d77e:	cc                                              	int3
  76d77f:	cc                                              	int3
