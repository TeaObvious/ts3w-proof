# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078a7b0 (ScriptCore.World::World_LightSetColorImpl)
Paired Ghidra pseudocode: 0078A7B0_ScriptCore_World_World_LightSetColorImpl.c
Window: [0x0078a7b0, 0x0078a840) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078a840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078a7b0: 51 56 e8 b9 cd 1a 00 8b 4c 24 10 8b 54 24 0c 51
0078a7c0: 52 8b c8 e8 b8 d7 1a 00 8b f0 85 f6 74 60 57 8d
0078a7d0: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 c0
0078a7e0: 9f 1e 01 52 8b ce e8 75 9a 1a 00 85 c0 74 21 d9
0078a7f0: 44 24 20 83 ec 0c d9 5c 24 08 8b c8 d9 44 24 28
0078a800: d9 5c 24 04 d9 44 24 24 d9 1c 24 e8 80 d9 1b 00
0078a810: 8b c7 83 c9 ff f0 0f c1 08 49 75 11 ba 01 00 00
0078a820: 00 87 17 8b 06 8b 10 6a 01 8b ce ff d2 5f 5e 59
0078a830: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078a7b0 <.text+0x3897b0>:
  78a7b0:	51                                              	push   ecx
  78a7b1:	56                                              	push   esi
  78a7b2:	e8 b9 cd 1a 00                                  	call   0x937570
  78a7b7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78a7bb:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78a7bf:	51                                              	push   ecx
  78a7c0:	52                                              	push   edx
  78a7c1:	8b c8                                           	mov    ecx,eax
  78a7c3:	e8 b8 d7 1a 00                                  	call   0x937f80
  78a7c8:	8b f0                                           	mov    esi,eax
  78a7ca:	85 f6                                           	test   esi,esi
  78a7cc:	74 60                                           	je     0x78a82e
  78a7ce:	57                                              	push   edi
  78a7cf:	8d 7e 04                                        	lea    edi,[esi+0x4]
  78a7d2:	8b c7                                           	mov    eax,edi
  78a7d4:	b9 01 00 00 00                                  	mov    ecx,0x1
  78a7d9:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78a7dd:	8b 15 c0 9f 1e 01                               	mov    edx,DWORD PTR ds:0x11e9fc0
  78a7e3:	52                                              	push   edx
  78a7e4:	8b ce                                           	mov    ecx,esi
  78a7e6:	e8 75 9a 1a 00                                  	call   0x934260
  78a7eb:	85 c0                                           	test   eax,eax
  78a7ed:	74 21                                           	je     0x78a810
  78a7ef:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  78a7f3:	83 ec 0c                                        	sub    esp,0xc
  78a7f6:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78a7fa:	8b c8                                           	mov    ecx,eax
  78a7fc:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  78a800:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78a804:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  78a808:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78a80b:	e8 80 d9 1b 00                                  	call   0x948190
  78a810:	8b c7                                           	mov    eax,edi
  78a812:	83 c9 ff                                        	or     ecx,0xffffffff
  78a815:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78a819:	49                                              	dec    ecx
  78a81a:	75 11                                           	jne    0x78a82d
  78a81c:	ba 01 00 00 00                                  	mov    edx,0x1
  78a821:	87 17                                           	xchg   DWORD PTR [edi],edx
  78a823:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78a825:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78a827:	6a 01                                           	push   0x1
  78a829:	8b ce                                           	mov    ecx,esi
  78a82b:	ff d2                                           	call   edx
  78a82d:	5f                                              	pop    edi
  78a82e:	5e                                              	pop    esi
  78a82f:	59                                              	pop    ecx
  78a830:	c3                                              	ret
  78a831:	cc                                              	int3
  78a832:	cc                                              	int3
  78a833:	cc                                              	int3
  78a834:	cc                                              	int3
  78a835:	cc                                              	int3
  78a836:	cc                                              	int3
  78a837:	cc                                              	int3
  78a838:	cc                                              	int3
  78a839:	cc                                              	int3
  78a83a:	cc                                              	int3
  78a83b:	cc                                              	int3
  78a83c:	cc                                              	int3
  78a83d:	cc                                              	int3
  78a83e:	cc                                              	int3
  78a83f:	cc                                              	int3
