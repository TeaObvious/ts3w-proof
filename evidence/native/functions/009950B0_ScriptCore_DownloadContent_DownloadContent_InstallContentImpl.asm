# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009950b0 (ScriptCore.DownloadContent::DownloadContent_InstallContentImpl)
Paired Ghidra pseudocode: 009950B0_ScriptCore_DownloadContent_DownloadContent_InstallContentImpl.c
Window: [0x009950b0, 0x00995150) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995150
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009950b0: 81 ec 10 06 00 00 56 57 e8 d3 42 dd ff 85 c0 74
009950c0: 7c 8b 8c 24 1c 06 00 00 8b 10 8b 52 58 51 8b c8
009950d0: ff d2 8b f0 56 8d 8c 24 0c 02 00 00 e8 8f 90 b5
009950e0: ff 68 00 01 00 00 8d 44 24 0c 50 8d 8c 24 10 02
009950f0: 00 00 e8 39 8d b5 ff e8 64 dd fe ff 8b f8 85 ff
00995100: 74 3b 8b 0d 44 15 18 01 51 8d 54 24 0c 52 ff 15
00995110: 5c 67 f9 00 83 c4 08 85 c0 8b cf 75 0f 56 e8 2d
00995120: b2 ff ff 5f 5e 81 c4 10 06 00 00 c3 6a 00 56 e8
00995130: 0c 97 ff ff 5f 5e 81 c4 10 06 00 00 c3 5f b8 01
00995140: 00 00 00 5e 81 c4 10 06 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
009950b0 <.text+0x5940b0>:
  9950b0:	81 ec 10 06 00 00                               	sub    esp,0x610
  9950b6:	56                                              	push   esi
  9950b7:	57                                              	push   edi
  9950b8:	e8 d3 42 dd ff                                  	call   0x769390
  9950bd:	85 c0                                           	test   eax,eax
  9950bf:	74 7c                                           	je     0x99513d
  9950c1:	8b 8c 24 1c 06 00 00                            	mov    ecx,DWORD PTR [esp+0x61c]
  9950c8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9950ca:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  9950cd:	51                                              	push   ecx
  9950ce:	8b c8                                           	mov    ecx,eax
  9950d0:	ff d2                                           	call   edx
  9950d2:	8b f0                                           	mov    esi,eax
  9950d4:	56                                              	push   esi
  9950d5:	8d 8c 24 0c 02 00 00                            	lea    ecx,[esp+0x20c]
  9950dc:	e8 8f 90 b5 ff                                  	call   0x4ee170
  9950e1:	68 00 01 00 00                                  	push   0x100
  9950e6:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  9950ea:	50                                              	push   eax
  9950eb:	8d 8c 24 10 02 00 00                            	lea    ecx,[esp+0x210]
  9950f2:	e8 39 8d b5 ff                                  	call   0x4ede30
  9950f7:	e8 64 dd fe ff                                  	call   0x982e60
  9950fc:	8b f8                                           	mov    edi,eax
  9950fe:	85 ff                                           	test   edi,edi
  995100:	74 3b                                           	je     0x99513d
  995102:	8b 0d 44 15 18 01                               	mov    ecx,DWORD PTR ds:0x1181544
  995108:	51                                              	push   ecx
  995109:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  99510d:	52                                              	push   edx
  99510e:	ff 15 5c 67 f9 00                               	call   DWORD PTR ds:0xf9675c
  995114:	83 c4 08                                        	add    esp,0x8
  995117:	85 c0                                           	test   eax,eax
  995119:	8b cf                                           	mov    ecx,edi
  99511b:	75 0f                                           	jne    0x99512c
  99511d:	56                                              	push   esi
  99511e:	e8 2d b2 ff ff                                  	call   0x990350
  995123:	5f                                              	pop    edi
  995124:	5e                                              	pop    esi
  995125:	81 c4 10 06 00 00                               	add    esp,0x610
  99512b:	c3                                              	ret
  99512c:	6a 00                                           	push   0x0
  99512e:	56                                              	push   esi
  99512f:	e8 0c 97 ff ff                                  	call   0x98e840
  995134:	5f                                              	pop    edi
  995135:	5e                                              	pop    esi
  995136:	81 c4 10 06 00 00                               	add    esp,0x610
  99513c:	c3                                              	ret
  99513d:	5f                                              	pop    edi
  99513e:	b8 01 00 00 00                                  	mov    eax,0x1
  995143:	5e                                              	pop    esi
  995144:	81 c4 10 06 00 00                               	add    esp,0x610
  99514a:	c3                                              	ret
  99514b:	cc                                              	int3
  99514c:	cc                                              	int3
  99514d:	cc                                              	int3
  99514e:	cc                                              	int3
  99514f:	cc                                              	int3
