# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076b600 (InstallScriptHostSetupCallback)
Paired Ghidra pseudocode: 0076B600_InstallScriptHostSetupCallback.c
Window: [0x0076b600, 0x0076b6d0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076b6d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076b600: 57 8b 3d f4 f3 1c 01 85 ff 0f 84 bc 00 00 00 68
0076b610: 48 7b 95 02 8b cf e8 c5 41 e3 ff 84 c0 75 49 6a
0076b620: 00 6a 00 6a 00 6a 00 68 e4 8c 00 01 6a 30 e8 cd
0076b630: 8e d7 ff 83 c4 18 85 c0 74 22 8b 4c 24 18 8b 54
0076b640: 24 14 51 8b 4c 24 10 52 8b 54 24 18 51 8b 4c 24
0076b650: 14 52 51 8b c8 e8 16 fc ff ff eb 02 33 c0 6a 01
0076b660: 50 8b cf e8 98 46 e3 ff 68 f2 63 7f 55 8b cf e8
0076b670: 6c 41 e3 ff 84 c0 75 53 56 6a 00 6a 00 6a 00 6a
0076b680: 00 68 18 8c 00 01 6a 14 e8 73 8e d7 ff 8b f0 83
0076b690: c4 18 85 f6 74 28 6a 00 68 f2 63 7f 55 8b ce e8
0076b6a0: 1c 3e e3 ff 6a 02 56 8b cf c7 06 e4 8b 00 01 c7
0076b6b0: 46 10 00 00 00 00 e8 45 46 e3 ff 5e 5f c3 33 f6
0076b6c0: 6a 02 56 8b cf e8 36 46 e3 ff 5e 5f c3 cc cc cc

LINEAR DISASSEMBLY
0076b600 <.text+0x36a600>:
  76b600:	57                                              	push   edi
  76b601:	8b 3d f4 f3 1c 01                               	mov    edi,DWORD PTR ds:0x11cf3f4
  76b607:	85 ff                                           	test   edi,edi
  76b609:	0f 84 bc 00 00 00                               	je     0x76b6cb
  76b60f:	68 48 7b 95 02                                  	push   0x2957b48
  76b614:	8b cf                                           	mov    ecx,edi
  76b616:	e8 c5 41 e3 ff                                  	call   0x59f7e0
  76b61b:	84 c0                                           	test   al,al
  76b61d:	75 49                                           	jne    0x76b668
  76b61f:	6a 00                                           	push   0x0
  76b621:	6a 00                                           	push   0x0
  76b623:	6a 00                                           	push   0x0
  76b625:	6a 00                                           	push   0x0
  76b627:	68 e4 8c 00 01                                  	push   0x1008ce4
  76b62c:	6a 30                                           	push   0x30
  76b62e:	e8 cd 8e d7 ff                                  	call   0x4e4500
  76b633:	83 c4 18                                        	add    esp,0x18
  76b636:	85 c0                                           	test   eax,eax
  76b638:	74 22                                           	je     0x76b65c
  76b63a:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76b63e:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  76b642:	51                                              	push   ecx
  76b643:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  76b647:	52                                              	push   edx
  76b648:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  76b64c:	51                                              	push   ecx
  76b64d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  76b651:	52                                              	push   edx
  76b652:	51                                              	push   ecx
  76b653:	8b c8                                           	mov    ecx,eax
  76b655:	e8 16 fc ff ff                                  	call   0x76b270
  76b65a:	eb 02                                           	jmp    0x76b65e
  76b65c:	33 c0                                           	xor    eax,eax
  76b65e:	6a 01                                           	push   0x1
  76b660:	50                                              	push   eax
  76b661:	8b cf                                           	mov    ecx,edi
  76b663:	e8 98 46 e3 ff                                  	call   0x59fd00
  76b668:	68 f2 63 7f 55                                  	push   0x557f63f2
  76b66d:	8b cf                                           	mov    ecx,edi
  76b66f:	e8 6c 41 e3 ff                                  	call   0x59f7e0
  76b674:	84 c0                                           	test   al,al
  76b676:	75 53                                           	jne    0x76b6cb
  76b678:	56                                              	push   esi
  76b679:	6a 00                                           	push   0x0
  76b67b:	6a 00                                           	push   0x0
  76b67d:	6a 00                                           	push   0x0
  76b67f:	6a 00                                           	push   0x0
  76b681:	68 18 8c 00 01                                  	push   0x1008c18
  76b686:	6a 14                                           	push   0x14
  76b688:	e8 73 8e d7 ff                                  	call   0x4e4500
  76b68d:	8b f0                                           	mov    esi,eax
  76b68f:	83 c4 18                                        	add    esp,0x18
  76b692:	85 f6                                           	test   esi,esi
  76b694:	74 28                                           	je     0x76b6be
  76b696:	6a 00                                           	push   0x0
  76b698:	68 f2 63 7f 55                                  	push   0x557f63f2
  76b69d:	8b ce                                           	mov    ecx,esi
  76b69f:	e8 1c 3e e3 ff                                  	call   0x59f4c0
  76b6a4:	6a 02                                           	push   0x2
  76b6a6:	56                                              	push   esi
  76b6a7:	8b cf                                           	mov    ecx,edi
  76b6a9:	c7 06 e4 8b 00 01                               	mov    DWORD PTR [esi],0x1008be4
  76b6af:	c7 46 10 00 00 00 00                            	mov    DWORD PTR [esi+0x10],0x0
  76b6b6:	e8 45 46 e3 ff                                  	call   0x59fd00
  76b6bb:	5e                                              	pop    esi
  76b6bc:	5f                                              	pop    edi
  76b6bd:	c3                                              	ret
  76b6be:	33 f6                                           	xor    esi,esi
  76b6c0:	6a 02                                           	push   0x2
  76b6c2:	56                                              	push   esi
  76b6c3:	8b cf                                           	mov    ecx,edi
  76b6c5:	e8 36 46 e3 ff                                  	call   0x59fd00
  76b6ca:	5e                                              	pop    esi
  76b6cb:	5f                                              	pop    edi
  76b6cc:	c3                                              	ret
  76b6cd:	cc                                              	int3
  76b6ce:	cc                                              	int3
  76b6cf:	cc                                              	int3
