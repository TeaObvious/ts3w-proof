# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785710 (ScriptCore.World::World_CaptureSceneForMemoryOrPicture)
Paired Ghidra pseudocode: 00785710_ScriptCore_World_World_CaptureSceneForMemoryOrPicture.c
Window: [0x00785710, 0x007857a0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x007857a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785710: 83 ec 08 56 57 e8 06 aa 25 00 8b f8 e8 6f 3c fe
00785720: ff 85 ff 8b f0 74 6c 85 f6 74 68 8b 06 8b 90 18
00785730: 01 00 00 53 8b ce ff d2 8b 4c 24 34 8b 1e 6a 00
00785740: 51 6a ff 52 89 54 24 20 8b 93 20 01 00 00 50 8b
00785750: ce 89 44 24 20 ff d2 8b 4c 24 30 8b 54 24 2c 8d
00785760: 44 24 0c 50 8b 44 24 2c 51 8b 4c 24 2c 52 8b 54
00785770: 24 2c 50 8b 44 24 2c 51 8b 4c 24 2c 52 50 51 8b
00785780: cf e8 fa 6d 25 00 8b 16 8b 82 1c 01 00 00 8b ce
00785790: ff d0 5b 5f 5e 83 c4 08 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785710 <.text+0x384710>:
  785710:	83 ec 08                                        	sub    esp,0x8
  785713:	56                                              	push   esi
  785714:	57                                              	push   edi
  785715:	e8 06 aa 25 00                                  	call   0x9e0120
  78571a:	8b f8                                           	mov    edi,eax
  78571c:	e8 6f 3c fe ff                                  	call   0x769390
  785721:	85 ff                                           	test   edi,edi
  785723:	8b f0                                           	mov    esi,eax
  785725:	74 6c                                           	je     0x785793
  785727:	85 f6                                           	test   esi,esi
  785729:	74 68                                           	je     0x785793
  78572b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78572d:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  785733:	53                                              	push   ebx
  785734:	8b ce                                           	mov    ecx,esi
  785736:	ff d2                                           	call   edx
  785738:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  78573c:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
  78573e:	6a 00                                           	push   0x0
  785740:	51                                              	push   ecx
  785741:	6a ff                                           	push   0xffffffff
  785743:	52                                              	push   edx
  785744:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  785748:	8b 93 20 01 00 00                               	mov    edx,DWORD PTR [ebx+0x120]
  78574e:	50                                              	push   eax
  78574f:	8b ce                                           	mov    ecx,esi
  785751:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  785755:	ff d2                                           	call   edx
  785757:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  78575b:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  78575f:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  785763:	50                                              	push   eax
  785764:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  785768:	51                                              	push   ecx
  785769:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  78576d:	52                                              	push   edx
  78576e:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  785772:	50                                              	push   eax
  785773:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  785777:	51                                              	push   ecx
  785778:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  78577c:	52                                              	push   edx
  78577d:	50                                              	push   eax
  78577e:	51                                              	push   ecx
  78577f:	8b cf                                           	mov    ecx,edi
  785781:	e8 fa 6d 25 00                                  	call   0x9dc580
  785786:	8b 16                                           	mov    edx,DWORD PTR [esi]
  785788:	8b 82 1c 01 00 00                               	mov    eax,DWORD PTR [edx+0x11c]
  78578e:	8b ce                                           	mov    ecx,esi
  785790:	ff d0                                           	call   eax
  785792:	5b                                              	pop    ebx
  785793:	5f                                              	pop    edi
  785794:	5e                                              	pop    esi
  785795:	83 c4 08                                        	add    esp,0x8
  785798:	c3                                              	ret
  785799:	cc                                              	int3
  78579a:	cc                                              	int3
  78579b:	cc                                              	int3
  78579c:	cc                                              	int3
  78579d:	cc                                              	int3
  78579e:	cc                                              	int3
  78579f:	cc                                              	int3
