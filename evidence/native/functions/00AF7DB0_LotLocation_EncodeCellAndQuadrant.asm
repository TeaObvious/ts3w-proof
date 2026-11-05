# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00af7db0, 0x00af7e3d); analyst name LotLocation_EncodeCellAndQuadrant.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00af7db0 <.text+0x6f6db0>:
  af7db0:	83 ec 08             	sub    esp,0x8
  af7db3:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  af7db7:	f3 0f 10 01          	movss  xmm0,DWORD PTR [ecx]
  af7dbb:	56                   	push   esi
  af7dbc:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  af7dc2:	d9 44 24 08          	fld    DWORD PTR [esp+0x8]
  af7dc6:	db 54 24 04          	fist   DWORD PTR [esp+0x4]
  af7dca:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
  af7dce:	de e9                	fsubp  st(1),st
  af7dd0:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  af7dd4:	81 7c 24 10 01 00 00 80 	cmp    DWORD PTR [esp+0x10],0x80000001
  af7ddc:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  af7de0:	83 d0 ff             	adc    eax,0xffffffff
  af7de3:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  af7de7:	88 06                	mov    BYTE PTR [esi],al
  af7de9:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [ecx+0x4]
  af7dee:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  af7df4:	d9 44 24 08          	fld    DWORD PTR [esp+0x8]
  af7df8:	db 54 24 14          	fist   DWORD PTR [esp+0x14]
  af7dfc:	db 44 24 14          	fild   DWORD PTR [esp+0x14]
  af7e00:	de e9                	fsubp  st(1),st
  af7e02:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  af7e06:	81 7c 24 10 01 00 00 80 	cmp    DWORD PTR [esp+0x10],0x80000001
  af7e0e:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  af7e12:	83 d0 ff             	adc    eax,0xffffffff
  af7e15:	88 46 01             	mov    BYTE PTR [esi+0x1],al
  af7e18:	8a 41 08             	mov    al,BYTE PTR [ecx+0x8]
  af7e1b:	88 46 02             	mov    BYTE PTR [esi+0x2],al
  af7e1e:	d9 41 04             	fld    DWORD PTR [ecx+0x4]
  af7e21:	83 ec 08             	sub    esp,0x8
  af7e24:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  af7e28:	d9 01                	fld    DWORD PTR [ecx]
  af7e2a:	d9 1c 24             	fstp   DWORD PTR [esp]
  af7e2d:	e8 8e fd ff ff       	call   0xaf7bc0
  af7e32:	83 c4 08             	add    esp,0x8
  af7e35:	88 46 03             	mov    BYTE PTR [esi+0x3],al
  af7e38:	5e                   	pop    esi
  af7e39:	83 c4 08             	add    esp,0x8
  af7e3c:	c3                   	ret
