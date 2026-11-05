# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009972c0 (ScriptCore.DownloadContent::DownloadContent_GetNextFilename)
Paired Ghidra pseudocode: 009972C0_ScriptCore_DownloadContent_DownloadContent_GetNextFilename.c
Window: [0x009972c0, 0x009973b0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x009973b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009972c0: 83 ec 34 e8 98 99 01 00 85 c0 0f 84 d8 00 00 00
009972d0: 8b c8 e8 f9 93 01 00 85 c0 0f 84 c9 00 00 00 66
009972e0: 83 38 00 b9 54 8e 1c 01 89 4c 24 04 89 4c 24 08
009972f0: c7 44 24 10 ec a1 04 01 c7 44 24 0c 56 8e 1c 01
00997300: 8b c8 74 09 83 c1 02 66 83 39 00 75 f7 2b c8 d1
00997310: f9 56 8d 0c 48 51 50 8d 4c 24 10 e8 40 1a a7 ff
00997320: 6a 01 6a 10 8d 54 24 10 52 6a 09 6a 13 8d 4c 24
00997330: 2c c7 44 24 2c 6c 88 00 01 66 c7 44 24 36 13 00
00997340: 66 c7 44 24 34 0b 00 e8 74 e6 b5 ff e8 3f 20 dd
00997350: ff 8b 10 8b 52 50 8d 4c 24 04 51 8d 4c 24 1c 51
00997360: 8b c8 ff d2 f6 44 24 20 04 8b 74 24 04 c7 44 24
00997370: 18 f4 a6 fb 00 74 0b 6a 00 8d 4c 24 1c e8 de e3
00997380: b5 ff 8b 4c 24 10 8b 44 24 08 2b c8 83 e1 fe 83
00997390: f9 02 7e 0d 85 c0 74 09 50 e8 42 d1 b4 ff 83 c4
009973a0: 04 8b c6 5e 83 c4 34 c3 33 c0 83 c4 34 c3 cc cc

LINEAR DISASSEMBLY
009972c0 <.text+0x5962c0>:
  9972c0:	83 ec 34                                        	sub    esp,0x34
  9972c3:	e8 98 99 01 00                                  	call   0x9b0c60
  9972c8:	85 c0                                           	test   eax,eax
  9972ca:	0f 84 d8 00 00 00                               	je     0x9973a8
  9972d0:	8b c8                                           	mov    ecx,eax
  9972d2:	e8 f9 93 01 00                                  	call   0x9b06d0
  9972d7:	85 c0                                           	test   eax,eax
  9972d9:	0f 84 c9 00 00 00                               	je     0x9973a8
  9972df:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  9972e3:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  9972e8:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  9972ec:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  9972f0:	c7 44 24 10 ec a1 04 01                         	mov    DWORD PTR [esp+0x10],0x104a1ec
  9972f8:	c7 44 24 0c 56 8e 1c 01                         	mov    DWORD PTR [esp+0xc],0x11c8e56
  997300:	8b c8                                           	mov    ecx,eax
  997302:	74 09                                           	je     0x99730d
  997304:	83 c1 02                                        	add    ecx,0x2
  997307:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
  99730b:	75 f7                                           	jne    0x997304
  99730d:	2b c8                                           	sub    ecx,eax
  99730f:	d1 f9                                           	sar    ecx,1
  997311:	56                                              	push   esi
  997312:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
  997315:	51                                              	push   ecx
  997316:	50                                              	push   eax
  997317:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  99731b:	e8 40 1a a7 ff                                  	call   0x408d60
  997320:	6a 01                                           	push   0x1
  997322:	6a 10                                           	push   0x10
  997324:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  997328:	52                                              	push   edx
  997329:	6a 09                                           	push   0x9
  99732b:	6a 13                                           	push   0x13
  99732d:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  997331:	c7 44 24 2c 6c 88 00 01                         	mov    DWORD PTR [esp+0x2c],0x100886c
  997339:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
  997340:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
  997347:	e8 74 e6 b5 ff                                  	call   0x4f59c0
  99734c:	e8 3f 20 dd ff                                  	call   0x769390
  997351:	8b 10                                           	mov    edx,DWORD PTR [eax]
  997353:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  997356:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  99735a:	51                                              	push   ecx
  99735b:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  99735f:	51                                              	push   ecx
  997360:	8b c8                                           	mov    ecx,eax
  997362:	ff d2                                           	call   edx
  997364:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  997369:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  99736d:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  997375:	74 0b                                           	je     0x997382
  997377:	6a 00                                           	push   0x0
  997379:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  99737d:	e8 de e3 b5 ff                                  	call   0x4f5760
  997382:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  997386:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  99738a:	2b c8                                           	sub    ecx,eax
  99738c:	83 e1 fe                                        	and    ecx,0xfffffffe
  99738f:	83 f9 02                                        	cmp    ecx,0x2
  997392:	7e 0d                                           	jle    0x9973a1
  997394:	85 c0                                           	test   eax,eax
  997396:	74 09                                           	je     0x9973a1
  997398:	50                                              	push   eax
  997399:	e8 42 d1 b4 ff                                  	call   0x4e44e0
  99739e:	83 c4 04                                        	add    esp,0x4
  9973a1:	8b c6                                           	mov    eax,esi
  9973a3:	5e                                              	pop    esi
  9973a4:	83 c4 34                                        	add    esp,0x34
  9973a7:	c3                                              	ret
  9973a8:	33 c0                                           	xor    eax,eax
  9973aa:	83 c4 34                                        	add    esp,0x34
  9973ad:	c3                                              	ret
  9973ae:	cc                                              	int3
  9973af:	cc                                              	int3
