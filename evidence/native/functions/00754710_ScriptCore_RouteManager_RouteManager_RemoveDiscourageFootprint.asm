# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00754710 (ScriptCore.RouteManager::RouteManager_RemoveDiscourageFootprint)
Paired Ghidra pseudocode: 00754710_ScriptCore_RouteManager_RouteManager_RemoveDiscourageFootprint.c
Window: [0x00754710, 0x007547a0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x007547a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00754710: 51 56 e8 79 4c 01 00 85 c0 74 77 e8 50 2e 1e 00
00754720: 85 c0 74 6e 8b 4c 24 10 8b 54 24 0c 51 52 8b c8
00754730: e8 4b 38 1e 00 8b f0 85 f6 89 74 24 04 74 0c 8d
00754740: 46 04 b9 01 00 00 00 f0 0f c1 08 e8 a0 45 0d 00
00754750: 85 f6 74 3e 85 c0 74 1a 53 56 8b c8 e8 3f fc 0d
00754760: 00 8d 4c 24 08 8a d8 e8 74 1b ff ff 8a c3 5b 5e
00754770: 59 c3 8d 46 04 8b d0 83 c9 ff f0 0f c1 0a 49 75
00754780: 11 ba 01 00 00 00 87 10 8b 06 8b 10 6a 01 8b ce
00754790: ff d2 32 c0 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00754710 <.text+0x353710>:
  754710:	51                                              	push   ecx
  754711:	56                                              	push   esi
  754712:	e8 79 4c 01 00                                  	call   0x769390
  754717:	85 c0                                           	test   eax,eax
  754719:	74 77                                           	je     0x754792
  75471b:	e8 50 2e 1e 00                                  	call   0x937570
  754720:	85 c0                                           	test   eax,eax
  754722:	74 6e                                           	je     0x754792
  754724:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  754728:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  75472c:	51                                              	push   ecx
  75472d:	52                                              	push   edx
  75472e:	8b c8                                           	mov    ecx,eax
  754730:	e8 4b 38 1e 00                                  	call   0x937f80
  754735:	8b f0                                           	mov    esi,eax
  754737:	85 f6                                           	test   esi,esi
  754739:	89 74 24 04                                     	mov    DWORD PTR [esp+0x4],esi
  75473d:	74 0c                                           	je     0x75474b
  75473f:	8d 46 04                                        	lea    eax,[esi+0x4]
  754742:	b9 01 00 00 00                                  	mov    ecx,0x1
  754747:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  75474b:	e8 a0 45 0d 00                                  	call   0x828cf0
  754750:	85 f6                                           	test   esi,esi
  754752:	74 3e                                           	je     0x754792
  754754:	85 c0                                           	test   eax,eax
  754756:	74 1a                                           	je     0x754772
  754758:	53                                              	push   ebx
  754759:	56                                              	push   esi
  75475a:	8b c8                                           	mov    ecx,eax
  75475c:	e8 3f fc 0d 00                                  	call   0x8343a0
  754761:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  754765:	8a d8                                           	mov    bl,al
  754767:	e8 74 1b ff ff                                  	call   0x7462e0
  75476c:	8a c3                                           	mov    al,bl
  75476e:	5b                                              	pop    ebx
  75476f:	5e                                              	pop    esi
  754770:	59                                              	pop    ecx
  754771:	c3                                              	ret
  754772:	8d 46 04                                        	lea    eax,[esi+0x4]
  754775:	8b d0                                           	mov    edx,eax
  754777:	83 c9 ff                                        	or     ecx,0xffffffff
  75477a:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  75477e:	49                                              	dec    ecx
  75477f:	75 11                                           	jne    0x754792
  754781:	ba 01 00 00 00                                  	mov    edx,0x1
  754786:	87 10                                           	xchg   DWORD PTR [eax],edx
  754788:	8b 06                                           	mov    eax,DWORD PTR [esi]
  75478a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  75478c:	6a 01                                           	push   0x1
  75478e:	8b ce                                           	mov    ecx,esi
  754790:	ff d2                                           	call   edx
  754792:	32 c0                                           	xor    al,al
  754794:	5e                                              	pop    esi
  754795:	59                                              	pop    ecx
  754796:	c3                                              	ret
  754797:	cc                                              	int3
  754798:	cc                                              	int3
  754799:	cc                                              	int3
  75479a:	cc                                              	int3
  75479b:	cc                                              	int3
  75479c:	cc                                              	int3
  75479d:	cc                                              	int3
  75479e:	cc                                              	int3
  75479f:	cc                                              	int3
