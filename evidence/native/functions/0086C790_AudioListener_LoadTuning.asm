# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0086c790 (AudioListener_LoadTuning)
Paired Ghidra pseudocode: 0086C790_AudioListener_LoadTuning.c
Window: [0x0086c790, 0x0086c840) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x0086c840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0086c790: 51 56 68 ec 07 14 00 8d 54 24 08 8b f1 8b 4c 24
0086c7a0: 10 8b 01 8b 40 1c 52 68 8a 0f b3 7f 68 75 6d df
0086c7b0: 5d c7 44 24 14 00 00 00 00 ff d0 84 c0 8b 4c 24
0086c7c0: 04 75 12 85 c9 74 07 8b 11 8b 42 04 ff d0 32 c0
0086c7d0: 5e 59 c2 04 00 68 c3 b1 de f8 51 8d 4e 40 e8 cd
0086c7e0: db 03 00 8b 54 24 04 68 cb 95 14 0a 52 8d 8e a0
0086c7f0: 03 00 00 e8 b8 db 03 00 8b 4c 24 04 8b 01 8b 50
0086c800: 18 68 a6 4f 07 16 ff d2 84 c0 88 86 60 0a 00 00
0086c810: 74 15 8b 44 24 04 68 a6 4f 07 16 50 8d 8e 00 07
0086c820: 00 00 e8 89 db 03 00 8b 4c 24 04 85 c9 74 07 8b
0086c830: 11 8b 42 04 ff d0 b0 01 5e 59 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
0086c790 <.text+0x46b790>:
  86c790:	51                                              	push   ecx
  86c791:	56                                              	push   esi
  86c792:	68 ec 07 14 00                                  	push   0x1407ec
  86c797:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  86c79b:	8b f1                                           	mov    esi,ecx
  86c79d:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  86c7a1:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  86c7a3:	8b 40 1c                                        	mov    eax,DWORD PTR [eax+0x1c]
  86c7a6:	52                                              	push   edx
  86c7a7:	68 8a 0f b3 7f                                  	push   0x7fb30f8a
  86c7ac:	68 75 6d df 5d                                  	push   0x5ddf6d75
  86c7b1:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  86c7b9:	ff d0                                           	call   eax
  86c7bb:	84 c0                                           	test   al,al
  86c7bd:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  86c7c1:	75 12                                           	jne    0x86c7d5
  86c7c3:	85 c9                                           	test   ecx,ecx
  86c7c5:	74 07                                           	je     0x86c7ce
  86c7c7:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  86c7c9:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  86c7cc:	ff d0                                           	call   eax
  86c7ce:	32 c0                                           	xor    al,al
  86c7d0:	5e                                              	pop    esi
  86c7d1:	59                                              	pop    ecx
  86c7d2:	c2 04 00                                        	ret    0x4
  86c7d5:	68 c3 b1 de f8                                  	push   0xf8deb1c3
  86c7da:	51                                              	push   ecx
  86c7db:	8d 4e 40                                        	lea    ecx,[esi+0x40]
  86c7de:	e8 cd db 03 00                                  	call   0x8aa3b0
  86c7e3:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  86c7e7:	68 cb 95 14 0a                                  	push   0xa1495cb
  86c7ec:	52                                              	push   edx
  86c7ed:	8d 8e a0 03 00 00                               	lea    ecx,[esi+0x3a0]
  86c7f3:	e8 b8 db 03 00                                  	call   0x8aa3b0
  86c7f8:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  86c7fc:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  86c7fe:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  86c801:	68 a6 4f 07 16                                  	push   0x16074fa6
  86c806:	ff d2                                           	call   edx
  86c808:	84 c0                                           	test   al,al
  86c80a:	88 86 60 0a 00 00                               	mov    BYTE PTR [esi+0xa60],al
  86c810:	74 15                                           	je     0x86c827
  86c812:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  86c816:	68 a6 4f 07 16                                  	push   0x16074fa6
  86c81b:	50                                              	push   eax
  86c81c:	8d 8e 00 07 00 00                               	lea    ecx,[esi+0x700]
  86c822:	e8 89 db 03 00                                  	call   0x8aa3b0
  86c827:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  86c82b:	85 c9                                           	test   ecx,ecx
  86c82d:	74 07                                           	je     0x86c836
  86c82f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  86c831:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  86c834:	ff d0                                           	call   eax
  86c836:	b0 01                                           	mov    al,0x1
  86c838:	5e                                              	pop    esi
  86c839:	59                                              	pop    ecx
  86c83a:	c2 04 00                                        	ret    0x4
  86c83d:	cc                                              	int3
  86c83e:	cc                                              	int3
  86c83f:	cc                                              	int3
