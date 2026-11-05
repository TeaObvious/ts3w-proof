# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007687f0 (ScriptCore.SACS::SACS_GetParamNameImpl)
Paired Ghidra pseudocode: 007687F0_ScriptCore_SACS_SACS_GetParamNameImpl.c
Window: [0x007687f0, 0x00768940) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x00768940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007687f0: 83 ec 34 56 e8 97 0b 00 00 8b 4c 24 3c 8b f0 8b
00768800: 06 8b 90 cc 00 00 00 51 8b ce ff d2 85 c0 b9 54
00768810: 8e 1c 01 c7 44 24 14 2c 7e 00 01 89 4c 24 08 89
00768820: 4c 24 0c c7 44 24 10 56 8e 1c 01 74 62 8b 4c 24
00768830: 40 51 8b c8 e8 57 78 09 00 85 c0 74 27 8b 08 e8
00768840: 8c 4b 09 00 66 83 38 00 8b c8 74 0d 8d 64 24 00
00768850: 83 c1 02 66 83 39 00 75 f7 2b c8 d1 f9 8d 14 48
00768860: 52 50 eb 4d b8 c8 7f 00 01 8d a4 24 00 00 00 00
00768870: 83 c0 02 66 83 38 00 75 f7 2d c8 7f 00 01 d1 f8
00768880: 8d 04 45 c8 7f 00 01 50 68 c8 7f 00 01 eb 22 b8
00768890: 80 7f 00 01 83 c0 02 66 83 38 00 75 f7 2d 80 7f
007688a0: 00 01 d1 f8 8d 0c 45 80 7f 00 01 51 68 80 7f 00
007688b0: 01 8d 4c 24 10 e8 a6 04 ca ff 6a 01 6a 10 8d 54
007688c0: 24 10 52 6a 09 6a 13 8d 4c 24 2c c7 44 24 2c 6c
007688d0: 88 00 01 66 c7 44 24 36 13 00 66 c7 44 24 34 0b
007688e0: 00 e8 da d0 d8 ff 8b 06 8b 40 50 8d 4c 24 04 51
007688f0: 8d 54 24 1c 52 8b ce ff d0 f6 44 24 20 04 8b 74
00768900: 24 04 c7 44 24 18 f4 a6 fb 00 74 0b 6a 00 8d 4c
00768910: 24 1c e8 49 ce d8 ff 8b 4c 24 10 8b 44 24 08 2b
00768920: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 ad
00768930: bb d7 ff 83 c4 04 8b c6 5e 83 c4 34 c3 cc cc cc

LINEAR DISASSEMBLY
007687f0 <.text+0x3677f0>:
  7687f0:	83 ec 34                                        	sub    esp,0x34
  7687f3:	56                                              	push   esi
  7687f4:	e8 97 0b 00 00                                  	call   0x769390
  7687f9:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  7687fd:	8b f0                                           	mov    esi,eax
  7687ff:	8b 06                                           	mov    eax,DWORD PTR [esi]
  768801:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
  768807:	51                                              	push   ecx
  768808:	8b ce                                           	mov    ecx,esi
  76880a:	ff d2                                           	call   edx
  76880c:	85 c0                                           	test   eax,eax
  76880e:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  768813:	c7 44 24 14 2c 7e 00 01                         	mov    DWORD PTR [esp+0x14],0x1007e2c
  76881b:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  76881f:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  768823:	c7 44 24 10 56 8e 1c 01                         	mov    DWORD PTR [esp+0x10],0x11c8e56
  76882b:	74 62                                           	je     0x76888f
  76882d:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  768831:	51                                              	push   ecx
  768832:	8b c8                                           	mov    ecx,eax
  768834:	e8 57 78 09 00                                  	call   0x800090
  768839:	85 c0                                           	test   eax,eax
  76883b:	74 27                                           	je     0x768864
  76883d:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  76883f:	e8 8c 4b 09 00                                  	call   0x7fd3d0
  768844:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  768848:	8b c8                                           	mov    ecx,eax
  76884a:	74 0d                                           	je     0x768859
  76884c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  768850:	83 c1 02                                        	add    ecx,0x2
  768853:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
  768857:	75 f7                                           	jne    0x768850
  768859:	2b c8                                           	sub    ecx,eax
  76885b:	d1 f9                                           	sar    ecx,1
  76885d:	8d 14 48                                        	lea    edx,[eax+ecx*2]
  768860:	52                                              	push   edx
  768861:	50                                              	push   eax
  768862:	eb 4d                                           	jmp    0x7688b1
  768864:	b8 c8 7f 00 01                                  	mov    eax,0x1007fc8
  768869:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  768870:	83 c0 02                                        	add    eax,0x2
  768873:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  768877:	75 f7                                           	jne    0x768870
  768879:	2d c8 7f 00 01                                  	sub    eax,0x1007fc8
  76887e:	d1 f8                                           	sar    eax,1
  768880:	8d 04 45 c8 7f 00 01                            	lea    eax,[eax*2+0x1007fc8]
  768887:	50                                              	push   eax
  768888:	68 c8 7f 00 01                                  	push   0x1007fc8
  76888d:	eb 22                                           	jmp    0x7688b1
  76888f:	b8 80 7f 00 01                                  	mov    eax,0x1007f80
  768894:	83 c0 02                                        	add    eax,0x2
  768897:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  76889b:	75 f7                                           	jne    0x768894
  76889d:	2d 80 7f 00 01                                  	sub    eax,0x1007f80
  7688a2:	d1 f8                                           	sar    eax,1
  7688a4:	8d 0c 45 80 7f 00 01                            	lea    ecx,[eax*2+0x1007f80]
  7688ab:	51                                              	push   ecx
  7688ac:	68 80 7f 00 01                                  	push   0x1007f80
  7688b1:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7688b5:	e8 a6 04 ca ff                                  	call   0x408d60
  7688ba:	6a 01                                           	push   0x1
  7688bc:	6a 10                                           	push   0x10
  7688be:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  7688c2:	52                                              	push   edx
  7688c3:	6a 09                                           	push   0x9
  7688c5:	6a 13                                           	push   0x13
  7688c7:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  7688cb:	c7 44 24 2c 6c 88 00 01                         	mov    DWORD PTR [esp+0x2c],0x100886c
  7688d3:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
  7688da:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
  7688e1:	e8 da d0 d8 ff                                  	call   0x4f59c0
  7688e6:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7688e8:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  7688eb:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  7688ef:	51                                              	push   ecx
  7688f0:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  7688f4:	52                                              	push   edx
  7688f5:	8b ce                                           	mov    ecx,esi
  7688f7:	ff d0                                           	call   eax
  7688f9:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  7688fe:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  768902:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  76890a:	74 0b                                           	je     0x768917
  76890c:	6a 00                                           	push   0x0
  76890e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  768912:	e8 49 ce d8 ff                                  	call   0x4f5760
  768917:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  76891b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  76891f:	2b c8                                           	sub    ecx,eax
  768921:	83 e1 fe                                        	and    ecx,0xfffffffe
  768924:	83 f9 02                                        	cmp    ecx,0x2
  768927:	7e 0d                                           	jle    0x768936
  768929:	85 c0                                           	test   eax,eax
  76892b:	74 09                                           	je     0x768936
  76892d:	50                                              	push   eax
  76892e:	e8 ad bb d7 ff                                  	call   0x4e44e0
  768933:	83 c4 04                                        	add    esp,0x4
  768936:	8b c6                                           	mov    eax,esi
  768938:	5e                                              	pop    esi
  768939:	83 c4 34                                        	add    esp,0x34
  76893c:	c3                                              	ret
  76893d:	cc                                              	int3
  76893e:	cc                                              	int3
  76893f:	cc                                              	int3
