# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102426c0 (CAW_WorldLoadFromWidePath)
Paired Ghidra pseudocode: 102426C0_CAW_WorldLoadFromWidePath.c
Window: [0x102426c0, 0x10242780) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x10242780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102426c0: 56 8b 74 24 08 85 f6 57 8b f9 75 07 5f 32 c0 5e
102426d0: c2 04 00 66 83 3e 00 74 f3 53 32 db c7 87 b4 01
102426e0: 00 00 00 00 00 00 e8 75 5d eb ff 85 c0 74 09 6a
102426f0: 00 8b c8 e8 e8 64 eb ff 66 83 3e 00 8b c6 74 09
10242700: 83 c0 02 66 83 38 00 75 f7 2b c6 d1 f8 55 8d 04
10242710: 46 50 56 8d 8f f0 00 00 00 e8 a2 d1 dd ff 8b cf
10242720: e8 ab 1b ff ff 6a 06 6a 01 8d af 80 00 00 00 55
10242730: 56 e8 9a 50 ff ff 83 c4 10 84 c0 74 36 b9 f8 01
10242740: c7 10 e8 09 9c dc ff 8b 6d 00 6a 00 55 68 d0 1c
10242750: 24 10 57 6a 01 e8 66 65 ff ff 8a d8 83 c4 14 84
10242760: db 75 10 8b cf e8 b6 d7 ff ff 5d 5b 5f 32 c0 5e
10242770: c2 04 00 5d 8a c3 5b 5f 5e c2 04 00 cc cc cc cc

LINEAR DISASSEMBLY
102426c0 <.text+0x2416c0>:
102426c0:	56                                              	push   esi
102426c1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
102426c5:	85 f6                                           	test   esi,esi
102426c7:	57                                              	push   edi
102426c8:	8b f9                                           	mov    edi,ecx
102426ca:	75 07                                           	jne    0x102426d3
102426cc:	5f                                              	pop    edi
102426cd:	32 c0                                           	xor    al,al
102426cf:	5e                                              	pop    esi
102426d0:	c2 04 00                                        	ret    0x4
102426d3:	66 83 3e 00                                     	cmp    WORD PTR [esi],0x0
102426d7:	74 f3                                           	je     0x102426cc
102426d9:	53                                              	push   ebx
102426da:	32 db                                           	xor    bl,bl
102426dc:	c7 87 b4 01 00 00 00 00 00 00                   	mov    DWORD PTR [edi+0x1b4],0x0
102426e6:	e8 75 5d eb ff                                  	call   0x100f8460
102426eb:	85 c0                                           	test   eax,eax
102426ed:	74 09                                           	je     0x102426f8
102426ef:	6a 00                                           	push   0x0
102426f1:	8b c8                                           	mov    ecx,eax
102426f3:	e8 e8 64 eb ff                                  	call   0x100f8be0
102426f8:	66 83 3e 00                                     	cmp    WORD PTR [esi],0x0
102426fc:	8b c6                                           	mov    eax,esi
102426fe:	74 09                                           	je     0x10242709
10242700:	83 c0 02                                        	add    eax,0x2
10242703:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
10242707:	75 f7                                           	jne    0x10242700
10242709:	2b c6                                           	sub    eax,esi
1024270b:	d1 f8                                           	sar    eax,1
1024270d:	55                                              	push   ebp
1024270e:	8d 04 46                                        	lea    eax,[esi+eax*2]
10242711:	50                                              	push   eax
10242712:	56                                              	push   esi
10242713:	8d 8f f0 00 00 00                               	lea    ecx,[edi+0xf0]
10242719:	e8 a2 d1 dd ff                                  	call   0x1001f8c0
1024271e:	8b cf                                           	mov    ecx,edi
10242720:	e8 ab 1b ff ff                                  	call   0x102342d0
10242725:	6a 06                                           	push   0x6
10242727:	6a 01                                           	push   0x1
10242729:	8d af 80 00 00 00                               	lea    ebp,[edi+0x80]
1024272f:	55                                              	push   ebp
10242730:	56                                              	push   esi
10242731:	e8 9a 50 ff ff                                  	call   0x102377d0
10242736:	83 c4 10                                        	add    esp,0x10
10242739:	84 c0                                           	test   al,al
1024273b:	74 36                                           	je     0x10242773
1024273d:	b9 f8 01 c7 10                                  	mov    ecx,0x10c701f8
10242742:	e8 09 9c dc ff                                  	call   0x1000c350
10242747:	8b 6d 00                                        	mov    ebp,DWORD PTR [ebp+0x0]
1024274a:	6a 00                                           	push   0x0
1024274c:	55                                              	push   ebp
1024274d:	68 d0 1c 24 10                                  	push   0x10241cd0
10242752:	57                                              	push   edi
10242753:	6a 01                                           	push   0x1
10242755:	e8 66 65 ff ff                                  	call   0x10238cc0
1024275a:	8a d8                                           	mov    bl,al
1024275c:	83 c4 14                                        	add    esp,0x14
1024275f:	84 db                                           	test   bl,bl
10242761:	75 10                                           	jne    0x10242773
10242763:	8b cf                                           	mov    ecx,edi
10242765:	e8 b6 d7 ff ff                                  	call   0x1023ff20
1024276a:	5d                                              	pop    ebp
1024276b:	5b                                              	pop    ebx
1024276c:	5f                                              	pop    edi
1024276d:	32 c0                                           	xor    al,al
1024276f:	5e                                              	pop    esi
10242770:	c2 04 00                                        	ret    0x4
10242773:	5d                                              	pop    ebp
10242774:	8a c3                                           	mov    al,bl
10242776:	5b                                              	pop    ebx
10242777:	5f                                              	pop    edi
10242778:	5e                                              	pop    esi
10242779:	c2 04 00                                        	ret    0x4
1024277c:	cc                                              	int3
1024277d:	cc                                              	int3
1024277e:	cc                                              	int3
1024277f:	cc                                              	int3
