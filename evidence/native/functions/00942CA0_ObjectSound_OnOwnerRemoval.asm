# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942ca0 <.text+0x541ca0>:
  942ca0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  942ca4:	85 c9                	test   ecx,ecx
  942ca6:	56                   	push   esi
  942ca7:	74 4c                	je     0x942cf5
  942ca9:	a1 70 9e 1e 01       	mov    eax,ds:0x11e9e70
  942cae:	50                   	push   eax
  942caf:	e8 ac 15 ff ff       	call   0x934260
  942cb4:	8b f0                	mov    esi,eax
  942cb6:	85 f6                	test   esi,esi
  942cb8:	74 3b                	je     0x942cf5
  942cba:	a1 40 9c 1d 01       	mov    eax,ds:0x11d9c40
  942cbf:	85 c0                	test   eax,eax
  942cc1:	74 20                	je     0x942ce3
  942cc3:	8d 88 30 84 fd ff    	lea    ecx,[eax-0x27bd0]
  942cc9:	85 c9                	test   ecx,ecx
  942ccb:	74 16                	je     0x942ce3
  942ccd:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  942cd0:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  942cd3:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  942cd6:	8b 89 f4 7b 02 00    	mov    ecx,DWORD PTR [ecx+0x27bf4]
  942cdc:	52                   	push   edx
  942cdd:	50                   	push   eax
  942cde:	e8 3d f2 f1 ff       	call   0x861f20
  942ce3:	6a ff                	push   0xffffffff
  942ce5:	6a 00                	push   0x0
  942ce7:	8b ce                	mov    ecx,esi
  942ce9:	c7 46 48 00 00 00 00 	mov    DWORD PTR [esi+0x48],0x0
  942cf0:	e8 4b ff ff ff       	call   0x942c40
  942cf5:	b0 01                	mov    al,0x1
  942cf7:	5e                   	pop    esi
  942cf8:	c3                   	ret
