# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076d920 (ScriptCore.Simulator::Simulator_GetAllSimulationObjectNamesImpl)
Paired Ghidra pseudocode: 0076D920_ScriptCore_Simulator_Simulator_GetAllSimulationObjectNamesImpl.c
Window: [0x0076d920, 0x0076da20) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076da20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076d920: 83 ec 44 56 57 e8 66 ba ff ff 8b 44 24 5c 8b 4c
0076d930: 24 58 50 51 e8 07 b7 06 00 33 f6 83 c4 08 3b c6
0076d940: 75 05 b8 38 8f 00 01 50 8d 4c 24 10 89 74 24 10
0076d950: 89 74 24 14 89 74 24 18 c7 44 24 1c cc 8e 00 01
0076d960: e8 6b 81 c9 ff 8d 54 24 0c 52 8d 44 24 20 50 e8
0076d970: 1c 63 d8 ff 83 c4 08 6a 01 6a 10 8d 4c 24 24 51
0076d980: 6a 09 6a 13 8d 4c 24 40 c7 44 24 40 6c 88 00 01
0076d990: 66 c7 44 24 4a 13 00 66 c7 44 24 48 0b 00 e8 1d
0076d9a0: 80 d8 ff 89 74 24 08 e8 e4 b9 ff ff 8b 10 8b 52
0076d9b0: 50 8d 4c 24 08 51 8d 4c 24 30 51 8b c8 ff d2 f6
0076d9c0: 44 24 34 04 8b 7c 24 08 c7 44 24 2c f4 a6 fb 00
0076d9d0: 74 0a 56 8d 4c 24 30 e8 84 7d d8 ff 8b 4c 24 24
0076d9e0: 8b 44 24 1c 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c6
0076d9f0: 74 09 50 e8 e8 6a d7 ff 83 c4 04 8b 54 24 14 8b
0076da00: 44 24 0c 2b d0 83 fa 01 7e 0d 3b c6 74 09 50 e8
0076da10: cc 6a d7 ff 83 c4 04 8b c7 5f 5e 83 c4 44 c3 cc

LINEAR DISASSEMBLY
0076d920 <.text+0x36c920>:
  76d920:	83 ec 44                                        	sub    esp,0x44
  76d923:	56                                              	push   esi
  76d924:	57                                              	push   edi
  76d925:	e8 66 ba ff ff                                  	call   0x769390
  76d92a:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  76d92e:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
  76d932:	50                                              	push   eax
  76d933:	51                                              	push   ecx
  76d934:	e8 07 b7 06 00                                  	call   0x7d9040
  76d939:	33 f6                                           	xor    esi,esi
  76d93b:	83 c4 08                                        	add    esp,0x8
  76d93e:	3b c6                                           	cmp    eax,esi
  76d940:	75 05                                           	jne    0x76d947
  76d942:	b8 38 8f 00 01                                  	mov    eax,0x1008f38
  76d947:	50                                              	push   eax
  76d948:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  76d94c:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
  76d950:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  76d954:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  76d958:	c7 44 24 1c cc 8e 00 01                         	mov    DWORD PTR [esp+0x1c],0x1008ecc
  76d960:	e8 6b 81 c9 ff                                  	call   0x405ad0
  76d965:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  76d969:	52                                              	push   edx
  76d96a:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  76d96e:	50                                              	push   eax
  76d96f:	e8 1c 63 d8 ff                                  	call   0x4f3c90
  76d974:	83 c4 08                                        	add    esp,0x8
  76d977:	6a 01                                           	push   0x1
  76d979:	6a 10                                           	push   0x10
  76d97b:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  76d97f:	51                                              	push   ecx
  76d980:	6a 09                                           	push   0x9
  76d982:	6a 13                                           	push   0x13
  76d984:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  76d988:	c7 44 24 40 6c 88 00 01                         	mov    DWORD PTR [esp+0x40],0x100886c
  76d990:	66 c7 44 24 4a 13 00                            	mov    WORD PTR [esp+0x4a],0x13
  76d997:	66 c7 44 24 48 0b 00                            	mov    WORD PTR [esp+0x48],0xb
  76d99e:	e8 1d 80 d8 ff                                  	call   0x4f59c0
  76d9a3:	89 74 24 08                                     	mov    DWORD PTR [esp+0x8],esi
  76d9a7:	e8 e4 b9 ff ff                                  	call   0x769390
  76d9ac:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76d9ae:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  76d9b1:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  76d9b5:	51                                              	push   ecx
  76d9b6:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  76d9ba:	51                                              	push   ecx
  76d9bb:	8b c8                                           	mov    ecx,eax
  76d9bd:	ff d2                                           	call   edx
  76d9bf:	f6 44 24 34 04                                  	test   BYTE PTR [esp+0x34],0x4
  76d9c4:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  76d9c8:	c7 44 24 2c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x2c],0xfba6f4
  76d9d0:	74 0a                                           	je     0x76d9dc
  76d9d2:	56                                              	push   esi
  76d9d3:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  76d9d7:	e8 84 7d d8 ff                                  	call   0x4f5760
  76d9dc:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  76d9e0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  76d9e4:	2b c8                                           	sub    ecx,eax
  76d9e6:	83 e1 fe                                        	and    ecx,0xfffffffe
  76d9e9:	83 f9 02                                        	cmp    ecx,0x2
  76d9ec:	7e 0d                                           	jle    0x76d9fb
  76d9ee:	3b c6                                           	cmp    eax,esi
  76d9f0:	74 09                                           	je     0x76d9fb
  76d9f2:	50                                              	push   eax
  76d9f3:	e8 e8 6a d7 ff                                  	call   0x4e44e0
  76d9f8:	83 c4 04                                        	add    esp,0x4
  76d9fb:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  76d9ff:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  76da03:	2b d0                                           	sub    edx,eax
  76da05:	83 fa 01                                        	cmp    edx,0x1
  76da08:	7e 0d                                           	jle    0x76da17
  76da0a:	3b c6                                           	cmp    eax,esi
  76da0c:	74 09                                           	je     0x76da17
  76da0e:	50                                              	push   eax
  76da0f:	e8 cc 6a d7 ff                                  	call   0x4e44e0
  76da14:	83 c4 04                                        	add    esp,0x4
  76da17:	8b c7                                           	mov    eax,edi
  76da19:	5f                                              	pop    edi
  76da1a:	5e                                              	pop    esi
  76da1b:	83 c4 44                                        	add    esp,0x44
  76da1e:	c3                                              	ret
  76da1f:	cc                                              	int3
