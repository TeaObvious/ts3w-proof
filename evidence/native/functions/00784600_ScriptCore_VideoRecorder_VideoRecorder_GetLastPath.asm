# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00784600 (ScriptCore.VideoRecorder::VideoRecorder_GetLastPath)
Paired Ghidra pseudocode: 00784600_ScriptCore_VideoRecorder_VideoRecorder_GetLastPath.c
Window: [0x00784600, 0x007846d0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007846d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00784600: 83 ec 34 c7 04 24 00 00 00 00 e8 81 b9 25 00 85
00784610: c0 0f 84 ac 00 00 00 8b 10 8b 52 1c b9 54 8e 1c
00784620: 01 89 4c 24 04 89 4c 24 08 56 8d 4c 24 08 51 8b
00784630: c8 c7 44 24 18 40 14 01 01 c7 44 24 14 56 8e 1c
00784640: 01 ff d2 e8 48 4d fe ff 6a 01 6a 10 8b f0 8d 44
00784650: 24 10 50 6a 09 6a 13 8d 4c 24 2c c7 44 24 2c 6c
00784660: 88 00 01 66 c7 44 24 36 13 00 66 c7 44 24 34 0b
00784670: 00 e8 4a 13 d7 ff 8b 16 8b 52 50 8d 44 24 04 50
00784680: 8d 4c 24 1c 51 8b ce ff d2 f6 44 24 20 04 c7 44
00784690: 24 18 f4 a6 fb 00 5e 74 0b 6a 00 8d 4c 24 18 e8
007846a0: bc 10 d7 ff 8b 4c 24 0c 8b 44 24 04 2b c8 83 e1
007846b0: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 20 fe d5 ff
007846c0: 83 c4 04 8b 04 24 83 c4 34 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00784600 <.text+0x383600>:
  784600:	83 ec 34                                        	sub    esp,0x34
  784603:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
  78460a:	e8 81 b9 25 00                                  	call   0x9dff90
  78460f:	85 c0                                           	test   eax,eax
  784611:	0f 84 ac 00 00 00                               	je     0x7846c3
  784617:	8b 10                                           	mov    edx,DWORD PTR [eax]
  784619:	8b 52 1c                                        	mov    edx,DWORD PTR [edx+0x1c]
  78461c:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  784621:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  784625:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  784629:	56                                              	push   esi
  78462a:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  78462e:	51                                              	push   ecx
  78462f:	8b c8                                           	mov    ecx,eax
  784631:	c7 44 24 18 40 14 01 01                         	mov    DWORD PTR [esp+0x18],0x1011440
  784639:	c7 44 24 14 56 8e 1c 01                         	mov    DWORD PTR [esp+0x14],0x11c8e56
  784641:	ff d2                                           	call   edx
  784643:	e8 48 4d fe ff                                  	call   0x769390
  784648:	6a 01                                           	push   0x1
  78464a:	6a 10                                           	push   0x10
  78464c:	8b f0                                           	mov    esi,eax
  78464e:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  784652:	50                                              	push   eax
  784653:	6a 09                                           	push   0x9
  784655:	6a 13                                           	push   0x13
  784657:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  78465b:	c7 44 24 2c 6c 88 00 01                         	mov    DWORD PTR [esp+0x2c],0x100886c
  784663:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
  78466a:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
  784671:	e8 4a 13 d7 ff                                  	call   0x4f59c0
  784676:	8b 16                                           	mov    edx,DWORD PTR [esi]
  784678:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  78467b:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  78467f:	50                                              	push   eax
  784680:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  784684:	51                                              	push   ecx
  784685:	8b ce                                           	mov    ecx,esi
  784687:	ff d2                                           	call   edx
  784689:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  78468e:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  784696:	5e                                              	pop    esi
  784697:	74 0b                                           	je     0x7846a4
  784699:	6a 00                                           	push   0x0
  78469b:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  78469f:	e8 bc 10 d7 ff                                  	call   0x4f5760
  7846a4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7846a8:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7846ac:	2b c8                                           	sub    ecx,eax
  7846ae:	83 e1 fe                                        	and    ecx,0xfffffffe
  7846b1:	83 f9 02                                        	cmp    ecx,0x2
  7846b4:	7e 0d                                           	jle    0x7846c3
  7846b6:	85 c0                                           	test   eax,eax
  7846b8:	74 09                                           	je     0x7846c3
  7846ba:	50                                              	push   eax
  7846bb:	e8 20 fe d5 ff                                  	call   0x4e44e0
  7846c0:	83 c4 04                                        	add    esp,0x4
  7846c3:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
  7846c6:	83 c4 34                                        	add    esp,0x34
  7846c9:	c3                                              	ret
  7846ca:	cc                                              	int3
  7846cb:	cc                                              	int3
  7846cc:	cc                                              	int3
  7846cd:	cc                                              	int3
  7846ce:	cc                                              	int3
  7846cf:	cc                                              	int3
