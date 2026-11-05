# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00748410 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetCookieValueByKey)
Paired Ghidra pseudocode: 00748410_ScriptCore_OnlineFeatures_OnlineFeaturesHost_GetCookieValueByKey.c
Window: [0x00748410, 0x00748510) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00748510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00748410: 83 ec 44 56 e8 77 0f 02 00 8b f0 b8 54 8e 1c 01
00748420: 89 44 24 08 89 44 24 0c a1 68 50 1d 01 85 c0 c7
00748430: 44 24 14 04 3c 00 01 c7 44 24 10 55 8e 1c 01 74
00748440: 1a 83 c0 f8 74 15 8b 54 24 4c 8d 4c 24 08 51 8b
00748450: 88 1c 01 00 00 52 e8 55 e4 ff ff 8d 44 24 08 50
00748460: 8d 4c 24 1c 51 e8 26 b8 da ff 83 c4 08 6a 01 6a
00748470: 10 50 6a 09 6a 13 8d 4c 24 3c c7 44 24 3c 6c 88
00748480: 00 01 66 c7 44 24 46 13 00 66 c7 44 24 44 0b 00
00748490: e8 2b d5 da ff 8b 54 24 20 8b 44 24 18 2b d0 83
007484a0: e2 fe 83 fa 02 7e 0d 85 c0 74 09 50 e8 2f c0 d9
007484b0: ff 83 c4 04 8b 06 8b 40 50 8d 4c 24 04 51 8d 54
007484c0: 24 2c 52 8b ce ff d0 f6 44 24 30 04 8b 74 24 04
007484d0: c7 44 24 28 f4 a6 fb 00 74 0b 6a 00 8d 4c 24 2c
007484e0: e8 7b d2 da ff 8b 4c 24 10 8b 44 24 08 2b c8 83
007484f0: f9 01 7e 0d 85 c0 74 09 50 e8 e2 bf d9 ff 83 c4
00748500: 04 8b c6 5e 83 c4 44 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00748410 <.text+0x347410>:
  748410:	83 ec 44                                        	sub    esp,0x44
  748413:	56                                              	push   esi
  748414:	e8 77 0f 02 00                                  	call   0x769390
  748419:	8b f0                                           	mov    esi,eax
  74841b:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  748420:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  748424:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  748428:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  74842d:	85 c0                                           	test   eax,eax
  74842f:	c7 44 24 14 04 3c 00 01                         	mov    DWORD PTR [esp+0x14],0x1003c04
  748437:	c7 44 24 10 55 8e 1c 01                         	mov    DWORD PTR [esp+0x10],0x11c8e55
  74843f:	74 1a                                           	je     0x74845b
  748441:	83 c0 f8                                        	add    eax,0xfffffff8
  748444:	74 15                                           	je     0x74845b
  748446:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  74844a:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  74844e:	51                                              	push   ecx
  74844f:	8b 88 1c 01 00 00                               	mov    ecx,DWORD PTR [eax+0x11c]
  748455:	52                                              	push   edx
  748456:	e8 55 e4 ff ff                                  	call   0x7468b0
  74845b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  74845f:	50                                              	push   eax
  748460:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  748464:	51                                              	push   ecx
  748465:	e8 26 b8 da ff                                  	call   0x4f3c90
  74846a:	83 c4 08                                        	add    esp,0x8
  74846d:	6a 01                                           	push   0x1
  74846f:	6a 10                                           	push   0x10
  748471:	50                                              	push   eax
  748472:	6a 09                                           	push   0x9
  748474:	6a 13                                           	push   0x13
  748476:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  74847a:	c7 44 24 3c 6c 88 00 01                         	mov    DWORD PTR [esp+0x3c],0x100886c
  748482:	66 c7 44 24 46 13 00                            	mov    WORD PTR [esp+0x46],0x13
  748489:	66 c7 44 24 44 0b 00                            	mov    WORD PTR [esp+0x44],0xb
  748490:	e8 2b d5 da ff                                  	call   0x4f59c0
  748495:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  748499:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  74849d:	2b d0                                           	sub    edx,eax
  74849f:	83 e2 fe                                        	and    edx,0xfffffffe
  7484a2:	83 fa 02                                        	cmp    edx,0x2
  7484a5:	7e 0d                                           	jle    0x7484b4
  7484a7:	85 c0                                           	test   eax,eax
  7484a9:	74 09                                           	je     0x7484b4
  7484ab:	50                                              	push   eax
  7484ac:	e8 2f c0 d9 ff                                  	call   0x4e44e0
  7484b1:	83 c4 04                                        	add    esp,0x4
  7484b4:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7484b6:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  7484b9:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  7484bd:	51                                              	push   ecx
  7484be:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  7484c2:	52                                              	push   edx
  7484c3:	8b ce                                           	mov    ecx,esi
  7484c5:	ff d0                                           	call   eax
  7484c7:	f6 44 24 30 04                                  	test   BYTE PTR [esp+0x30],0x4
  7484cc:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  7484d0:	c7 44 24 28 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x28],0xfba6f4
  7484d8:	74 0b                                           	je     0x7484e5
  7484da:	6a 00                                           	push   0x0
  7484dc:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  7484e0:	e8 7b d2 da ff                                  	call   0x4f5760
  7484e5:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7484e9:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7484ed:	2b c8                                           	sub    ecx,eax
  7484ef:	83 f9 01                                        	cmp    ecx,0x1
  7484f2:	7e 0d                                           	jle    0x748501
  7484f4:	85 c0                                           	test   eax,eax
  7484f6:	74 09                                           	je     0x748501
  7484f8:	50                                              	push   eax
  7484f9:	e8 e2 bf d9 ff                                  	call   0x4e44e0
  7484fe:	83 c4 04                                        	add    esp,0x4
  748501:	8b c6                                           	mov    eax,esi
  748503:	5e                                              	pop    esi
  748504:	83 c4 44                                        	add    esp,0x44
  748507:	c3                                              	ret
  748508:	cc                                              	int3
  748509:	cc                                              	int3
  74850a:	cc                                              	int3
  74850b:	cc                                              	int3
  74850c:	cc                                              	int3
  74850d:	cc                                              	int3
  74850e:	cc                                              	int3
  74850f:	cc                                              	int3
