# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007857f0 (ScriptCore.World::World_CaptureMeshForSculpture)
Paired Ghidra pseudocode: 007857F0_ScriptCore_World_World_CaptureMeshForSculpture.c
Window: [0x007857f0, 0x00785860) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007857f0: 83 ec 08 56 57 e8 76 41 f8 ff 8b f8 e8 8f 3b fe
00785800: ff 85 ff 8b f0 74 53 85 f6 74 4f 8b 06 8b 90 18
00785810: 01 00 00 53 8b ce ff d2 8b 4c 24 20 8b 1e 6a 00
00785820: 51 6a ff 52 89 54 24 20 8b 93 20 01 00 00 50 8b
00785830: ce 89 44 24 20 ff d2 8b 4c 24 1c 8b 54 24 18 8d
00785840: 44 24 0c 50 51 52 8b cf e8 c3 52 f8 ff 8b 06 8b
00785850: 90 1c 01 00 00 8b ce ff d2 5b 5f 5e 83 c4 08 c3

LINEAR DISASSEMBLY
007857f0 <.text+0x3847f0>:
  7857f0:	83 ec 08                                        	sub    esp,0x8
  7857f3:	56                                              	push   esi
  7857f4:	57                                              	push   edi
  7857f5:	e8 76 41 f8 ff                                  	call   0x709970
  7857fa:	8b f8                                           	mov    edi,eax
  7857fc:	e8 8f 3b fe ff                                  	call   0x769390
  785801:	85 ff                                           	test   edi,edi
  785803:	8b f0                                           	mov    esi,eax
  785805:	74 53                                           	je     0x78585a
  785807:	85 f6                                           	test   esi,esi
  785809:	74 4f                                           	je     0x78585a
  78580b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78580d:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  785813:	53                                              	push   ebx
  785814:	8b ce                                           	mov    ecx,esi
  785816:	ff d2                                           	call   edx
  785818:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  78581c:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
  78581e:	6a 00                                           	push   0x0
  785820:	51                                              	push   ecx
  785821:	6a ff                                           	push   0xffffffff
  785823:	52                                              	push   edx
  785824:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  785828:	8b 93 20 01 00 00                               	mov    edx,DWORD PTR [ebx+0x120]
  78582e:	50                                              	push   eax
  78582f:	8b ce                                           	mov    ecx,esi
  785831:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  785835:	ff d2                                           	call   edx
  785837:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  78583b:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  78583f:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  785843:	50                                              	push   eax
  785844:	51                                              	push   ecx
  785845:	52                                              	push   edx
  785846:	8b cf                                           	mov    ecx,edi
  785848:	e8 c3 52 f8 ff                                  	call   0x70ab10
  78584d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78584f:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  785855:	8b ce                                           	mov    ecx,esi
  785857:	ff d2                                           	call   edx
  785859:	5b                                              	pop    ebx
  78585a:	5f                                              	pop    edi
  78585b:	5e                                              	pop    esi
  78585c:	83 c4 08                                        	add    esp,0x8
  78585f:	c3                                              	ret
