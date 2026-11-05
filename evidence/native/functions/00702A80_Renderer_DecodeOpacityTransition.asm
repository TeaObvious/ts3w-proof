# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00702a80 (Renderer_DecodeOpacityTransition)
Full Ghidra function-body envelope: 0x00702a80..0x00702b2d (exclusive end)
Ghidra body ranges: [[00702a80, 00702b2c]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00702a80 <.text+0x301a80>:
  702a80:	83 ec 10             	sub    esp,0x10
  702a83:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  702a87:	0f b6 50 0f          	movzx  edx,BYTE PTR [eax+0xf]
  702a8b:	f3 0f 10 0d 64 e5 fa 00 	movss  xmm1,DWORD PTR ds:0xfae564
  702a93:	f3 0f 2a c2          	cvtsi2ss xmm0,edx
  702a97:	0f b6 50 0b          	movzx  edx,BYTE PTR [eax+0xb]
  702a9b:	f3 0f 59 c1          	mulss  xmm0,xmm1
  702a9f:	f3 0f 2a d2          	cvtsi2ss xmm2,edx
  702aa3:	f3 0f 59 d1          	mulss  xmm2,xmm1
  702aa7:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  702aab:	8a 40 04             	mov    al,BYTE PTR [eax+0x4]
  702aae:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  702ab4:	0f 57 c9             	xorps  xmm1,xmm1
  702ab7:	0f 2f c8             	comiss xmm1,xmm0
  702aba:	88 44 24 08          	mov    BYTE PTR [esp+0x8],al
  702abe:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  702ac4:	f3 0f 11 54 24 04    	movss  DWORD PTR [esp+0x4],xmm2
  702aca:	f3 0f 11 0c 24       	movss  DWORD PTR [esp],xmm1
  702acf:	8d 04 24             	lea    eax,[esp]
  702ad2:	77 04                	ja     0x702ad8
  702ad4:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  702ad8:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  702adc:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  702ae4:	0f 2f c1             	comiss xmm0,xmm1
  702ae7:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  702aed:	f3 0f 11 0c 24       	movss  DWORD PTR [esp],xmm1
  702af2:	8d 04 24             	lea    eax,[esp]
  702af5:	77 04                	ja     0x702afb
  702af7:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  702afb:	d9 00                	fld    DWORD PTR [eax]
  702afd:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  702b01:	d9 44 24 04          	fld    DWORD PTR [esp+0x4]
  702b05:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  702b09:	51                   	push   ecx
  702b0a:	d9 1c 24             	fstp   DWORD PTR [esp]
  702b0d:	52                   	push   edx
  702b0e:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  702b12:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  702b16:	83 ec 08             	sub    esp,0x8
  702b19:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  702b1d:	d9 1c 24             	fstp   DWORD PTR [esp]
  702b20:	50                   	push   eax
  702b21:	52                   	push   edx
  702b22:	e8 79 f6 ff ff       	call   0x7021a0
  702b27:	83 c4 10             	add    esp,0x10
  702b2a:	c2 0c 00             	ret    0xc
