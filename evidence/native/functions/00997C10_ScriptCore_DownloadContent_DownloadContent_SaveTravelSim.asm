# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00997c10,0x00997cbb); analyst name DownloadContent_SaveTravelSim.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00997c10 <.text+0x596c10>:
  997c10:	83 ec 40             	sub    esp,0x40
  997c13:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
  997c17:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  997c1b:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  997c1f:	53                   	push   ebx
  997c20:	57                   	push   edi
  997c21:	50                   	push   eax
  997c22:	51                   	push   ecx
  997c23:	52                   	push   edx
  997c24:	8d 44 24 34          	lea    eax,[esp+0x34]
  997c28:	50                   	push   eax
  997c29:	e8 e2 fd ff ff       	call   0x997a10
  997c2e:	8b 08                	mov    ecx,DWORD PTR [eax]
  997c30:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  997c33:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  997c36:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
  997c39:	83 c4 10             	add    esp,0x10
  997c3c:	84 c9                	test   cl,cl
  997c3e:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
  997c42:	75 08                	jne    0x997c4c
  997c44:	5f                   	pop    edi
  997c45:	32 c0                	xor    al,al
  997c47:	5b                   	pop    ebx
  997c48:	83 c4 40             	add    esp,0x40
  997c4b:	c3                   	ret
  997c4c:	56                   	push   esi
  997c4d:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  997c51:	50                   	push   eax
  997c52:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  997c56:	e8 85 44 dd ff       	call   0x76c0e0
  997c5b:	8b 74 24 6c          	mov    esi,DWORD PTR [esp+0x6c]
  997c5f:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  997c63:	51                   	push   ecx
  997c64:	8b ce                	mov    ecx,esi
  997c66:	e8 75 44 dd ff       	call   0x76c0e0
  997c6b:	8d 54 24 0c          	lea    edx,[esp+0xc]
  997c6f:	52                   	push   edx
  997c70:	8d 44 24 20          	lea    eax,[esp+0x20]
  997c74:	50                   	push   eax
  997c75:	53                   	push   ebx
  997c76:	8b cf                	mov    ecx,edi
  997c78:	e8 83 3a 03 00       	call   0x9cb700
  997c7d:	84 c0                	test   al,al
  997c7f:	74 31                	je     0x997cb2
  997c81:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  997c85:	51                   	push   ecx
  997c86:	8d 54 24 40          	lea    edx,[esp+0x40]
  997c8a:	52                   	push   edx
  997c8b:	e8 40 43 dd ff       	call   0x76bfd0
  997c90:	8b 08                	mov    ecx,DWORD PTR [eax]
  997c92:	89 0e                	mov    DWORD PTR [esi],ecx
  997c94:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  997c97:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  997c9a:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  997c9d:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  997ca0:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  997ca3:	83 c4 08             	add    esp,0x8
  997ca6:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  997ca9:	5e                   	pop    esi
  997caa:	5f                   	pop    edi
  997cab:	b0 01                	mov    al,0x1
  997cad:	5b                   	pop    ebx
  997cae:	83 c4 40             	add    esp,0x40
  997cb1:	c3                   	ret
  997cb2:	5e                   	pop    esi
  997cb3:	5f                   	pop    edi
  997cb4:	32 c0                	xor    al,al
  997cb6:	5b                   	pop    ebx
  997cb7:	83 c4 40             	add    esp,0x40
  997cba:	c3                   	ret
