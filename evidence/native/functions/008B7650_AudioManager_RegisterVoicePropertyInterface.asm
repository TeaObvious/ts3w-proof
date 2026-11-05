# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008b7650 (AudioManager_RegisterVoicePropertyInterface)
Paired Ghidra pseudocode: 008B7650_AudioManager_RegisterVoicePropertyInterface.c
Window: [0x008b7650, 0x008b76e0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x008b76e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008b7650: 83 ec 14 56 8b 74 24 1c 85 f6 57 8b f9 75 0a 5f
008b7660: 32 c0 5e 83 c4 14 c2 04 00 8b 06 8b 50 08 8b ce
008b7670: ff d2 89 44 24 20 8d 44 24 20 50 8d 4c 24 0c 81
008b7680: c7 3c 03 00 00 51 8b cf e8 23 43 1a 00 8b 57 08
008b7690: 8b 47 04 8b 4c 24 08 3b 0c 90 75 c3 8b 16 8b 42
008b76a0: 08 8b ce ff d0 c6 44 24 20 00 8b 4c 24 20 51 8d
008b76b0: 54 24 0c 89 44 24 0c 52 8d 44 24 18 50 8b cf 89
008b76c0: 74 24 18 e8 28 7d ba ff 5f b0 01 5e 83 c4 14 c2
008b76d0: 04 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
008b7650 <.text+0x4b6650>:
  8b7650:	83 ec 14                                        	sub    esp,0x14
  8b7653:	56                                              	push   esi
  8b7654:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  8b7658:	85 f6                                           	test   esi,esi
  8b765a:	57                                              	push   edi
  8b765b:	8b f9                                           	mov    edi,ecx
  8b765d:	75 0a                                           	jne    0x8b7669
  8b765f:	5f                                              	pop    edi
  8b7660:	32 c0                                           	xor    al,al
  8b7662:	5e                                              	pop    esi
  8b7663:	83 c4 14                                        	add    esp,0x14
  8b7666:	c2 04 00                                        	ret    0x4
  8b7669:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8b766b:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  8b766e:	8b ce                                           	mov    ecx,esi
  8b7670:	ff d2                                           	call   edx
  8b7672:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  8b7676:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  8b767a:	50                                              	push   eax
  8b767b:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  8b767f:	81 c7 3c 03 00 00                               	add    edi,0x33c
  8b7685:	51                                              	push   ecx
  8b7686:	8b cf                                           	mov    ecx,edi
  8b7688:	e8 23 43 1a 00                                  	call   0xa5b9b0
  8b768d:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
  8b7690:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
  8b7693:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  8b7697:	3b 0c 90                                        	cmp    ecx,DWORD PTR [eax+edx*4]
  8b769a:	75 c3                                           	jne    0x8b765f
  8b769c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8b769e:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  8b76a1:	8b ce                                           	mov    ecx,esi
  8b76a3:	ff d0                                           	call   eax
  8b76a5:	c6 44 24 20 00                                  	mov    BYTE PTR [esp+0x20],0x0
  8b76aa:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  8b76ae:	51                                              	push   ecx
  8b76af:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  8b76b3:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  8b76b7:	52                                              	push   edx
  8b76b8:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  8b76bc:	50                                              	push   eax
  8b76bd:	8b cf                                           	mov    ecx,edi
  8b76bf:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  8b76c3:	e8 28 7d ba ff                                  	call   0x45f3f0
  8b76c8:	5f                                              	pop    edi
  8b76c9:	b0 01                                           	mov    al,0x1
  8b76cb:	5e                                              	pop    esi
  8b76cc:	83 c4 14                                        	add    esp,0x14
  8b76cf:	c2 04 00                                        	ret    0x4
  8b76d2:	cc                                              	int3
  8b76d3:	cc                                              	int3
  8b76d4:	cc                                              	int3
  8b76d5:	cc                                              	int3
  8b76d6:	cc                                              	int3
  8b76d7:	cc                                              	int3
  8b76d8:	cc                                              	int3
  8b76d9:	cc                                              	int3
  8b76da:	cc                                              	int3
  8b76db:	cc                                              	int3
  8b76dc:	cc                                              	int3
  8b76dd:	cc                                              	int3
  8b76de:	cc                                              	int3
  8b76df:	cc                                              	int3
