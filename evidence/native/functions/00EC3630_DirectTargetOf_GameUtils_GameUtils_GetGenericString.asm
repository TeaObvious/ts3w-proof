# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec3630 (DirectTargetOf_GameUtils_GameUtils_GetGenericString)
Paired Ghidra pseudocode: 00EC3630_DirectTargetOf_GameUtils_GameUtils_GetGenericString.c
Window: [0x00ec3630, 0x00ec3730) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec3730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec3630: 83 ec 38 56 e8 57 5d 8a ff 8b f0 6a 01 b8 54 8e
00ec3640: 1c 01 6a 10 89 44 24 14 89 44 24 18 8d 44 24 14
00ec3650: 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 2c f0 3b 00
00ec3660: 01 c7 44 24 28 56 8e 1c 01 c7 44 24 30 f4 a6 fb
00ec3670: 00 66 c7 44 24 38 00 00 66 c7 44 24 3a 00 00 e8
00ec3680: 3c 23 63 ff 8d 4c 24 40 51 8d 54 24 0c 52 b9 68
00ec3690: 70 19 01 e8 58 70 70 ff 8b 44 24 08 3d 6c 70 19
00ec36a0: 01 74 29 f6 44 24 24 04 57 8d 78 14 74 0b 6a 01
00ec36b0: 8d 4c 24 24 e8 a7 20 63 ff 6a 01 6a 10 57 6a 09
00ec36c0: 6a 13 8d 4c 24 34 e8 f5 22 63 ff 5f 8d 4c 24 04
00ec36d0: c7 44 24 04 00 00 00 00 8b 06 8b 40 50 51 8d 54
00ec36e0: 24 20 52 8b ce ff d0 f6 44 24 24 04 8b 74 24 04
00ec36f0: c7 44 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20
00ec3700: e8 5b 20 63 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83
00ec3710: e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 bf 0d 62
00ec3720: ff 83 c4 04 8b c6 5e 83 c4 38 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00ec3630 <.text+0xac2630>:
  ec3630:	83 ec 38                                        	sub    esp,0x38
  ec3633:	56                                              	push   esi
  ec3634:	e8 57 5d 8a ff                                  	call   0x769390
  ec3639:	8b f0                                           	mov    esi,eax
  ec363b:	6a 01                                           	push   0x1
  ec363d:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  ec3642:	6a 10                                           	push   0x10
  ec3644:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  ec3648:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  ec364c:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  ec3650:	50                                              	push   eax
  ec3651:	6a 09                                           	push   0x9
  ec3653:	6a 13                                           	push   0x13
  ec3655:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  ec3659:	c7 44 24 2c f0 3b 00 01                         	mov    DWORD PTR [esp+0x2c],0x1003bf0
  ec3661:	c7 44 24 28 56 8e 1c 01                         	mov    DWORD PTR [esp+0x28],0x11c8e56
  ec3669:	c7 44 24 30 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x30],0xfba6f4
  ec3671:	66 c7 44 24 38 00 00                            	mov    WORD PTR [esp+0x38],0x0
  ec3678:	66 c7 44 24 3a 00 00                            	mov    WORD PTR [esp+0x3a],0x0
  ec367f:	e8 3c 23 63 ff                                  	call   0x4f59c0
  ec3684:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  ec3688:	51                                              	push   ecx
  ec3689:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  ec368d:	52                                              	push   edx
  ec368e:	b9 68 70 19 01                                  	mov    ecx,0x1197068
  ec3693:	e8 58 70 70 ff                                  	call   0x5ca6f0
  ec3698:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ec369c:	3d 6c 70 19 01                                  	cmp    eax,0x119706c
  ec36a1:	74 29                                           	je     0xec36cc
  ec36a3:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  ec36a8:	57                                              	push   edi
  ec36a9:	8d 78 14                                        	lea    edi,[eax+0x14]
  ec36ac:	74 0b                                           	je     0xec36b9
  ec36ae:	6a 01                                           	push   0x1
  ec36b0:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ec36b4:	e8 a7 20 63 ff                                  	call   0x4f5760
  ec36b9:	6a 01                                           	push   0x1
  ec36bb:	6a 10                                           	push   0x10
  ec36bd:	57                                              	push   edi
  ec36be:	6a 09                                           	push   0x9
  ec36c0:	6a 13                                           	push   0x13
  ec36c2:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ec36c6:	e8 f5 22 63 ff                                  	call   0x4f59c0
  ec36cb:	5f                                              	pop    edi
  ec36cc:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  ec36d0:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  ec36d8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec36da:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  ec36dd:	51                                              	push   ecx
  ec36de:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  ec36e2:	52                                              	push   edx
  ec36e3:	8b ce                                           	mov    ecx,esi
  ec36e5:	ff d0                                           	call   eax
  ec36e7:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  ec36ec:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  ec36f0:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  ec36f8:	74 0b                                           	je     0xec3705
  ec36fa:	6a 00                                           	push   0x0
  ec36fc:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ec3700:	e8 5b 20 63 ff                                  	call   0x4f5760
  ec3705:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ec3709:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ec370d:	2b c8                                           	sub    ecx,eax
  ec370f:	83 e1 fe                                        	and    ecx,0xfffffffe
  ec3712:	83 f9 02                                        	cmp    ecx,0x2
  ec3715:	7e 0d                                           	jle    0xec3724
  ec3717:	85 c0                                           	test   eax,eax
  ec3719:	74 09                                           	je     0xec3724
  ec371b:	50                                              	push   eax
  ec371c:	e8 bf 0d 62 ff                                  	call   0x4e44e0
  ec3721:	83 c4 04                                        	add    esp,0x4
  ec3724:	8b c6                                           	mov    eax,esi
  ec3726:	5e                                              	pop    esi
  ec3727:	83 c4 38                                        	add    esp,0x38
  ec372a:	c3                                              	ret
  ec372b:	cc                                              	int3
  ec372c:	cc                                              	int3
  ec372d:	cc                                              	int3
  ec372e:	cc                                              	int3
  ec372f:	cc                                              	int3
