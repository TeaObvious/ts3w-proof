# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074b8c0 (ScriptCore.RouteManager::RouteManager_GetDynamicAvoidanceFootprintRectForAgeSpecies)
Paired Ghidra pseudocode: 0074B8C0_ScriptCore_RouteManager_RouteManager_GetDynamicAvoidanceFootprintRectForAgeSpecies.c
Window: [0x0074b8c0, 0x0074b940) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074b940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074b8c0: 0f 57 c0 83 ec 10 56 8b 74 24 18 57 8d 7e 08 f3
0074b8d0: 0f 11 06 f3 0f 11 46 04 f3 0f 11 07 f3 0f 11 46
0074b8e0: 0c e8 da 01 ea ff 85 c0 74 43 8b 4c 24 20 51 8d
0074b8f0: 54 24 0c 52 8b c8 e8 25 15 ea ff d9 44 24 0c 83
0074b900: ec 08 d9 5c 24 04 8b ce d9 44 24 10 d9 1c 24 e8
0074b910: 3c 06 02 00 d9 44 24 14 83 ec 08 d9 5c 24 04 8b
0074b920: cf d9 44 24 18 d9 1c 24 e8 23 06 02 00 5f 8b c6
0074b930: 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074b8c0 <.text+0x34a8c0>:
  74b8c0:	0f 57 c0                                        	xorps  xmm0,xmm0
  74b8c3:	83 ec 10                                        	sub    esp,0x10
  74b8c6:	56                                              	push   esi
  74b8c7:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  74b8cb:	57                                              	push   edi
  74b8cc:	8d 7e 08                                        	lea    edi,[esi+0x8]
  74b8cf:	f3 0f 11 06                                     	movss  DWORD PTR [esi],xmm0
  74b8d3:	f3 0f 11 46 04                                  	movss  DWORD PTR [esi+0x4],xmm0
  74b8d8:	f3 0f 11 07                                     	movss  DWORD PTR [edi],xmm0
  74b8dc:	f3 0f 11 46 0c                                  	movss  DWORD PTR [esi+0xc],xmm0
  74b8e1:	e8 da 01 ea ff                                  	call   0x5ebac0
  74b8e6:	85 c0                                           	test   eax,eax
  74b8e8:	74 43                                           	je     0x74b92d
  74b8ea:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  74b8ee:	51                                              	push   ecx
  74b8ef:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  74b8f3:	52                                              	push   edx
  74b8f4:	8b c8                                           	mov    ecx,eax
  74b8f6:	e8 25 15 ea ff                                  	call   0x5ece20
  74b8fb:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  74b8ff:	83 ec 08                                        	sub    esp,0x8
  74b902:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  74b906:	8b ce                                           	mov    ecx,esi
  74b908:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  74b90c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  74b90f:	e8 3c 06 02 00                                  	call   0x76bf50
  74b914:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  74b918:	83 ec 08                                        	sub    esp,0x8
  74b91b:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  74b91f:	8b cf                                           	mov    ecx,edi
  74b921:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  74b925:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  74b928:	e8 23 06 02 00                                  	call   0x76bf50
  74b92d:	5f                                              	pop    edi
  74b92e:	8b c6                                           	mov    eax,esi
  74b930:	5e                                              	pop    esi
  74b931:	83 c4 10                                        	add    esp,0x10
  74b934:	c3                                              	ret
  74b935:	cc                                              	int3
  74b936:	cc                                              	int3
  74b937:	cc                                              	int3
  74b938:	cc                                              	int3
  74b939:	cc                                              	int3
  74b93a:	cc                                              	int3
  74b93b:	cc                                              	int3
  74b93c:	cc                                              	int3
  74b93d:	cc                                              	int3
  74b93e:	cc                                              	int3
  74b93f:	cc                                              	int3
