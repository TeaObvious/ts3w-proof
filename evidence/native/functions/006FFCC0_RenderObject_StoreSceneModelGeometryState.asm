# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006ffcc0 <.text+0x2fecc0>:
  6ffcc0:	83 ec 08             	sub    esp,0x8
  6ffcc3:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  6ffcc7:	56                   	push   esi
  6ffcc8:	8b f1                	mov    esi,ecx
  6ffcca:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  6ffcce:	8d 54 24 04          	lea    edx,[esp+0x4]
  6ffcd2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  6ffcd6:	52                   	push   edx
  6ffcd7:	8d 44 24 14          	lea    eax,[esp+0x14]
  6ffcdb:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  6ffcdf:	50                   	push   eax
  6ffce0:	8d 4e 04             	lea    ecx,[esi+0x4]
  6ffce3:	e8 78 e0 ff ff       	call   0x6fdd60
  6ffce8:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  6ffcec:	3b 86 28 10 00 00    	cmp    eax,DWORD PTR [esi+0x1028]
  6ffcf2:	5e                   	pop    esi
  6ffcf3:	74 2d                	je     0x6ffd22
  6ffcf5:	85 c0                	test   eax,eax
  6ffcf7:	74 29                	je     0x6ffd22
  6ffcf9:	8d 48 f8             	lea    ecx,[eax-0x8]
  6ffcfc:	85 c9                	test   ecx,ecx
  6ffcfe:	74 22                	je     0x6ffd22
  6ffd00:	8b 11                	mov    edx,DWORD PTR [ecx]
  6ffd02:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  6ffd05:	68 88 1d 7f 01       	push   0x17f1d88
  6ffd0a:	ff d0                	call   eax
  6ffd0c:	85 c0                	test   eax,eax
  6ffd0e:	74 12                	je     0x6ffd22
  6ffd10:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  6ffd14:	89 88 a4 02 00 00    	mov    DWORD PTR [eax+0x2a4],ecx
  6ffd1a:	b0 01                	mov    al,0x1
  6ffd1c:	83 c4 08             	add    esp,0x8
  6ffd1f:	c2 0c 00             	ret    0xc
  6ffd22:	32 c0                	xor    al,al
  6ffd24:	83 c4 08             	add    esp,0x8
  6ffd27:	c2 0c 00             	ret    0xc
