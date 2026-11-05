# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074b730 (ScriptCore.RouteManager::RouteManager_FootprintSetLockKeys)
Paired Ghidra pseudocode: 0074B730_ScriptCore_RouteManager_RouteManager_FootprintSetLockKeys.c
Window: [0x0074b730, 0x0074b7b0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074b7b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074b730: 83 ec 08 56 e8 b7 d5 0d 00 8b f0 e8 50 dc 01 00
0074b740: 85 f6 74 59 85 c0 74 55 8b 10 8b 52 68 8d 4c 24
0074b750: 04 51 8d 4c 24 0c 51 8b 4c 24 24 51 8b c8 c7 44
0074b760: 24 14 00 00 00 00 c7 44 24 10 00 00 00 00 ff d2
0074b770: 8b 44 24 14 8b 4c 24 10 6a 01 50 51 8b ce e8 5d
0074b780: f6 0d 00 85 c0 74 16 8b 54 24 18 8b 4c 24 04 52
0074b790: 8b 54 24 0c 51 52 8b c8 e8 c3 b2 1f 00 5e 83 c4
0074b7a0: 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074b730 <.text+0x34a730>:
  74b730:	83 ec 08                                        	sub    esp,0x8
  74b733:	56                                              	push   esi
  74b734:	e8 b7 d5 0d 00                                  	call   0x828cf0
  74b739:	8b f0                                           	mov    esi,eax
  74b73b:	e8 50 dc 01 00                                  	call   0x769390
  74b740:	85 f6                                           	test   esi,esi
  74b742:	74 59                                           	je     0x74b79d
  74b744:	85 c0                                           	test   eax,eax
  74b746:	74 55                                           	je     0x74b79d
  74b748:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74b74a:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
  74b74d:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  74b751:	51                                              	push   ecx
  74b752:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  74b756:	51                                              	push   ecx
  74b757:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  74b75b:	51                                              	push   ecx
  74b75c:	8b c8                                           	mov    ecx,eax
  74b75e:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  74b766:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  74b76e:	ff d2                                           	call   edx
  74b770:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  74b774:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  74b778:	6a 01                                           	push   0x1
  74b77a:	50                                              	push   eax
  74b77b:	51                                              	push   ecx
  74b77c:	8b ce                                           	mov    ecx,esi
  74b77e:	e8 5d f6 0d 00                                  	call   0x82ade0
  74b783:	85 c0                                           	test   eax,eax
  74b785:	74 16                                           	je     0x74b79d
  74b787:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  74b78b:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  74b78f:	52                                              	push   edx
  74b790:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  74b794:	51                                              	push   ecx
  74b795:	52                                              	push   edx
  74b796:	8b c8                                           	mov    ecx,eax
  74b798:	e8 c3 b2 1f 00                                  	call   0x946a60
  74b79d:	5e                                              	pop    esi
  74b79e:	83 c4 08                                        	add    esp,0x8
  74b7a1:	c3                                              	ret
  74b7a2:	cc                                              	int3
  74b7a3:	cc                                              	int3
  74b7a4:	cc                                              	int3
  74b7a5:	cc                                              	int3
  74b7a6:	cc                                              	int3
  74b7a7:	cc                                              	int3
  74b7a8:	cc                                              	int3
  74b7a9:	cc                                              	int3
  74b7aa:	cc                                              	int3
  74b7ab:	cc                                              	int3
  74b7ac:	cc                                              	int3
  74b7ad:	cc                                              	int3
  74b7ae:	cc                                              	int3
  74b7af:	cc                                              	int3
