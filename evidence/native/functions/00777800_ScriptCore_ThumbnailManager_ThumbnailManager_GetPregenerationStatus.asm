# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777800 (ScriptCore.ThumbnailManager::ThumbnailManager_GetPregenerationStatus)
Paired Ghidra pseudocode: 00777800_ScriptCore_ThumbnailManager_ThumbnailManager_GetPregenerationStatus.c
Window: [0x00777800, 0x00777860) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777800: 8b 0d 30 ec 1e 01 83 ec 10 85 c9 75 08 33 c0 33
00777810: d2 83 c4 10 c3 56 8d 44 24 04 50 e8 c0 30 5d 00
00777820: 8b 44 24 0c b9 00 00 10 00 f7 e1 8b 4c 24 04 33
00777830: f6 56 03 c1 68 00 00 10 00 13 d6 52 50 e8 de 7c
00777840: 80 00 8b 4c 24 08 03 c1 13 d6 80 7c 24 11 00 5e
00777850: 74 09 83 c0 00 81 d2 00 00 00 80 83 c4 10 c3 cc

LINEAR DISASSEMBLY
00777800 <.text+0x376800>:
  777800:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  777806:	83 ec 10                                        	sub    esp,0x10
  777809:	85 c9                                           	test   ecx,ecx
  77780b:	75 08                                           	jne    0x777815
  77780d:	33 c0                                           	xor    eax,eax
  77780f:	33 d2                                           	xor    edx,edx
  777811:	83 c4 10                                        	add    esp,0x10
  777814:	c3                                              	ret
  777815:	56                                              	push   esi
  777816:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  77781a:	50                                              	push   eax
  77781b:	e8 c0 30 5d 00                                  	call   0xd4a8e0
  777820:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  777824:	b9 00 00 10 00                                  	mov    ecx,0x100000
  777829:	f7 e1                                           	mul    ecx
  77782b:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77782f:	33 f6                                           	xor    esi,esi
  777831:	56                                              	push   esi
  777832:	03 c1                                           	add    eax,ecx
  777834:	68 00 00 10 00                                  	push   0x100000
  777839:	13 d6                                           	adc    edx,esi
  77783b:	52                                              	push   edx
  77783c:	50                                              	push   eax
  77783d:	e8 de 7c 80 00                                  	call   0xf7f520
  777842:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  777846:	03 c1                                           	add    eax,ecx
  777848:	13 d6                                           	adc    edx,esi
  77784a:	80 7c 24 11 00                                  	cmp    BYTE PTR [esp+0x11],0x0
  77784f:	5e                                              	pop    esi
  777850:	74 09                                           	je     0x77785b
  777852:	83 c0 00                                        	add    eax,0x0
  777855:	81 d2 00 00 00 80                               	adc    edx,0x80000000
  77785b:	83 c4 10                                        	add    esp,0x10
  77785e:	c3                                              	ret
  77785f:	cc                                              	int3
