# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749870 (ScriptCore.Queries::Query_GetObjectsInRange)
Paired Ghidra pseudocode: 00749870_ScriptCore_Queries_Query_GetObjectsInRange.c
Window: [0x00749870, 0x00749900) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00749900
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749870: 55 8b ec 83 e4 f0 83 ec 28 56 57 33 f6 e8 de d5
00749880: f3 ff d9 45 18 8b f8 8d 44 24 10 50 6a 0c 51 8d
00749890: 4c 24 2c d9 1c 24 51 8d 4d 0c 89 74 24 20 89 74
007498a0: 24 24 89 74 24 28 c7 44 24 2c ec 4d 00 01 e8 9d
007498b0: 27 02 00 50 8b cf e8 25 d7 f3 ff 84 c0 74 26 e8
007498c0: cc fa 01 00 8b 4c 24 10 8b 54 24 14 8b 30 2b d1
007498d0: c1 fa 03 52 8b 55 08 51 8b c8 8b 86 c0 00 00 00
007498e0: 52 ff d0 8b f0 8b 44 24 10 85 c0 74 09 50 e8 ed
007498f0: ab d9 ff 83 c4 04 5f 8b c6 5e 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
00749870 <.text+0x348870>:
  749870:	55                                              	push   ebp
  749871:	8b ec                                           	mov    ebp,esp
  749873:	83 e4 f0                                        	and    esp,0xfffffff0
  749876:	83 ec 28                                        	sub    esp,0x28
  749879:	56                                              	push   esi
  74987a:	57                                              	push   edi
  74987b:	33 f6                                           	xor    esi,esi
  74987d:	e8 de d5 f3 ff                                  	call   0x686e60
  749882:	d9 45 18                                        	fld    DWORD PTR [ebp+0x18]
  749885:	8b f8                                           	mov    edi,eax
  749887:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  74988b:	50                                              	push   eax
  74988c:	6a 0c                                           	push   0xc
  74988e:	51                                              	push   ecx
  74988f:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  749893:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  749896:	51                                              	push   ecx
  749897:	8d 4d 0c                                        	lea    ecx,[ebp+0xc]
  74989a:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  74989e:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  7498a2:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  7498a6:	c7 44 24 2c ec 4d 00 01                         	mov    DWORD PTR [esp+0x2c],0x1004dec
  7498ae:	e8 9d 27 02 00                                  	call   0x76c050
  7498b3:	50                                              	push   eax
  7498b4:	8b cf                                           	mov    ecx,edi
  7498b6:	e8 25 d7 f3 ff                                  	call   0x686fe0
  7498bb:	84 c0                                           	test   al,al
  7498bd:	74 26                                           	je     0x7498e5
  7498bf:	e8 cc fa 01 00                                  	call   0x769390
  7498c4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7498c8:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  7498cc:	8b 30                                           	mov    esi,DWORD PTR [eax]
  7498ce:	2b d1                                           	sub    edx,ecx
  7498d0:	c1 fa 03                                        	sar    edx,0x3
  7498d3:	52                                              	push   edx
  7498d4:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  7498d7:	51                                              	push   ecx
  7498d8:	8b c8                                           	mov    ecx,eax
  7498da:	8b 86 c0 00 00 00                               	mov    eax,DWORD PTR [esi+0xc0]
  7498e0:	52                                              	push   edx
  7498e1:	ff d0                                           	call   eax
  7498e3:	8b f0                                           	mov    esi,eax
  7498e5:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7498e9:	85 c0                                           	test   eax,eax
  7498eb:	74 09                                           	je     0x7498f6
  7498ed:	50                                              	push   eax
  7498ee:	e8 ed ab d9 ff                                  	call   0x4e44e0
  7498f3:	83 c4 04                                        	add    esp,0x4
  7498f6:	5f                                              	pop    edi
  7498f7:	8b c6                                           	mov    eax,esi
  7498f9:	5e                                              	pop    esi
  7498fa:	8b e5                                           	mov    esp,ebp
  7498fc:	5d                                              	pop    ebp
  7498fd:	c3                                              	ret
  7498fe:	cc                                              	int3
  7498ff:	cc                                              	int3
