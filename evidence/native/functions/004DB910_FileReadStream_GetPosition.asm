# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004db910 (FileReadStream_GetPosition)
Full Ghidra function-body envelope: 0x004db910..0x004db994 (exclusive end)
Ghidra body ranges: [[004db910, 004db993]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004db910 <.text+0xda910>:
  4db910:	83 ec 08                                        	sub    esp,0x8
  4db913:	56                                              	push   esi
  4db914:	6a 01                                           	push   0x1
  4db916:	8b f1                                           	mov    esi,ecx
  4db918:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  4db91c:	52                                              	push   edx
  4db91d:	33 c9                                           	xor    ecx,ecx
  4db91f:	33 c0                                           	xor    eax,eax
  4db921:	51                                              	push   ecx
  4db922:	50                                              	push   eax
  4db923:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  4db927:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  4db92a:	50                                              	push   eax
  4db92b:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  4db92f:	ff 15 90 63 f9 00                               	call   DWORD PTR ds:0xf96390
  4db935:	85 c0                                           	test   eax,eax
  4db937:	74 39                                           	je     0x4db972
  4db939:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  4db93d:	85 c0                                           	test   eax,eax
  4db93f:	74 48                                           	je     0x4db989
  4db941:	83 f8 02                                        	cmp    eax,0x2
  4db944:	75 36                                           	jne    0x4db97c
  4db946:	8b 16                                           	mov    edx,DWORD PTR [esi]
  4db948:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  4db94b:	8b ce                                           	mov    ecx,esi
  4db94d:	ff d0                                           	call   eax
  4db94f:	8b c8                                           	mov    ecx,eax
  4db951:	83 f9 ff                                        	cmp    ecx,0xffffffff
  4db954:	74 14                                           	je     0x4db96a
  4db956:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  4db95a:	2b c1                                           	sub    eax,ecx
  4db95c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  4db960:	83 d9 00                                        	sbb    ecx,0x0
  4db963:	5e                                              	pop    esi
  4db964:	83 c4 08                                        	add    esp,0x8
  4db967:	c2 04 00                                        	ret    0x4
  4db96a:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  4db972:	83 c8 ff                                        	or     eax,0xffffffff
  4db975:	5e                                              	pop    esi
  4db976:	83 c4 08                                        	add    esp,0x8
  4db979:	c2 04 00                                        	ret    0x4
  4db97c:	33 c0                                           	xor    eax,eax
  4db97e:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  4db982:	5e                                              	pop    esi
  4db983:	83 c4 08                                        	add    esp,0x8
  4db986:	c2 04 00                                        	ret    0x4
  4db989:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  4db98d:	5e                                              	pop    esi
  4db98e:	83 c4 08                                        	add    esp,0x8
  4db991:	c2 04 00                                        	ret    0x4
