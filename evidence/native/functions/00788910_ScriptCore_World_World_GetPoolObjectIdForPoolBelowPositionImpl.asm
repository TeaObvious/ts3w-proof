# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788910 (ScriptCore.World::World_GetPoolObjectIdForPoolBelowPositionImpl)
Paired Ghidra pseudocode: 00788910_ScriptCore_World_World_GetPoolObjectIdForPoolBelowPositionImpl.c
Window: [0x00788910, 0x00788990) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788910: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 10 85
00788920: c9 74 61 d9 45 10 83 ec 08 d9 5c 24 04 d9 45 08
00788930: d9 1c 24 e8 98 fe 4d 00 85 c0 74 48 8b 80 bc 02
00788940: 00 00 85 c0 74 3e f3 0f 10 4d 10 f3 0f 10 45 08
00788950: f3 0f 11 4c 24 08 f3 0f 10 4d 0c 8d 0c 24 f3 0f
00788960: 11 44 24 0c f3 0f 11 4c 24 04 f3 0f 11 04 24 0f
00788970: 28 04 24 51 8b c8 0f 29 44 24 04 e8 d0 04 3e 00
00788980: 8b e5 5d c3 33 c0 33 d2 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
00788910 <.text+0x387910>:
  788910:	55                                              	push   ebp
  788911:	8b ec                                           	mov    ebp,esp
  788913:	83 e4 f0                                        	and    esp,0xfffffff0
  788916:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78891c:	83 ec 10                                        	sub    esp,0x10
  78891f:	85 c9                                           	test   ecx,ecx
  788921:	74 61                                           	je     0x788984
  788923:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
  788926:	83 ec 08                                        	sub    esp,0x8
  788929:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78892d:	d9 45 08                                        	fld    DWORD PTR [ebp+0x8]
  788930:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  788933:	e8 98 fe 4d 00                                  	call   0xc687d0
  788938:	85 c0                                           	test   eax,eax
  78893a:	74 48                                           	je     0x788984
  78893c:	8b 80 bc 02 00 00                               	mov    eax,DWORD PTR [eax+0x2bc]
  788942:	85 c0                                           	test   eax,eax
  788944:	74 3e                                           	je     0x788984
  788946:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  78894b:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  788950:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  788956:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  78895b:	8d 0c 24                                        	lea    ecx,[esp]
  78895e:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  788964:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  78896a:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  78896f:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
  788973:	51                                              	push   ecx
  788974:	8b c8                                           	mov    ecx,eax
  788976:	0f 29 44 24 04                                  	movaps XMMWORD PTR [esp+0x4],xmm0
  78897b:	e8 d0 04 3e 00                                  	call   0xb68e50
  788980:	8b e5                                           	mov    esp,ebp
  788982:	5d                                              	pop    ebp
  788983:	c3                                              	ret
  788984:	33 c0                                           	xor    eax,eax
  788986:	33 d2                                           	xor    edx,edx
  788988:	8b e5                                           	mov    esp,ebp
  78898a:	5d                                              	pop    ebp
  78898b:	c3                                              	ret
  78898c:	cc                                              	int3
  78898d:	cc                                              	int3
  78898e:	cc                                              	int3
  78898f:	cc                                              	int3
