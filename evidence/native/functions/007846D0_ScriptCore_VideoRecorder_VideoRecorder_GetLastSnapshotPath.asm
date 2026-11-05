# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007846d0 (ScriptCore.VideoRecorder::VideoRecorder_GetLastSnapshotPath)
Paired Ghidra pseudocode: 007846D0_ScriptCore_VideoRecorder_VideoRecorder_GetLastSnapshotPath.c
Window: [0x007846d0, 0x007847a0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007847a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007846d0: 83 ec 34 c7 04 24 00 00 00 00 e8 b1 b8 25 00 85
007846e0: c0 0f 84 ac 00 00 00 8b 10 8b 52 20 b9 54 8e 1c
007846f0: 01 89 4c 24 04 89 4c 24 08 56 8d 4c 24 08 51 8b
00784700: c8 c7 44 24 18 40 14 01 01 c7 44 24 14 56 8e 1c
00784710: 01 ff d2 e8 78 4c fe ff 6a 01 6a 10 8b f0 8d 44
00784720: 24 10 50 6a 09 6a 13 8d 4c 24 2c c7 44 24 2c 6c
00784730: 88 00 01 66 c7 44 24 36 13 00 66 c7 44 24 34 0b
00784740: 00 e8 7a 12 d7 ff 8b 16 8b 52 50 8d 44 24 04 50
00784750: 8d 4c 24 1c 51 8b ce ff d2 f6 44 24 20 04 c7 44
00784760: 24 18 f4 a6 fb 00 5e 74 0b 6a 00 8d 4c 24 18 e8
00784770: ec 0f d7 ff 8b 4c 24 0c 8b 44 24 04 2b c8 83 e1
00784780: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 50 fd d5 ff
00784790: 83 c4 04 8b 04 24 83 c4 34 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
007846d0 <.text+0x3836d0>:
  7846d0:	83 ec 34                                        	sub    esp,0x34
  7846d3:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
  7846da:	e8 b1 b8 25 00                                  	call   0x9dff90
  7846df:	85 c0                                           	test   eax,eax
  7846e1:	0f 84 ac 00 00 00                               	je     0x784793
  7846e7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7846e9:	8b 52 20                                        	mov    edx,DWORD PTR [edx+0x20]
  7846ec:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  7846f1:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  7846f5:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  7846f9:	56                                              	push   esi
  7846fa:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7846fe:	51                                              	push   ecx
  7846ff:	8b c8                                           	mov    ecx,eax
  784701:	c7 44 24 18 40 14 01 01                         	mov    DWORD PTR [esp+0x18],0x1011440
  784709:	c7 44 24 14 56 8e 1c 01                         	mov    DWORD PTR [esp+0x14],0x11c8e56
  784711:	ff d2                                           	call   edx
  784713:	e8 78 4c fe ff                                  	call   0x769390
  784718:	6a 01                                           	push   0x1
  78471a:	6a 10                                           	push   0x10
  78471c:	8b f0                                           	mov    esi,eax
  78471e:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  784722:	50                                              	push   eax
  784723:	6a 09                                           	push   0x9
  784725:	6a 13                                           	push   0x13
  784727:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  78472b:	c7 44 24 2c 6c 88 00 01                         	mov    DWORD PTR [esp+0x2c],0x100886c
  784733:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
  78473a:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
  784741:	e8 7a 12 d7 ff                                  	call   0x4f59c0
  784746:	8b 16                                           	mov    edx,DWORD PTR [esi]
  784748:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  78474b:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  78474f:	50                                              	push   eax
  784750:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  784754:	51                                              	push   ecx
  784755:	8b ce                                           	mov    ecx,esi
  784757:	ff d2                                           	call   edx
  784759:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  78475e:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  784766:	5e                                              	pop    esi
  784767:	74 0b                                           	je     0x784774
  784769:	6a 00                                           	push   0x0
  78476b:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  78476f:	e8 ec 0f d7 ff                                  	call   0x4f5760
  784774:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  784778:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  78477c:	2b c8                                           	sub    ecx,eax
  78477e:	83 e1 fe                                        	and    ecx,0xfffffffe
  784781:	83 f9 02                                        	cmp    ecx,0x2
  784784:	7e 0d                                           	jle    0x784793
  784786:	85 c0                                           	test   eax,eax
  784788:	74 09                                           	je     0x784793
  78478a:	50                                              	push   eax
  78478b:	e8 50 fd d5 ff                                  	call   0x4e44e0
  784790:	83 c4 04                                        	add    esp,0x4
  784793:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
  784796:	83 c4 34                                        	add    esp,0x34
  784799:	c3                                              	ret
  78479a:	cc                                              	int3
  78479b:	cc                                              	int3
  78479c:	cc                                              	int3
  78479d:	cc                                              	int3
  78479e:	cc                                              	int3
  78479f:	cc                                              	int3
