# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749900 (ScriptCore.Queries::Query_CountObjectsInRange)
Paired Ghidra pseudocode: 00749900_ScriptCore_Queries_Query_CountObjectsInRange.c
Window: [0x00749900, 0x007499b0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x007499b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749900: 55 8b ec 83 e4 f0 83 ec 2c 56 e8 51 d5 f3 ff d9
00749910: 45 18 8b f0 8d 44 24 10 50 6a 0c 51 8d 4c 24 2c
00749920: d9 1c 24 51 8d 4d 0c c7 44 24 20 00 00 00 00 c7
00749930: 44 24 24 00 00 00 00 c7 44 24 28 00 00 00 00 c7
00749940: 44 24 2c ec 4d 00 01 e8 04 27 02 00 50 8b ce e8
00749950: 8c d6 f3 ff 84 c0 74 3e e8 33 fa 01 00 8b 4c 24
00749960: 10 8b 54 24 14 8b 30 2b d1 c1 fa 03 52 8b 55 08
00749970: 51 8b c8 8b 86 c4 00 00 00 52 ff d0 8b f0 8b 44
00749980: 24 10 85 c0 74 09 50 e8 54 ab d9 ff 83 c4 04 8b
00749990: c6 5e 8b e5 5d c3 8b 44 24 10 85 c0 74 09 50 e8
007499a0: 3c ab d9 ff 83 c4 04 33 c0 5e 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
00749900 <.text+0x348900>:
  749900:	55                                              	push   ebp
  749901:	8b ec                                           	mov    ebp,esp
  749903:	83 e4 f0                                        	and    esp,0xfffffff0
  749906:	83 ec 2c                                        	sub    esp,0x2c
  749909:	56                                              	push   esi
  74990a:	e8 51 d5 f3 ff                                  	call   0x686e60
  74990f:	d9 45 18                                        	fld    DWORD PTR [ebp+0x18]
  749912:	8b f0                                           	mov    esi,eax
  749914:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  749918:	50                                              	push   eax
  749919:	6a 0c                                           	push   0xc
  74991b:	51                                              	push   ecx
  74991c:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  749920:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  749923:	51                                              	push   ecx
  749924:	8d 4d 0c                                        	lea    ecx,[ebp+0xc]
  749927:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
  74992f:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  749937:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
  74993f:	c7 44 24 2c ec 4d 00 01                         	mov    DWORD PTR [esp+0x2c],0x1004dec
  749947:	e8 04 27 02 00                                  	call   0x76c050
  74994c:	50                                              	push   eax
  74994d:	8b ce                                           	mov    ecx,esi
  74994f:	e8 8c d6 f3 ff                                  	call   0x686fe0
  749954:	84 c0                                           	test   al,al
  749956:	74 3e                                           	je     0x749996
  749958:	e8 33 fa 01 00                                  	call   0x769390
  74995d:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  749961:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  749965:	8b 30                                           	mov    esi,DWORD PTR [eax]
  749967:	2b d1                                           	sub    edx,ecx
  749969:	c1 fa 03                                        	sar    edx,0x3
  74996c:	52                                              	push   edx
  74996d:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  749970:	51                                              	push   ecx
  749971:	8b c8                                           	mov    ecx,eax
  749973:	8b 86 c4 00 00 00                               	mov    eax,DWORD PTR [esi+0xc4]
  749979:	52                                              	push   edx
  74997a:	ff d0                                           	call   eax
  74997c:	8b f0                                           	mov    esi,eax
  74997e:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  749982:	85 c0                                           	test   eax,eax
  749984:	74 09                                           	je     0x74998f
  749986:	50                                              	push   eax
  749987:	e8 54 ab d9 ff                                  	call   0x4e44e0
  74998c:	83 c4 04                                        	add    esp,0x4
  74998f:	8b c6                                           	mov    eax,esi
  749991:	5e                                              	pop    esi
  749992:	8b e5                                           	mov    esp,ebp
  749994:	5d                                              	pop    ebp
  749995:	c3                                              	ret
  749996:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  74999a:	85 c0                                           	test   eax,eax
  74999c:	74 09                                           	je     0x7499a7
  74999e:	50                                              	push   eax
  74999f:	e8 3c ab d9 ff                                  	call   0x4e44e0
  7499a4:	83 c4 04                                        	add    esp,0x4
  7499a7:	33 c0                                           	xor    eax,eax
  7499a9:	5e                                              	pop    esi
  7499aa:	8b e5                                           	mov    esp,ebp
  7499ac:	5d                                              	pop    ebp
  7499ad:	c3                                              	ret
  7499ae:	cc                                              	int3
  7499af:	cc                                              	int3
