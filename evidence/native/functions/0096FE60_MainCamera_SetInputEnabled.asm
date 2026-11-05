# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0096fe60, 0x0096feca).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

0096fe60 <.text+0x56ee60>:
  96fe60:	83 ec 08             	sub    esp,0x8
  96fe63:	53                   	push   ebx
  96fe64:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  96fe68:	56                   	push   esi
  96fe69:	53                   	push   ebx
  96fe6a:	8b f1                	mov    esi,ecx
  96fe6c:	e8 ef 31 bc ff       	call   0x533060
  96fe71:	84 db                	test   bl,bl
  96fe73:	75 1c                	jne    0x96fe91
  96fe75:	8d 4e 40             	lea    ecx,[esi+0x40]
  96fe78:	e8 03 26 ff ff       	call   0x962480
  96fe7d:	6a 00                	push   0x0
  96fe7f:	6a 00                	push   0x0
  96fe81:	e8 ca 9a c2 ff       	call   0x599950
  96fe86:	83 c4 08             	add    esp,0x8
  96fe89:	5e                   	pop    esi
  96fe8a:	5b                   	pop    ebx
  96fe8b:	83 c4 08             	add    esp,0x8
  96fe8e:	c2 04 00             	ret    0x4
  96fe91:	e8 fa b0 b9 ff       	call   0x50af90
  96fe96:	85 c0                	test   eax,eax
  96fe98:	74 28                	je     0x96fec2
  96fe9a:	8b 10                	mov    edx,DWORD PTR [eax]
  96fe9c:	8b 52 48             	mov    edx,DWORD PTR [edx+0x48]
  96fe9f:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  96fea3:	51                   	push   ecx
  96fea4:	8b c8                	mov    ecx,eax
  96fea6:	ff d2                	call   edx
  96fea8:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  96feac:	83 ec 08             	sub    esp,0x8
  96feaf:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  96feb3:	8d 4e 40             	lea    ecx,[esi+0x40]
  96feb6:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  96feba:	d9 1c 24             	fstp   DWORD PTR [esp]
  96febd:	e8 ae 26 ff ff       	call   0x962570
  96fec2:	5e                   	pop    esi
  96fec3:	5b                   	pop    ebx
  96fec4:	83 c4 08             	add    esp,0x8
  96fec7:	c2 04 00             	ret    0x4
