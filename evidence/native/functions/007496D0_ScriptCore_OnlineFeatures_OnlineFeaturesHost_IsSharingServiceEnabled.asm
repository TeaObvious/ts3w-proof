# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007496d0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_IsSharingServiceEnabled)
Paired Ghidra pseudocode: 007496D0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_IsSharingServiceEnabled.c
Window: [0x007496d0, 0x00749770) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00749770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007496d0: 8b 44 24 04 85 c0 75 03 32 c0 c3 56 33 f6 a9 00
007496e0: 00 ff ff 74 08 be 10 00 00 00 c1 e8 10 a9 00 ff
007496f0: 00 00 74 06 83 c6 08 c1 e8 08 a8 f0 74 06 83 c6
00749700: 04 c1 e8 04 a8 0c 74 06 83 c6 02 c1 e8 02 a8 02
00749710: 74 03 83 c6 01 68 08 50 1d 01 89 74 24 0c ff 15
00749720: 2c 61 f9 00 a1 00 50 1d 01 85 c0 74 30 83 78 30
00749730: 02 75 2a 3b 70 1c 73 25 53 8d 4c 24 0c 51 8d 48
00749740: 08 e8 2a fd ff ff 83 78 10 01 68 08 50 1d 01 0f
00749750: 94 c3 ff 15 30 61 f9 00 8a c3 5b 5e c3 68 08 50
00749760: 1d 01 ff 15 30 61 f9 00 32 c0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
007496d0 <.text+0x3486d0>:
  7496d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7496d4:	85 c0                                           	test   eax,eax
  7496d6:	75 03                                           	jne    0x7496db
  7496d8:	32 c0                                           	xor    al,al
  7496da:	c3                                              	ret
  7496db:	56                                              	push   esi
  7496dc:	33 f6                                           	xor    esi,esi
  7496de:	a9 00 00 ff ff                                  	test   eax,0xffff0000
  7496e3:	74 08                                           	je     0x7496ed
  7496e5:	be 10 00 00 00                                  	mov    esi,0x10
  7496ea:	c1 e8 10                                        	shr    eax,0x10
  7496ed:	a9 00 ff 00 00                                  	test   eax,0xff00
  7496f2:	74 06                                           	je     0x7496fa
  7496f4:	83 c6 08                                        	add    esi,0x8
  7496f7:	c1 e8 08                                        	shr    eax,0x8
  7496fa:	a8 f0                                           	test   al,0xf0
  7496fc:	74 06                                           	je     0x749704
  7496fe:	83 c6 04                                        	add    esi,0x4
  749701:	c1 e8 04                                        	shr    eax,0x4
  749704:	a8 0c                                           	test   al,0xc
  749706:	74 06                                           	je     0x74970e
  749708:	83 c6 02                                        	add    esi,0x2
  74970b:	c1 e8 02                                        	shr    eax,0x2
  74970e:	a8 02                                           	test   al,0x2
  749710:	74 03                                           	je     0x749715
  749712:	83 c6 01                                        	add    esi,0x1
  749715:	68 08 50 1d 01                                  	push   0x11d5008
  74971a:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  74971e:	ff 15 2c 61 f9 00                               	call   DWORD PTR ds:0xf9612c
  749724:	a1 00 50 1d 01                                  	mov    eax,ds:0x11d5000
  749729:	85 c0                                           	test   eax,eax
  74972b:	74 30                                           	je     0x74975d
  74972d:	83 78 30 02                                     	cmp    DWORD PTR [eax+0x30],0x2
  749731:	75 2a                                           	jne    0x74975d
  749733:	3b 70 1c                                        	cmp    esi,DWORD PTR [eax+0x1c]
  749736:	73 25                                           	jae    0x74975d
  749738:	53                                              	push   ebx
  749739:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  74973d:	51                                              	push   ecx
  74973e:	8d 48 08                                        	lea    ecx,[eax+0x8]
  749741:	e8 2a fd ff ff                                  	call   0x749470
  749746:	83 78 10 01                                     	cmp    DWORD PTR [eax+0x10],0x1
  74974a:	68 08 50 1d 01                                  	push   0x11d5008
  74974f:	0f 94 c3                                        	sete   bl
  749752:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  749758:	8a c3                                           	mov    al,bl
  74975a:	5b                                              	pop    ebx
  74975b:	5e                                              	pop    esi
  74975c:	c3                                              	ret
  74975d:	68 08 50 1d 01                                  	push   0x11d5008
  749762:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  749768:	32 c0                                           	xor    al,al
  74976a:	5e                                              	pop    esi
  74976b:	c3                                              	ret
  74976c:	cc                                              	int3
  74976d:	cc                                              	int3
  74976e:	cc                                              	int3
  74976f:	cc                                              	int3
