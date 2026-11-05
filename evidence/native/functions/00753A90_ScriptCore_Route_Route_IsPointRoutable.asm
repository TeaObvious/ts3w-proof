# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00753a90 (ScriptCore.Route::Route_IsPointRoutable)
Paired Ghidra pseudocode: 00753A90_ScriptCore_Route_Route_IsPointRoutable.c
Window: [0x00753a90, 0x00753b20) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00753b20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00753a90: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 18 85
00753aa0: c9 53 56 74 68 8b 45 08 50 e8 02 7a ff ff 8b f0
00753ab0: 85 f6 74 59 8b 16 8b 42 10 8b ce ff d0 f3 0f 10
00753ac0: 4d 14 f3 0f 10 45 0c f3 0f 11 4c 24 18 f3 0f 10
00753ad0: 4d 10 8d 4c 24 10 f3 0f 11 44 24 1c f3 0f 11 4c
00753ae0: 24 14 f3 0f 11 44 24 10 0f 28 44 24 10 51 8b ce
00753af0: 0f 29 44 24 14 e8 76 ec ff ff 8b 16 8a d8 8b 42
00753b00: 14 8b ce ff d0 8a c3 5e 5b 8b e5 5d c3 5e 32 c0
00753b10: 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00753a90 <.text+0x352a90>:
  753a90:	55                                              	push   ebp
  753a91:	8b ec                                           	mov    ebp,esp
  753a93:	83 e4 f0                                        	and    esp,0xfffffff0
  753a96:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  753a9c:	83 ec 18                                        	sub    esp,0x18
  753a9f:	85 c9                                           	test   ecx,ecx
  753aa1:	53                                              	push   ebx
  753aa2:	56                                              	push   esi
  753aa3:	74 68                                           	je     0x753b0d
  753aa5:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  753aa8:	50                                              	push   eax
  753aa9:	e8 02 7a ff ff                                  	call   0x74b4b0
  753aae:	8b f0                                           	mov    esi,eax
  753ab0:	85 f6                                           	test   esi,esi
  753ab2:	74 59                                           	je     0x753b0d
  753ab4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  753ab6:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  753ab9:	8b ce                                           	mov    ecx,esi
  753abb:	ff d0                                           	call   eax
  753abd:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  753ac2:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  753ac7:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  753acd:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  753ad2:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  753ad6:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  753adc:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  753ae2:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  753ae8:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  753aed:	51                                              	push   ecx
  753aee:	8b ce                                           	mov    ecx,esi
  753af0:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
  753af5:	e8 76 ec ff ff                                  	call   0x752770
  753afa:	8b 16                                           	mov    edx,DWORD PTR [esi]
  753afc:	8a d8                                           	mov    bl,al
  753afe:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  753b01:	8b ce                                           	mov    ecx,esi
  753b03:	ff d0                                           	call   eax
  753b05:	8a c3                                           	mov    al,bl
  753b07:	5e                                              	pop    esi
  753b08:	5b                                              	pop    ebx
  753b09:	8b e5                                           	mov    esp,ebp
  753b0b:	5d                                              	pop    ebp
  753b0c:	c3                                              	ret
  753b0d:	5e                                              	pop    esi
  753b0e:	32 c0                                           	xor    al,al
  753b10:	5b                                              	pop    ebx
  753b11:	8b e5                                           	mov    esp,ebp
  753b13:	5d                                              	pop    ebp
  753b14:	c3                                              	ret
  753b15:	cc                                              	int3
  753b16:	cc                                              	int3
  753b17:	cc                                              	int3
  753b18:	cc                                              	int3
  753b19:	cc                                              	int3
  753b1a:	cc                                              	int3
  753b1b:	cc                                              	int3
  753b1c:	cc                                              	int3
  753b1d:	cc                                              	int3
  753b1e:	cc                                              	int3
  753b1f:	cc                                              	int3
