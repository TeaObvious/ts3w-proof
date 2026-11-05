# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007547a0 (ScriptCore.RouteManager::RouteManager_RemovePrivateFootprint)
Paired Ghidra pseudocode: 007547A0_ScriptCore_RouteManager_RouteManager_RemovePrivateFootprint.c
Window: [0x007547a0, 0x00754830) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00754830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007547a0: 51 56 e8 e9 4b 01 00 85 c0 74 79 e8 c0 2d 1e 00
007547b0: 85 c0 74 70 8b 4c 24 10 8b 54 24 0c 51 52 8b c8
007547c0: e8 bb 37 1e 00 8b f0 85 f6 89 74 24 04 74 0c 8d
007547d0: 46 04 b9 01 00 00 00 f0 0f c1 08 e8 10 45 0d 00
007547e0: 85 f6 74 40 85 c0 74 1c 53 6a 01 56 8b c8 e8 cd
007547f0: 52 0d 00 8d 4c 24 08 8a d8 e8 e2 1a ff ff 8a c3
00754800: 5b 5e 59 c3 8d 46 04 8b d0 83 c9 ff f0 0f c1 0a
00754810: 49 75 11 ba 01 00 00 00 87 10 8b 06 8b 10 6a 01
00754820: 8b ce ff d2 32 c0 5e 59 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007547a0 <.text+0x3537a0>:
  7547a0:	51                                              	push   ecx
  7547a1:	56                                              	push   esi
  7547a2:	e8 e9 4b 01 00                                  	call   0x769390
  7547a7:	85 c0                                           	test   eax,eax
  7547a9:	74 79                                           	je     0x754824
  7547ab:	e8 c0 2d 1e 00                                  	call   0x937570
  7547b0:	85 c0                                           	test   eax,eax
  7547b2:	74 70                                           	je     0x754824
  7547b4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7547b8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  7547bc:	51                                              	push   ecx
  7547bd:	52                                              	push   edx
  7547be:	8b c8                                           	mov    ecx,eax
  7547c0:	e8 bb 37 1e 00                                  	call   0x937f80
  7547c5:	8b f0                                           	mov    esi,eax
  7547c7:	85 f6                                           	test   esi,esi
  7547c9:	89 74 24 04                                     	mov    DWORD PTR [esp+0x4],esi
  7547cd:	74 0c                                           	je     0x7547db
  7547cf:	8d 46 04                                        	lea    eax,[esi+0x4]
  7547d2:	b9 01 00 00 00                                  	mov    ecx,0x1
  7547d7:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  7547db:	e8 10 45 0d 00                                  	call   0x828cf0
  7547e0:	85 f6                                           	test   esi,esi
  7547e2:	74 40                                           	je     0x754824
  7547e4:	85 c0                                           	test   eax,eax
  7547e6:	74 1c                                           	je     0x754804
  7547e8:	53                                              	push   ebx
  7547e9:	6a 01                                           	push   0x1
  7547eb:	56                                              	push   esi
  7547ec:	8b c8                                           	mov    ecx,eax
  7547ee:	e8 cd 52 0d 00                                  	call   0x829ac0
  7547f3:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7547f7:	8a d8                                           	mov    bl,al
  7547f9:	e8 e2 1a ff ff                                  	call   0x7462e0
  7547fe:	8a c3                                           	mov    al,bl
  754800:	5b                                              	pop    ebx
  754801:	5e                                              	pop    esi
  754802:	59                                              	pop    ecx
  754803:	c3                                              	ret
  754804:	8d 46 04                                        	lea    eax,[esi+0x4]
  754807:	8b d0                                           	mov    edx,eax
  754809:	83 c9 ff                                        	or     ecx,0xffffffff
  75480c:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  754810:	49                                              	dec    ecx
  754811:	75 11                                           	jne    0x754824
  754813:	ba 01 00 00 00                                  	mov    edx,0x1
  754818:	87 10                                           	xchg   DWORD PTR [eax],edx
  75481a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  75481c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  75481e:	6a 01                                           	push   0x1
  754820:	8b ce                                           	mov    ecx,esi
  754822:	ff d2                                           	call   edx
  754824:	32 c0                                           	xor    al,al
  754826:	5e                                              	pop    esi
  754827:	59                                              	pop    ecx
  754828:	c3                                              	ret
  754829:	cc                                              	int3
  75482a:	cc                                              	int3
  75482b:	cc                                              	int3
  75482c:	cc                                              	int3
  75482d:	cc                                              	int3
  75482e:	cc                                              	int3
  75482f:	cc                                              	int3
