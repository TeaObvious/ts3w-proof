# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00763600 (ScriptCore.RouteManager::RouteManager_PlaceSocialFootprintObjectImpl)
Paired Ghidra pseudocode: 00763600_ScriptCore_RouteManager_RouteManager_PlaceSocialFootprintObjectImpl.c
Window: [0x00763600, 0x00763680) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00763680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00763600: 8b 44 24 28 8b 4c 24 24 8b 54 24 20 50 51 8b 4c
00763610: 24 1c 52 8b 54 24 24 83 ec 0c 8b c4 89 08 8b 4c
00763620: 24 34 89 50 04 8b 54 24 28 89 48 08 52 8d 44 24
00763630: 20 50 6a 00 e8 e7 a8 ff ff 83 c4 24 c3 cc cc cc
00763640: 8b 44 24 04 3b 41 14 75 2e 8b 49 10 6a 00 6a 00
00763650: 6a 00 6a 00 51 68 00 02 00 00 e8 a1 0e d8 ff 83
00763660: c4 18 85 c0 74 11 8b c8 e8 23 cc ff ff 85 c0 74
00763670: 06 83 c0 04 c2 08 00 33 c0 c2 08 00 cc cc cc cc

LINEAR DISASSEMBLY
00763600 <.text+0x362600>:
  763600:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  763604:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  763608:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  76360c:	50                                              	push   eax
  76360d:	51                                              	push   ecx
  76360e:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  763612:	52                                              	push   edx
  763613:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  763617:	83 ec 0c                                        	sub    esp,0xc
  76361a:	8b c4                                           	mov    eax,esp
  76361c:	89 08                                           	mov    DWORD PTR [eax],ecx
  76361e:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  763622:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  763625:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  763629:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  76362c:	52                                              	push   edx
  76362d:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  763631:	50                                              	push   eax
  763632:	6a 00                                           	push   0x0
  763634:	e8 e7 a8 ff ff                                  	call   0x75df20
  763639:	83 c4 24                                        	add    esp,0x24
  76363c:	c3                                              	ret
  76363d:	cc                                              	int3
  76363e:	cc                                              	int3
  76363f:	cc                                              	int3
  763640:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  763644:	3b 41 14                                        	cmp    eax,DWORD PTR [ecx+0x14]
  763647:	75 2e                                           	jne    0x763677
  763649:	8b 49 10                                        	mov    ecx,DWORD PTR [ecx+0x10]
  76364c:	6a 00                                           	push   0x0
  76364e:	6a 00                                           	push   0x0
  763650:	6a 00                                           	push   0x0
  763652:	6a 00                                           	push   0x0
  763654:	51                                              	push   ecx
  763655:	68 00 02 00 00                                  	push   0x200
  76365a:	e8 a1 0e d8 ff                                  	call   0x4e4500
  76365f:	83 c4 18                                        	add    esp,0x18
  763662:	85 c0                                           	test   eax,eax
  763664:	74 11                                           	je     0x763677
  763666:	8b c8                                           	mov    ecx,eax
  763668:	e8 23 cc ff ff                                  	call   0x760290
  76366d:	85 c0                                           	test   eax,eax
  76366f:	74 06                                           	je     0x763677
  763671:	83 c0 04                                        	add    eax,0x4
  763674:	c2 08 00                                        	ret    0x8
  763677:	33 c0                                           	xor    eax,eax
  763679:	c2 08 00                                        	ret    0x8
  76367c:	cc                                              	int3
  76367d:	cc                                              	int3
  76367e:	cc                                              	int3
  76367f:	cc                                              	int3
