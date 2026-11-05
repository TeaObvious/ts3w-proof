# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567920 (StreamHost_ReadDouble)
Paired Ghidra pseudocode: 10567920_StreamHost_ReadDouble.c
Window: [0x10567920, 0x105679c0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x105679c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567920: 83 ec 08 56 8b 74 24 10 3b 35 a4 b0 c7 10 75 08
10567930: 8b 0d a8 b0 c7 10 eb 35 8b c6 25 00 00 00 ff 3d
10567940: 00 00 00 60 74 04 33 c9 eb 23 e8 d1 37 ff ff 8b
10567950: 10 8b c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b
10567960: a3 a8 b0 c7 10 89 35 a4 b0 c7 10 8b c8 85 c9 5e
10567970: 75 07 8d 41 fe 83 c4 08 c3 c7 04 24 00 00 00 00
10567980: c7 44 24 04 00 00 00 00 8b 11 8b 52 30 6a 08 8d
10567990: 44 24 04 50 ff d2 83 f8 08 74 12 33 c9 83 f8 ff
105679a0: 0f 95 c1 8d 4c 09 fd 8b c1 83 c4 08 c3 dd 04 24
105679b0: 8b 54 24 10 dd 1a 33 c0 83 c4 08 c3 cc cc cc cc

LINEAR DISASSEMBLY
10567920 <.text+0x566920>:
10567920:	83 ec 08                                        	sub    esp,0x8
10567923:	56                                              	push   esi
10567924:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
10567928:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
1056792e:	75 08                                           	jne    0x10567938
10567930:	8b 0d a8 b0 c7 10                               	mov    ecx,DWORD PTR ds:0x10c7b0a8
10567936:	eb 35                                           	jmp    0x1056796d
10567938:	8b c6                                           	mov    eax,esi
1056793a:	25 00 00 00 ff                                  	and    eax,0xff000000
1056793f:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567944:	74 04                                           	je     0x1056794a
10567946:	33 c9                                           	xor    ecx,ecx
10567948:	eb 23                                           	jmp    0x1056796d
1056794a:	e8 d1 37 ff ff                                  	call   0x1055b120
1056794f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567951:	8b c8                                           	mov    ecx,eax
10567953:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567959:	56                                              	push   esi
1056795a:	ff d0                                           	call   eax
1056795c:	85 c0                                           	test   eax,eax
1056795e:	74 0b                                           	je     0x1056796b
10567960:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10567965:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
1056796b:	8b c8                                           	mov    ecx,eax
1056796d:	85 c9                                           	test   ecx,ecx
1056796f:	5e                                              	pop    esi
10567970:	75 07                                           	jne    0x10567979
10567972:	8d 41 fe                                        	lea    eax,[ecx-0x2]
10567975:	83 c4 08                                        	add    esp,0x8
10567978:	c3                                              	ret
10567979:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
10567980:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
10567988:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1056798a:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
1056798d:	6a 08                                           	push   0x8
1056798f:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10567993:	50                                              	push   eax
10567994:	ff d2                                           	call   edx
10567996:	83 f8 08                                        	cmp    eax,0x8
10567999:	74 12                                           	je     0x105679ad
1056799b:	33 c9                                           	xor    ecx,ecx
1056799d:	83 f8 ff                                        	cmp    eax,0xffffffff
105679a0:	0f 95 c1                                        	setne  cl
105679a3:	8d 4c 09 fd                                     	lea    ecx,[ecx+ecx*1-0x3]
105679a7:	8b c1                                           	mov    eax,ecx
105679a9:	83 c4 08                                        	add    esp,0x8
105679ac:	c3                                              	ret
105679ad:	dd 04 24                                        	fld    QWORD PTR [esp]
105679b0:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105679b4:	dd 1a                                           	fstp   QWORD PTR [edx]
105679b6:	33 c0                                           	xor    eax,eax
105679b8:	83 c4 08                                        	add    esp,0x8
105679bb:	c3                                              	ret
105679bc:	cc                                              	int3
105679bd:	cc                                              	int3
105679be:	cc                                              	int3
105679bf:	cc                                              	int3
