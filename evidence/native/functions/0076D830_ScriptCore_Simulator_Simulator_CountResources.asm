# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076d830 (ScriptCore.Simulator::Simulator_CountResources)
Paired Ghidra pseudocode: 0076D830_ScriptCore_Simulator_Simulator_CountResources.c
Window: [0x0076d830, 0x0076d920) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076d920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076d830: 83 ec 24 8b 44 24 28 8b 4c 24 2c 8b 54 24 34 89
0076d840: 04 24 8b 44 24 30 56 57 89 4c 24 0c 89 54 24 10
0076d850: 89 44 24 14 e8 67 21 1c 00 33 c9 89 4c 24 18 89
0076d860: 4c 24 1c 8d 4c 24 18 8b d1 33 ff 89 44 24 20 89
0076d870: 7c 24 24 c7 44 24 28 0c 8f 00 01 89 4c 24 18 89
0076d880: 54 24 1c e8 f8 25 d4 ff 8b 10 8b 52 48 8d 4c 24
0076d890: 08 51 8d 4c 24 1c 51 8b c8 ff d2 85 c0 8b 74 24
0076d8a0: 18 76 44 8d 4c 24 18 3b f1 8b c6 74 10 8d 49 00
0076d8b0: 8b 00 8d 54 24 18 83 c7 01 3b c2 75 f3 8d 44 24
0076d8c0: 18 3b f0 74 1a 8b 4c 24 20 8b 11 8b c6 8b 36 6a
0076d8d0: 0c 50 8b 42 0c ff d0 8d 4c 24 18 3b f1 75 e6 8b
0076d8e0: c7 5f 5e 83 c4 24 c3 8d 54 24 18 3b f2 74 1b 90
0076d8f0: 8b 4c 24 20 8b 11 8b c6 8b 36 6a 0c 50 8b 42 0c
0076d900: ff d0 8d 4c 24 18 3b f1 75 e6 5f 33 c0 5e 83 c4
0076d910: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076d830 <.text+0x36c830>:
  76d830:	83 ec 24                                        	sub    esp,0x24
  76d833:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  76d837:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  76d83b:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  76d83f:	89 04 24                                        	mov    DWORD PTR [esp],eax
  76d842:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  76d846:	56                                              	push   esi
  76d847:	57                                              	push   edi
  76d848:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  76d84c:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  76d850:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  76d854:	e8 67 21 1c 00                                  	call   0x92f9c0
  76d859:	33 c9                                           	xor    ecx,ecx
  76d85b:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  76d85f:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  76d863:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  76d867:	8b d1                                           	mov    edx,ecx
  76d869:	33 ff                                           	xor    edi,edi
  76d86b:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  76d86f:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  76d873:	c7 44 24 28 0c 8f 00 01                         	mov    DWORD PTR [esp+0x28],0x1008f0c
  76d87b:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  76d87f:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  76d883:	e8 f8 25 d4 ff                                  	call   0x4afe80
  76d888:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76d88a:	8b 52 48                                        	mov    edx,DWORD PTR [edx+0x48]
  76d88d:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  76d891:	51                                              	push   ecx
  76d892:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  76d896:	51                                              	push   ecx
  76d897:	8b c8                                           	mov    ecx,eax
  76d899:	ff d2                                           	call   edx
  76d89b:	85 c0                                           	test   eax,eax
  76d89d:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  76d8a1:	76 44                                           	jbe    0x76d8e7
  76d8a3:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  76d8a7:	3b f1                                           	cmp    esi,ecx
  76d8a9:	8b c6                                           	mov    eax,esi
  76d8ab:	74 10                                           	je     0x76d8bd
  76d8ad:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  76d8b0:	8b 00                                           	mov    eax,DWORD PTR [eax]
  76d8b2:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  76d8b6:	83 c7 01                                        	add    edi,0x1
  76d8b9:	3b c2                                           	cmp    eax,edx
  76d8bb:	75 f3                                           	jne    0x76d8b0
  76d8bd:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  76d8c1:	3b f0                                           	cmp    esi,eax
  76d8c3:	74 1a                                           	je     0x76d8df
  76d8c5:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  76d8c9:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  76d8cb:	8b c6                                           	mov    eax,esi
  76d8cd:	8b 36                                           	mov    esi,DWORD PTR [esi]
  76d8cf:	6a 0c                                           	push   0xc
  76d8d1:	50                                              	push   eax
  76d8d2:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  76d8d5:	ff d0                                           	call   eax
  76d8d7:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  76d8db:	3b f1                                           	cmp    esi,ecx
  76d8dd:	75 e6                                           	jne    0x76d8c5
  76d8df:	8b c7                                           	mov    eax,edi
  76d8e1:	5f                                              	pop    edi
  76d8e2:	5e                                              	pop    esi
  76d8e3:	83 c4 24                                        	add    esp,0x24
  76d8e6:	c3                                              	ret
  76d8e7:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  76d8eb:	3b f2                                           	cmp    esi,edx
  76d8ed:	74 1b                                           	je     0x76d90a
  76d8ef:	90                                              	nop
  76d8f0:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  76d8f4:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  76d8f6:	8b c6                                           	mov    eax,esi
  76d8f8:	8b 36                                           	mov    esi,DWORD PTR [esi]
  76d8fa:	6a 0c                                           	push   0xc
  76d8fc:	50                                              	push   eax
  76d8fd:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  76d900:	ff d0                                           	call   eax
  76d902:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  76d906:	3b f1                                           	cmp    esi,ecx
  76d908:	75 e6                                           	jne    0x76d8f0
  76d90a:	5f                                              	pop    edi
  76d90b:	33 c0                                           	xor    eax,eax
  76d90d:	5e                                              	pop    esi
  76d90e:	83 c4 24                                        	add    esp,0x24
  76d911:	c3                                              	ret
  76d912:	cc                                              	int3
  76d913:	cc                                              	int3
  76d914:	cc                                              	int3
  76d915:	cc                                              	int3
  76d916:	cc                                              	int3
  76d917:	cc                                              	int3
  76d918:	cc                                              	int3
  76d919:	cc                                              	int3
  76d91a:	cc                                              	int3
  76d91b:	cc                                              	int3
  76d91c:	cc                                              	int3
  76d91d:	cc                                              	int3
  76d91e:	cc                                              	int3
  76d91f:	cc                                              	int3
