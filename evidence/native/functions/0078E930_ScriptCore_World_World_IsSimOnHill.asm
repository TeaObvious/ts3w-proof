# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e930 (ScriptCore.World::World_IsSimOnHill)
Paired Ghidra pseudocode: 0078E930_ScriptCore_World_World_IsSimOnHill.c
Window: [0x0078e930, 0x0078e9f0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e9f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e930: 55 8b ec 83 e4 f0 83 ec 24 53 56 57 e8 2f 8c 1a
0078e940: 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 30 96 1a 00
0078e950: 8b f0 85 f6 0f 84 8d 00 00 00 8d 7e 04 8b c7 b9
0078e960: 01 00 00 00 f0 0f c1 08 8b 15 58 a1 1e 01 52 8b
0078e970: ce e8 ea 58 1a 00 8b d8 85 db 74 4e 8d 44 24 10
0078e980: 50 8b cb e8 d8 90 1c 00 50 8d 4c 24 24 51 8b cb
0078e990: e8 9b 90 1c 00 50 56 e8 74 43 4e 00 83 c4 0c 84
0078e9a0: c0 0f 94 c3 8b d7 83 c8 ff f0 0f c1 02 48 75 11
0078e9b0: b9 01 00 00 00 87 0f 8b 16 8b 02 6a 01 8b ce ff
0078e9c0: d0 8a c3 5f 5e 5b 8b e5 5d c3 8b cf 83 ca ff f0
0078e9d0: 0f c1 11 4a 75 11 b8 01 00 00 00 87 07 8b 16 8b
0078e9e0: 02 6a 01 8b ce ff d0 5f 5e 32 c0 5b 8b e5 5d c3

LINEAR DISASSEMBLY
0078e930 <.text+0x38d930>:
  78e930:	55                                              	push   ebp
  78e931:	8b ec                                           	mov    ebp,esp
  78e933:	83 e4 f0                                        	and    esp,0xfffffff0
  78e936:	83 ec 24                                        	sub    esp,0x24
  78e939:	53                                              	push   ebx
  78e93a:	56                                              	push   esi
  78e93b:	57                                              	push   edi
  78e93c:	e8 2f 8c 1a 00                                  	call   0x937570
  78e941:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  78e944:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  78e947:	51                                              	push   ecx
  78e948:	52                                              	push   edx
  78e949:	8b c8                                           	mov    ecx,eax
  78e94b:	e8 30 96 1a 00                                  	call   0x937f80
  78e950:	8b f0                                           	mov    esi,eax
  78e952:	85 f6                                           	test   esi,esi
  78e954:	0f 84 8d 00 00 00                               	je     0x78e9e7
  78e95a:	8d 7e 04                                        	lea    edi,[esi+0x4]
  78e95d:	8b c7                                           	mov    eax,edi
  78e95f:	b9 01 00 00 00                                  	mov    ecx,0x1
  78e964:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78e968:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  78e96e:	52                                              	push   edx
  78e96f:	8b ce                                           	mov    ecx,esi
  78e971:	e8 ea 58 1a 00                                  	call   0x934260
  78e976:	8b d8                                           	mov    ebx,eax
  78e978:	85 db                                           	test   ebx,ebx
  78e97a:	74 4e                                           	je     0x78e9ca
  78e97c:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  78e980:	50                                              	push   eax
  78e981:	8b cb                                           	mov    ecx,ebx
  78e983:	e8 d8 90 1c 00                                  	call   0x957a60
  78e988:	50                                              	push   eax
  78e989:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  78e98d:	51                                              	push   ecx
  78e98e:	8b cb                                           	mov    ecx,ebx
  78e990:	e8 9b 90 1c 00                                  	call   0x957a30
  78e995:	50                                              	push   eax
  78e996:	56                                              	push   esi
  78e997:	e8 74 43 4e 00                                  	call   0xc72d10
  78e99c:	83 c4 0c                                        	add    esp,0xc
  78e99f:	84 c0                                           	test   al,al
  78e9a1:	0f 94 c3                                        	sete   bl
  78e9a4:	8b d7                                           	mov    edx,edi
  78e9a6:	83 c8 ff                                        	or     eax,0xffffffff
  78e9a9:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  78e9ad:	48                                              	dec    eax
  78e9ae:	75 11                                           	jne    0x78e9c1
  78e9b0:	b9 01 00 00 00                                  	mov    ecx,0x1
  78e9b5:	87 0f                                           	xchg   DWORD PTR [edi],ecx
  78e9b7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78e9b9:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78e9bb:	6a 01                                           	push   0x1
  78e9bd:	8b ce                                           	mov    ecx,esi
  78e9bf:	ff d0                                           	call   eax
  78e9c1:	8a c3                                           	mov    al,bl
  78e9c3:	5f                                              	pop    edi
  78e9c4:	5e                                              	pop    esi
  78e9c5:	5b                                              	pop    ebx
  78e9c6:	8b e5                                           	mov    esp,ebp
  78e9c8:	5d                                              	pop    ebp
  78e9c9:	c3                                              	ret
  78e9ca:	8b cf                                           	mov    ecx,edi
  78e9cc:	83 ca ff                                        	or     edx,0xffffffff
  78e9cf:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  78e9d3:	4a                                              	dec    edx
  78e9d4:	75 11                                           	jne    0x78e9e7
  78e9d6:	b8 01 00 00 00                                  	mov    eax,0x1
  78e9db:	87 07                                           	xchg   DWORD PTR [edi],eax
  78e9dd:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78e9df:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78e9e1:	6a 01                                           	push   0x1
  78e9e3:	8b ce                                           	mov    ecx,esi
  78e9e5:	ff d0                                           	call   eax
  78e9e7:	5f                                              	pop    edi
  78e9e8:	5e                                              	pop    esi
  78e9e9:	32 c0                                           	xor    al,al
  78e9eb:	5b                                              	pop    ebx
  78e9ec:	8b e5                                           	mov    esp,ebp
  78e9ee:	5d                                              	pop    ebp
  78e9ef:	c3                                              	ret
