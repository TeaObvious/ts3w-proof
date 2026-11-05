# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749fc0 (ScriptCore.Queries::Query_GetGlobalObjects)
Paired Ghidra pseudocode: 00749FC0_ScriptCore_Queries_Query_GetGlobalObjects.c
Window: [0x00749fc0, 0x0074a050) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074a050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749fc0: 55 8b ec 83 e4 f8 b8 1c 10 00 00 e8 70 58 83 00
00749fd0: 8d 44 24 1c 8b c8 89 4c 24 08 8b d0 56 89 44 24
00749fe0: 18 8d 4c 24 08 8d 84 24 20 10 00 00 51 33 f6 89
00749ff0: 54 24 0c 89 44 24 14 c7 44 24 18 00 4e 00 01 e8
0074a000: 2c fd ff ff 83 c4 04 85 c0 74 26 e8 80 f3 01 00
0074a010: 8b 4c 24 08 8b 54 24 0c 8b 30 2b d1 c1 fa 03 52
0074a020: 8b 55 08 51 8b c8 8b 86 c0 00 00 00 52 ff d0 8b
0074a030: f0 8b 44 24 08 85 c0 74 0f 3b 44 24 18 74 09 50
0074a040: e8 9b a4 d9 ff 83 c4 04 8b c6 5e 8b e5 5d c3 cc

LINEAR DISASSEMBLY
00749fc0 <.text+0x348fc0>:
  749fc0:	55                                              	push   ebp
  749fc1:	8b ec                                           	mov    ebp,esp
  749fc3:	83 e4 f8                                        	and    esp,0xfffffff8
  749fc6:	b8 1c 10 00 00                                  	mov    eax,0x101c
  749fcb:	e8 70 58 83 00                                  	call   0xf7f840
  749fd0:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  749fd4:	8b c8                                           	mov    ecx,eax
  749fd6:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  749fda:	8b d0                                           	mov    edx,eax
  749fdc:	56                                              	push   esi
  749fdd:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  749fe1:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  749fe5:	8d 84 24 20 10 00 00                            	lea    eax,[esp+0x1020]
  749fec:	51                                              	push   ecx
  749fed:	33 f6                                           	xor    esi,esi
  749fef:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  749ff3:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  749ff7:	c7 44 24 18 00 4e 00 01                         	mov    DWORD PTR [esp+0x18],0x1004e00
  749fff:	e8 2c fd ff ff                                  	call   0x749d30
  74a004:	83 c4 04                                        	add    esp,0x4
  74a007:	85 c0                                           	test   eax,eax
  74a009:	74 26                                           	je     0x74a031
  74a00b:	e8 80 f3 01 00                                  	call   0x769390
  74a010:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74a014:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  74a018:	8b 30                                           	mov    esi,DWORD PTR [eax]
  74a01a:	2b d1                                           	sub    edx,ecx
  74a01c:	c1 fa 03                                        	sar    edx,0x3
  74a01f:	52                                              	push   edx
  74a020:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  74a023:	51                                              	push   ecx
  74a024:	8b c8                                           	mov    ecx,eax
  74a026:	8b 86 c0 00 00 00                               	mov    eax,DWORD PTR [esi+0xc0]
  74a02c:	52                                              	push   edx
  74a02d:	ff d0                                           	call   eax
  74a02f:	8b f0                                           	mov    esi,eax
  74a031:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  74a035:	85 c0                                           	test   eax,eax
  74a037:	74 0f                                           	je     0x74a048
  74a039:	3b 44 24 18                                     	cmp    eax,DWORD PTR [esp+0x18]
  74a03d:	74 09                                           	je     0x74a048
  74a03f:	50                                              	push   eax
  74a040:	e8 9b a4 d9 ff                                  	call   0x4e44e0
  74a045:	83 c4 04                                        	add    esp,0x4
  74a048:	8b c6                                           	mov    eax,esi
  74a04a:	5e                                              	pop    esi
  74a04b:	8b e5                                           	mov    esp,ebp
  74a04d:	5d                                              	pop    ebp
  74a04e:	c3                                              	ret
  74a04f:	cc                                              	int3
