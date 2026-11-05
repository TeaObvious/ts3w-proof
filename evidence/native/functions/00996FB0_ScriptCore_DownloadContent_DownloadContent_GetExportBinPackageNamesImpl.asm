# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00996fb0 (ScriptCore.DownloadContent::DownloadContent_GetExportBinPackageNamesImpl)
Paired Ghidra pseudocode: 00996FB0_ScriptCore_DownloadContent_DownloadContent_GetExportBinPackageNamesImpl.c
Window: [0x00996fb0, 0x009970a0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x009970a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00996fb0: 83 ec 34 8b 0d a4 a6 1e 01 b8 54 8e 1c 01 89 44
00996fc0: 24 04 89 44 24 08 8d 44 24 04 50 c7 44 24 14 9c
00996fd0: a1 04 01 c7 44 24 10 56 8e 1c 01 e8 40 d9 00 00
00996fe0: 8b 44 24 04 3b 44 24 08 0f 84 91 00 00 00 56 6a
00996ff0: 01 6a 10 8d 4c 24 10 51 6a 09 6a 13 8d 4c 24 2c
00997000: c7 44 24 2c 6c 88 00 01 66 c7 44 24 36 13 00 66
00997010: c7 44 24 34 0b 00 e8 a5 e9 b5 ff c7 44 24 04 00
00997020: 00 00 00 e8 68 23 dd ff 8b 10 8b 52 50 8d 4c 24
00997030: 04 51 8d 4c 24 1c 51 8b c8 ff d2 f6 44 24 20 04
00997040: 8b 74 24 04 c7 44 24 18 f4 a6 fb 00 74 0b 6a 00
00997050: 8d 4c 24 1c e8 07 e7 b5 ff 8b 4c 24 10 8b 44 24
00997060: 08 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50
00997070: e8 6b d4 b4 ff 83 c4 04 8b c6 5e 83 c4 34 c3 8b
00997080: 54 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74
00997090: 09 50 e8 49 d4 b4 ff 83 c4 04 33 c0 83 c4 34 c3

LINEAR DISASSEMBLY
00996fb0 <.text+0x595fb0>:
  996fb0:	83 ec 34                                        	sub    esp,0x34
  996fb3:	8b 0d a4 a6 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea6a4
  996fb9:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  996fbe:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  996fc2:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  996fc6:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  996fca:	50                                              	push   eax
  996fcb:	c7 44 24 14 9c a1 04 01                         	mov    DWORD PTR [esp+0x14],0x104a19c
  996fd3:	c7 44 24 10 56 8e 1c 01                         	mov    DWORD PTR [esp+0x10],0x11c8e56
  996fdb:	e8 40 d9 00 00                                  	call   0x9a4920
  996fe0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  996fe4:	3b 44 24 08                                     	cmp    eax,DWORD PTR [esp+0x8]
  996fe8:	0f 84 91 00 00 00                               	je     0x99707f
  996fee:	56                                              	push   esi
  996fef:	6a 01                                           	push   0x1
  996ff1:	6a 10                                           	push   0x10
  996ff3:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  996ff7:	51                                              	push   ecx
  996ff8:	6a 09                                           	push   0x9
  996ffa:	6a 13                                           	push   0x13
  996ffc:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  997000:	c7 44 24 2c 6c 88 00 01                         	mov    DWORD PTR [esp+0x2c],0x100886c
  997008:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
  99700f:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
  997016:	e8 a5 e9 b5 ff                                  	call   0x4f59c0
  99701b:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  997023:	e8 68 23 dd ff                                  	call   0x769390
  997028:	8b 10                                           	mov    edx,DWORD PTR [eax]
  99702a:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  99702d:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  997031:	51                                              	push   ecx
  997032:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  997036:	51                                              	push   ecx
  997037:	8b c8                                           	mov    ecx,eax
  997039:	ff d2                                           	call   edx
  99703b:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  997040:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  997044:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  99704c:	74 0b                                           	je     0x997059
  99704e:	6a 00                                           	push   0x0
  997050:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  997054:	e8 07 e7 b5 ff                                  	call   0x4f5760
  997059:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  99705d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  997061:	2b c8                                           	sub    ecx,eax
  997063:	83 e1 fe                                        	and    ecx,0xfffffffe
  997066:	83 f9 02                                        	cmp    ecx,0x2
  997069:	7e 0d                                           	jle    0x997078
  99706b:	85 c0                                           	test   eax,eax
  99706d:	74 09                                           	je     0x997078
  99706f:	50                                              	push   eax
  997070:	e8 6b d4 b4 ff                                  	call   0x4e44e0
  997075:	83 c4 04                                        	add    esp,0x4
  997078:	8b c6                                           	mov    eax,esi
  99707a:	5e                                              	pop    esi
  99707b:	83 c4 34                                        	add    esp,0x34
  99707e:	c3                                              	ret
  99707f:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  997083:	2b d0                                           	sub    edx,eax
  997085:	83 e2 fe                                        	and    edx,0xfffffffe
  997088:	83 fa 02                                        	cmp    edx,0x2
  99708b:	7e 0d                                           	jle    0x99709a
  99708d:	85 c0                                           	test   eax,eax
  99708f:	74 09                                           	je     0x99709a
  997091:	50                                              	push   eax
  997092:	e8 49 d4 b4 ff                                  	call   0x4e44e0
  997097:	83 c4 04                                        	add    esp,0x4
  99709a:	33 c0                                           	xor    eax,eax
  99709c:	83 c4 34                                        	add    esp,0x34
  99709f:	c3                                              	ret
