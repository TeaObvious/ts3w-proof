# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995610 (ScriptCore.DownloadContent::DownloadContent_GetFirstPackageEnableData)
Paired Ghidra pseudocode: 00995610_ScriptCore_DownloadContent_DownloadContent_GetFirstPackageEnableData.c
Window: [0x00995610, 0x00995680) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995610: 83 ec 20 53 56 32 db e8 44 b6 01 00 8b f0 85 f6
00995620: 74 4c 8d 4c 24 08 e8 d5 b5 b6 ff 8b 44 24 30 50
00995630: 8d 4c 24 0c 51 8b ce e8 e4 af 01 00 8a d8 84 db
00995640: 74 2c 8d 54 24 08 52 8d 44 24 1c 50 e8 cf 69 dd
00995650: ff 8b 10 8b 4c 24 34 89 11 8b 50 04 89 51 04 8b
00995660: 50 08 89 51 08 8b 40 0c 83 c4 08 89 41 0c 5e 8a
00995670: c3 5b 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995610 <.text+0x594610>:
  995610:	83 ec 20                                        	sub    esp,0x20
  995613:	53                                              	push   ebx
  995614:	56                                              	push   esi
  995615:	32 db                                           	xor    bl,bl
  995617:	e8 44 b6 01 00                                  	call   0x9b0c60
  99561c:	8b f0                                           	mov    esi,eax
  99561e:	85 f6                                           	test   esi,esi
  995620:	74 4c                                           	je     0x99566e
  995622:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  995626:	e8 d5 b5 b6 ff                                  	call   0x500c00
  99562b:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  99562f:	50                                              	push   eax
  995630:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  995634:	51                                              	push   ecx
  995635:	8b ce                                           	mov    ecx,esi
  995637:	e8 e4 af 01 00                                  	call   0x9b0620
  99563c:	8a d8                                           	mov    bl,al
  99563e:	84 db                                           	test   bl,bl
  995640:	74 2c                                           	je     0x99566e
  995642:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  995646:	52                                              	push   edx
  995647:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  99564b:	50                                              	push   eax
  99564c:	e8 cf 69 dd ff                                  	call   0x76c020
  995651:	8b 10                                           	mov    edx,DWORD PTR [eax]
  995653:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  995657:	89 11                                           	mov    DWORD PTR [ecx],edx
  995659:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  99565c:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  99565f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  995662:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  995665:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  995668:	83 c4 08                                        	add    esp,0x8
  99566b:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  99566e:	5e                                              	pop    esi
  99566f:	8a c3                                           	mov    al,bl
  995671:	5b                                              	pop    ebx
  995672:	83 c4 20                                        	add    esp,0x20
  995675:	c3                                              	ret
  995676:	cc                                              	int3
  995677:	cc                                              	int3
  995678:	cc                                              	int3
  995679:	cc                                              	int3
  99567a:	cc                                              	int3
  99567b:	cc                                              	int3
  99567c:	cc                                              	int3
  99567d:	cc                                              	int3
  99567e:	cc                                              	int3
  99567f:	cc                                              	int3
