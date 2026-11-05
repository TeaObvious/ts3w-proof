# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00748860 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetCrossroadsServerURL)
Paired Ghidra pseudocode: 00748860_ScriptCore_OnlineFeatures_OnlineFeaturesHost_GetCrossroadsServerURL.c
Window: [0x00748860, 0x00748980) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x00748980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00748860: 83 ec 44 56 e8 27 0b 02 00 8b f0 a1 68 50 1d 01
00748870: 85 c0 74 05 8d 48 f8 eb 02 33 c9 33 c0 85 f6 89
00748880: 44 24 04 0f 84 e5 00 00 00 85 c9 0f 84 dd 00 00
00748890: 00 57 8d 7c 24 0c ba 54 8e 1c 01 81 c1 98 00 00
007488a0: 00 3b cf c7 44 24 18 70 40 00 01 89 54 24 0c 89
007488b0: 54 24 10 c7 44 24 14 55 8e 1c 01 5f 0f 84 90 00
007488c0: 00 00 8b 41 04 8b 09 50 51 8d 4c 24 10 e8 3e d0
007488d0: cb ff 8b 54 24 08 8b 44 24 0c 3b d0 74 70 2b c2
007488e0: 74 6c 8d 54 24 08 52 8d 44 24 1c 50 e8 9f b3 da
007488f0: ff 83 c4 08 50 8d 4c 24 2c e8 a2 29 e6 ff 8b 4c
00748900: 24 20 8b 44 24 18 2b c8 83 e1 fe 83 f9 02 7e 0d
00748910: 85 c0 74 09 50 e8 c6 bb d9 ff 83 c4 04 8b 16 8b
00748920: 52 50 8d 44 24 04 50 8d 4c 24 2c 51 8b ce ff d2
00748930: f6 44 24 30 04 c7 44 24 28 f4 a6 fb 00 74 0b 6a
00748940: 00 8d 4c 24 2c e8 16 ce da ff 8b 54 24 08 8b 44
00748950: 24 04 8b 4c 24 10 2b ca 83 f9 01 7e 11 85 d2 74
00748960: 0d 52 e8 79 bb d9 ff 8b 44 24 08 83 c4 04 5e 83
00748970: c4 44 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00748860 <.text+0x347860>:
  748860:	83 ec 44                                        	sub    esp,0x44
  748863:	56                                              	push   esi
  748864:	e8 27 0b 02 00                                  	call   0x769390
  748869:	8b f0                                           	mov    esi,eax
  74886b:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  748870:	85 c0                                           	test   eax,eax
  748872:	74 05                                           	je     0x748879
  748874:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  748877:	eb 02                                           	jmp    0x74887b
  748879:	33 c9                                           	xor    ecx,ecx
  74887b:	33 c0                                           	xor    eax,eax
  74887d:	85 f6                                           	test   esi,esi
  74887f:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  748883:	0f 84 e5 00 00 00                               	je     0x74896e
  748889:	85 c9                                           	test   ecx,ecx
  74888b:	0f 84 dd 00 00 00                               	je     0x74896e
  748891:	57                                              	push   edi
  748892:	8d 7c 24 0c                                     	lea    edi,[esp+0xc]
  748896:	ba 54 8e 1c 01                                  	mov    edx,0x11c8e54
  74889b:	81 c1 98 00 00 00                               	add    ecx,0x98
  7488a1:	3b cf                                           	cmp    ecx,edi
  7488a3:	c7 44 24 18 70 40 00 01                         	mov    DWORD PTR [esp+0x18],0x1004070
  7488ab:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  7488af:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  7488b3:	c7 44 24 14 55 8e 1c 01                         	mov    DWORD PTR [esp+0x14],0x11c8e55
  7488bb:	5f                                              	pop    edi
  7488bc:	0f 84 90 00 00 00                               	je     0x748952
  7488c2:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  7488c5:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  7488c7:	50                                              	push   eax
  7488c8:	51                                              	push   ecx
  7488c9:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7488cd:	e8 3e d0 cb ff                                  	call   0x405910
  7488d2:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  7488d6:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7488da:	3b d0                                           	cmp    edx,eax
  7488dc:	74 70                                           	je     0x74894e
  7488de:	2b c2                                           	sub    eax,edx
  7488e0:	74 6c                                           	je     0x74894e
  7488e2:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  7488e6:	52                                              	push   edx
  7488e7:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  7488eb:	50                                              	push   eax
  7488ec:	e8 9f b3 da ff                                  	call   0x4f3c90
  7488f1:	83 c4 08                                        	add    esp,0x8
  7488f4:	50                                              	push   eax
  7488f5:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  7488f9:	e8 a2 29 e6 ff                                  	call   0x5ab2a0
  7488fe:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  748902:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  748906:	2b c8                                           	sub    ecx,eax
  748908:	83 e1 fe                                        	and    ecx,0xfffffffe
  74890b:	83 f9 02                                        	cmp    ecx,0x2
  74890e:	7e 0d                                           	jle    0x74891d
  748910:	85 c0                                           	test   eax,eax
  748912:	74 09                                           	je     0x74891d
  748914:	50                                              	push   eax
  748915:	e8 c6 bb d9 ff                                  	call   0x4e44e0
  74891a:	83 c4 04                                        	add    esp,0x4
  74891d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74891f:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  748922:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  748926:	50                                              	push   eax
  748927:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  74892b:	51                                              	push   ecx
  74892c:	8b ce                                           	mov    ecx,esi
  74892e:	ff d2                                           	call   edx
  748930:	f6 44 24 30 04                                  	test   BYTE PTR [esp+0x30],0x4
  748935:	c7 44 24 28 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x28],0xfba6f4
  74893d:	74 0b                                           	je     0x74894a
  74893f:	6a 00                                           	push   0x0
  748941:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  748945:	e8 16 ce da ff                                  	call   0x4f5760
  74894a:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  74894e:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  748952:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  748956:	2b ca                                           	sub    ecx,edx
  748958:	83 f9 01                                        	cmp    ecx,0x1
  74895b:	7e 11                                           	jle    0x74896e
  74895d:	85 d2                                           	test   edx,edx
  74895f:	74 0d                                           	je     0x74896e
  748961:	52                                              	push   edx
  748962:	e8 79 bb d9 ff                                  	call   0x4e44e0
  748967:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  74896b:	83 c4 04                                        	add    esp,0x4
  74896e:	5e                                              	pop    esi
  74896f:	83 c4 44                                        	add    esp,0x44
  748972:	c3                                              	ret
  748973:	cc                                              	int3
  748974:	cc                                              	int3
  748975:	cc                                              	int3
  748976:	cc                                              	int3
  748977:	cc                                              	int3
  748978:	cc                                              	int3
  748979:	cc                                              	int3
  74897a:	cc                                              	int3
  74897b:	cc                                              	int3
  74897c:	cc                                              	int3
  74897d:	cc                                              	int3
  74897e:	cc                                              	int3
  74897f:	cc                                              	int3
