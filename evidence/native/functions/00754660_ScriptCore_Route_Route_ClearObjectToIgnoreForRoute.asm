# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00754660 (ScriptCore.Route::Route_ClearObjectToIgnoreForRoute)
Paired Ghidra pseudocode: 00754660_ScriptCore_Route_Route_ClearObjectToIgnoreForRoute.c
Window: [0x00754660, 0x00754710) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00754710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00754660: 51 8b 0d c4 50 1d 01 85 c9 0f 84 9d 00 00 00 8b
00754670: 44 24 08 53 50 e8 36 6e ff ff 8b d8 85 db 0f 84
00754680: 87 00 00 00 8b 13 8b 42 10 55 57 8b cb ff d0 8d
00754690: ab 58 01 00 00 8b cd e8 84 7e 0c 00 8b 08 89 48
007546a0: 04 8b bb e0 00 00 00 8d 83 e0 00 00 00 3b f8 74
007546b0: 4b 56 8b 77 08 85 f6 74 0c 8d 56 04 b8 01 00 00
007546c0: 00 f0 0f c1 02 8b 16 8b 42 10 55 8b ce ff d0 8d
007546d0: 46 04 8b c8 83 ca ff f0 0f c1 11 4a 75 11 b9 01
007546e0: 00 00 00 87 08 8b 16 8b 02 6a 01 8b ce ff d0 8b
007546f0: 3f 8d 83 e0 00 00 00 3b f8 75 b7 5e 8b 13 8b 42
00754700: 14 5f 5d 8b cb 5b 83 c4 04 ff e0 5b 59 c3 cc cc

LINEAR DISASSEMBLY
00754660 <.text+0x353660>:
  754660:	51                                              	push   ecx
  754661:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  754667:	85 c9                                           	test   ecx,ecx
  754669:	0f 84 9d 00 00 00                               	je     0x75470c
  75466f:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  754673:	53                                              	push   ebx
  754674:	50                                              	push   eax
  754675:	e8 36 6e ff ff                                  	call   0x74b4b0
  75467a:	8b d8                                           	mov    ebx,eax
  75467c:	85 db                                           	test   ebx,ebx
  75467e:	0f 84 87 00 00 00                               	je     0x75470b
  754684:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  754686:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  754689:	55                                              	push   ebp
  75468a:	57                                              	push   edi
  75468b:	8b cb                                           	mov    ecx,ebx
  75468d:	ff d0                                           	call   eax
  75468f:	8d ab 58 01 00 00                               	lea    ebp,[ebx+0x158]
  754695:	8b cd                                           	mov    ecx,ebp
  754697:	e8 84 7e 0c 00                                  	call   0x81c520
  75469c:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  75469e:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  7546a1:	8b bb e0 00 00 00                               	mov    edi,DWORD PTR [ebx+0xe0]
  7546a7:	8d 83 e0 00 00 00                               	lea    eax,[ebx+0xe0]
  7546ad:	3b f8                                           	cmp    edi,eax
  7546af:	74 4b                                           	je     0x7546fc
  7546b1:	56                                              	push   esi
  7546b2:	8b 77 08                                        	mov    esi,DWORD PTR [edi+0x8]
  7546b5:	85 f6                                           	test   esi,esi
  7546b7:	74 0c                                           	je     0x7546c5
  7546b9:	8d 56 04                                        	lea    edx,[esi+0x4]
  7546bc:	b8 01 00 00 00                                  	mov    eax,0x1
  7546c1:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  7546c5:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7546c7:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  7546ca:	55                                              	push   ebp
  7546cb:	8b ce                                           	mov    ecx,esi
  7546cd:	ff d0                                           	call   eax
  7546cf:	8d 46 04                                        	lea    eax,[esi+0x4]
  7546d2:	8b c8                                           	mov    ecx,eax
  7546d4:	83 ca ff                                        	or     edx,0xffffffff
  7546d7:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  7546db:	4a                                              	dec    edx
  7546dc:	75 11                                           	jne    0x7546ef
  7546de:	b9 01 00 00 00                                  	mov    ecx,0x1
  7546e3:	87 08                                           	xchg   DWORD PTR [eax],ecx
  7546e5:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7546e7:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7546e9:	6a 01                                           	push   0x1
  7546eb:	8b ce                                           	mov    ecx,esi
  7546ed:	ff d0                                           	call   eax
  7546ef:	8b 3f                                           	mov    edi,DWORD PTR [edi]
  7546f1:	8d 83 e0 00 00 00                               	lea    eax,[ebx+0xe0]
  7546f7:	3b f8                                           	cmp    edi,eax
  7546f9:	75 b7                                           	jne    0x7546b2
  7546fb:	5e                                              	pop    esi
  7546fc:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  7546fe:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  754701:	5f                                              	pop    edi
  754702:	5d                                              	pop    ebp
  754703:	8b cb                                           	mov    ecx,ebx
  754705:	5b                                              	pop    ebx
  754706:	83 c4 04                                        	add    esp,0x4
  754709:	ff e0                                           	jmp    eax
  75470b:	5b                                              	pop    ebx
  75470c:	59                                              	pop    ecx
  75470d:	c3                                              	ret
  75470e:	cc                                              	int3
  75470f:	cc                                              	int3
