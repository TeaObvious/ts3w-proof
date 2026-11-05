# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ecab50 <.text+0xac9b50>:
  ecab50:	83 ec 08             	sub    esp,0x8
  ecab53:	f6 05 d8 0b 20 01 01 	test   BYTE PTR ds:0x1200bd8,0x1
  ecab5a:	75 22                	jne    0xecab7e
  ecab5c:	83 0d d8 0b 20 01 01 	or     DWORD PTR ds:0x1200bd8,0x1
  ecab63:	6a 01                	push   0x1
  ecab65:	6a 05                	push   0x5
  ecab67:	b9 c0 0b 20 01       	mov    ecx,0x1200bc0
  ecab6c:	e8 3f 8e 62 ff       	call   0x4f39b0
  ecab71:	68 30 52 f9 00       	push   0xf95230
  ecab76:	e8 06 48 0b 00       	call   0xf7f381
  ecab7b:	83 c4 04             	add    esp,0x4
  ecab7e:	b9 c0 0b 20 01       	mov    ecx,0x1200bc0
  ecab83:	e8 38 8c 62 ff       	call   0x4f37c0
  ecab88:	d9 05 9c 2b fc 00    	fld    DWORD PTR ds:0xfc2b9c
  ecab8e:	df f1                	fcomip st,st(1)
  ecab90:	dd d8                	fstp   st(0)
  ecab92:	0f 87 99 00 00 00    	ja     0xecac31
  ecab98:	56                   	push   esi
  ecab99:	57                   	push   edi
  ecab9a:	33 ff                	xor    edi,edi
  ecab9c:	83 3d d0 0b 20 01 01 	cmp    DWORD PTR ds:0x1200bd0,0x1
  ecaba3:	89 3d c0 0b 20 01    	mov    DWORD PTR ds:0x1200bc0,edi
  ecaba9:	89 3d c4 0b 20 01    	mov    DWORD PTR ds:0x1200bc4,edi
  ecabaf:	89 3d c8 0b 20 01    	mov    DWORD PTR ds:0x1200bc8,edi
  ecabb5:	89 3d cc 0b 20 01    	mov    DWORD PTR ds:0x1200bcc,edi
  ecabbb:	75 09                	jne    0xecabc6
  ecabbd:	0f 31                	rdtsc
  ecabbf:	a3 c0 0b 20 01       	mov    ds:0x1200bc0,eax
  ecabc4:	eb 19                	jmp    0xecabdf
  ecabc6:	8d 44 24 08          	lea    eax,[esp+0x8]
  ecabca:	50                   	push   eax
  ecabcb:	ff 15 bc 63 f9 00    	call   DWORD PTR ds:0xf963bc
  ecabd1:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  ecabd5:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  ecabd9:	89 0d c0 0b 20 01    	mov    DWORD PTR ds:0x1200bc0,ecx
  ecabdf:	89 15 c4 0b 20 01    	mov    DWORD PTR ds:0x1200bc4,edx
  ecabe5:	e8 a6 03 64 ff       	call   0x50af90
  ecabea:	8b f0                	mov    esi,eax
  ecabec:	3b f7                	cmp    esi,edi
  ecabee:	74 12                	je     0xecac02
  ecabf0:	8b 06                	mov    eax,DWORD PTR [esi]
  ecabf2:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  ecabf5:	8b ce                	mov    ecx,esi
  ecabf7:	ff d2                	call   edx
  ecabf9:	8b 06                	mov    eax,DWORD PTR [esi]
  ecabfb:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  ecabfe:	8b ce                	mov    ecx,esi
  ecac00:	ff d2                	call   edx
  ecac02:	ff 15 58 61 f9 00    	call   DWORD PTR ds:0xf96158
  ecac08:	8b f0                	mov    esi,eax
  ecac0a:	e8 11 f0 90 ff       	call   0x7d9c20
  ecac0f:	5f                   	pop    edi
  ecac10:	3b f0                	cmp    esi,eax
  ecac12:	5e                   	pop    esi
  ecac13:	75 1c                	jne    0xecac31
  ecac15:	8b 0d d0 eb 1c 01    	mov    ecx,DWORD PTR ds:0x11cebd0
  ecac1b:	8b 01                	mov    eax,DWORD PTR [ecx]
  ecac1d:	8b 90 8c 00 00 00    	mov    edx,DWORD PTR [eax+0x8c]
  ecac23:	ff d2                	call   edx
  ecac25:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  ecac29:	83 c4 08             	add    esp,0x8
  ecac2c:	e9 6f fe ff ff       	jmp    0xecaaa0
  ecac31:	83 c4 08             	add    esp,0x8
  ecac34:	c3                   	ret
