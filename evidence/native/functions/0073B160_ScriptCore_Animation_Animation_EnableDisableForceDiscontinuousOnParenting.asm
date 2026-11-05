# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073b160 (ScriptCore.Animation::Animation_EnableDisableForceDiscontinuousOnParenting)
Paired Ghidra pseudocode: 0073B160_ScriptCore_Animation_Animation_EnableDisableForceDiscontinuousOnParenting.c
Window: [0x0073b160, 0x0073b1e0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073b1e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073b160: 51 56 e8 09 c4 1f 00 8b 4c 24 10 8b 54 24 0c 51
0073b170: 52 8b c8 e8 08 ce 1f 00 8b f0 85 f6 74 56 57 8d
0073b180: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 84
0073b190: d4 1d 01 52 8b ce e8 c5 90 1f 00 85 c0 74 17 80
0073b1a0: 7c 24 18 00 74 09 81 60 2c ff ff fd ff eb 07 81
0073b1b0: 48 2c 00 00 02 00 8b c7 83 c9 ff f0 0f c1 08 49
0073b1c0: 75 11 ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b
0073b1d0: ce ff d2 5f 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073b160 <.text+0x33a160>:
  73b160:	51                                              	push   ecx
  73b161:	56                                              	push   esi
  73b162:	e8 09 c4 1f 00                                  	call   0x937570
  73b167:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73b16b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  73b16f:	51                                              	push   ecx
  73b170:	52                                              	push   edx
  73b171:	8b c8                                           	mov    ecx,eax
  73b173:	e8 08 ce 1f 00                                  	call   0x937f80
  73b178:	8b f0                                           	mov    esi,eax
  73b17a:	85 f6                                           	test   esi,esi
  73b17c:	74 56                                           	je     0x73b1d4
  73b17e:	57                                              	push   edi
  73b17f:	8d 7e 04                                        	lea    edi,[esi+0x4]
  73b182:	8b c7                                           	mov    eax,edi
  73b184:	b9 01 00 00 00                                  	mov    ecx,0x1
  73b189:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73b18d:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  73b193:	52                                              	push   edx
  73b194:	8b ce                                           	mov    ecx,esi
  73b196:	e8 c5 90 1f 00                                  	call   0x934260
  73b19b:	85 c0                                           	test   eax,eax
  73b19d:	74 17                                           	je     0x73b1b6
  73b19f:	80 7c 24 18 00                                  	cmp    BYTE PTR [esp+0x18],0x0
  73b1a4:	74 09                                           	je     0x73b1af
  73b1a6:	81 60 2c ff ff fd ff                            	and    DWORD PTR [eax+0x2c],0xfffdffff
  73b1ad:	eb 07                                           	jmp    0x73b1b6
  73b1af:	81 48 2c 00 00 02 00                            	or     DWORD PTR [eax+0x2c],0x20000
  73b1b6:	8b c7                                           	mov    eax,edi
  73b1b8:	83 c9 ff                                        	or     ecx,0xffffffff
  73b1bb:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73b1bf:	49                                              	dec    ecx
  73b1c0:	75 11                                           	jne    0x73b1d3
  73b1c2:	ba 01 00 00 00                                  	mov    edx,0x1
  73b1c7:	87 17                                           	xchg   DWORD PTR [edi],edx
  73b1c9:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73b1cb:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73b1cd:	6a 01                                           	push   0x1
  73b1cf:	8b ce                                           	mov    ecx,esi
  73b1d1:	ff d2                                           	call   edx
  73b1d3:	5f                                              	pop    edi
  73b1d4:	5e                                              	pop    esi
  73b1d5:	59                                              	pop    ecx
  73b1d6:	c3                                              	ret
  73b1d7:	cc                                              	int3
  73b1d8:	cc                                              	int3
  73b1d9:	cc                                              	int3
  73b1da:	cc                                              	int3
  73b1db:	cc                                              	int3
  73b1dc:	cc                                              	int3
  73b1dd:	cc                                              	int3
  73b1de:	cc                                              	int3
  73b1df:	cc                                              	int3
