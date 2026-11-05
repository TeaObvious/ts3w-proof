# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a91f0 (ScriptCore.CASUtils::CASUtils_SimOutfitGetBlendInfoImpl)
Paired Ghidra pseudocode: 005A91F0_ScriptCore_CASUtils_CASUtils_SimOutfitGetBlendInfoImpl.c
Window: [0x005a91f0, 0x005a9290) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a9290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a91f0: 33 c0 56 8b 74 24 08 89 06 89 46 04 89 46 08 89
005a9200: 46 0c 89 46 10 57 8b 7c 24 10 89 46 14 8b c7 25
005a9210: 00 00 00 ff 3d 00 00 00 35 75 67 e8 70 01 1c 00
005a9220: 8b 10 8b c8 8b 82 cc 00 00 00 57 ff d0 8b c8 85
005a9230: c9 74 4f 8b 91 bc 02 00 00 2b 91 b8 02 00 00 b8
005a9240: ab aa aa 2a f7 ea 8b 44 24 14 c1 fa 02 8b fa c1
005a9250: ef 1f 03 fa 3b f8 76 2a 8d 14 40 8b 81 b8 02 00
005a9260: 00 8b 0c d0 d9 44 d0 10 8d 04 d0 d9 5e 10 8b 50
005a9270: 04 89 4e 08 8b 48 0c 89 56 0c 8b 50 08 89 4e 04
005a9280: 89 16 5f 8b c6 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a91f0 <.text+0x1a81f0>:
  5a91f0:	33 c0                                           	xor    eax,eax
  5a91f2:	56                                              	push   esi
  5a91f3:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a91f7:	89 06                                           	mov    DWORD PTR [esi],eax
  5a91f9:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5a91fc:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a91ff:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  5a9202:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
  5a9205:	57                                              	push   edi
  5a9206:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  5a920a:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
  5a920d:	8b c7                                           	mov    eax,edi
  5a920f:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a9214:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a9219:	75 67                                           	jne    0x5a9282
  5a921b:	e8 70 01 1c 00                                  	call   0x769390
  5a9220:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a9222:	8b c8                                           	mov    ecx,eax
  5a9224:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a922a:	57                                              	push   edi
  5a922b:	ff d0                                           	call   eax
  5a922d:	8b c8                                           	mov    ecx,eax
  5a922f:	85 c9                                           	test   ecx,ecx
  5a9231:	74 4f                                           	je     0x5a9282
  5a9233:	8b 91 bc 02 00 00                               	mov    edx,DWORD PTR [ecx+0x2bc]
  5a9239:	2b 91 b8 02 00 00                               	sub    edx,DWORD PTR [ecx+0x2b8]
  5a923f:	b8 ab aa aa 2a                                  	mov    eax,0x2aaaaaab
  5a9244:	f7 ea                                           	imul   edx
  5a9246:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  5a924a:	c1 fa 02                                        	sar    edx,0x2
  5a924d:	8b fa                                           	mov    edi,edx
  5a924f:	c1 ef 1f                                        	shr    edi,0x1f
  5a9252:	03 fa                                           	add    edi,edx
  5a9254:	3b f8                                           	cmp    edi,eax
  5a9256:	76 2a                                           	jbe    0x5a9282
  5a9258:	8d 14 40                                        	lea    edx,[eax+eax*2]
  5a925b:	8b 81 b8 02 00 00                               	mov    eax,DWORD PTR [ecx+0x2b8]
  5a9261:	8b 0c d0                                        	mov    ecx,DWORD PTR [eax+edx*8]
  5a9264:	d9 44 d0 10                                     	fld    DWORD PTR [eax+edx*8+0x10]
  5a9268:	8d 04 d0                                        	lea    eax,[eax+edx*8]
  5a926b:	d9 5e 10                                        	fstp   DWORD PTR [esi+0x10]
  5a926e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a9271:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
  5a9274:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  5a9277:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  5a927a:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  5a927d:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  5a9280:	89 16                                           	mov    DWORD PTR [esi],edx
  5a9282:	5f                                              	pop    edi
  5a9283:	8b c6                                           	mov    eax,esi
  5a9285:	5e                                              	pop    esi
  5a9286:	c3                                              	ret
  5a9287:	cc                                              	int3
  5a9288:	cc                                              	int3
  5a9289:	cc                                              	int3
  5a928a:	cc                                              	int3
  5a928b:	cc                                              	int3
  5a928c:	cc                                              	int3
  5a928d:	cc                                              	int3
  5a928e:	cc                                              	int3
  5a928f:	cc                                              	int3
