# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008aa430 (AudioCurve_InitIdentity)
Paired Ghidra pseudocode: 008AA430_AudioCurve_InitIdentity.c
Window: [0x008aa430, 0x008aa4a0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x008aa4a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008aa430: 83 ec 10 0f 57 c0 56 8b f1 8d 46 14 89 46 10 c7
008aa440: 46 0c 7c 99 f9 00 89 46 04 89 06 05 48 03 00 00
008aa450: 89 46 08 6a 02 8d 44 24 08 f3 0f 11 44 24 08 f3
008aa460: 0f 11 44 24 0c f3 0f 10 05 f8 98 f9 00 50 c7 46
008aa470: 0c c8 aa f9 00 c7 86 5c 03 00 00 00 00 00 00 f3
008aa480: 0f 11 44 24 14 f3 0f 11 44 24 18 e8 00 fb ff ff
008aa490: 8b c6 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
008aa430 <.text+0x4a9430>:
  8aa430:	83 ec 10                                        	sub    esp,0x10
  8aa433:	0f 57 c0                                        	xorps  xmm0,xmm0
  8aa436:	56                                              	push   esi
  8aa437:	8b f1                                           	mov    esi,ecx
  8aa439:	8d 46 14                                        	lea    eax,[esi+0x14]
  8aa43c:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
  8aa43f:	c7 46 0c 7c 99 f9 00                            	mov    DWORD PTR [esi+0xc],0xf9997c
  8aa446:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  8aa449:	89 06                                           	mov    DWORD PTR [esi],eax
  8aa44b:	05 48 03 00 00                                  	add    eax,0x348
  8aa450:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  8aa453:	6a 02                                           	push   0x2
  8aa455:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  8aa459:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  8aa45f:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  8aa465:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  8aa46d:	50                                              	push   eax
  8aa46e:	c7 46 0c c8 aa f9 00                            	mov    DWORD PTR [esi+0xc],0xf9aac8
  8aa475:	c7 86 5c 03 00 00 00 00 00 00                   	mov    DWORD PTR [esi+0x35c],0x0
  8aa47f:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  8aa485:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  8aa48b:	e8 00 fb ff ff                                  	call   0x8a9f90
  8aa490:	8b c6                                           	mov    eax,esi
  8aa492:	5e                                              	pop    esi
  8aa493:	83 c4 10                                        	add    esp,0x10
  8aa496:	c3                                              	ret
  8aa497:	cc                                              	int3
  8aa498:	cc                                              	int3
  8aa499:	cc                                              	int3
  8aa49a:	cc                                              	int3
  8aa49b:	cc                                              	int3
  8aa49c:	cc                                              	int3
  8aa49d:	cc                                              	int3
  8aa49e:	cc                                              	int3
  8aa49f:	cc                                              	int3
