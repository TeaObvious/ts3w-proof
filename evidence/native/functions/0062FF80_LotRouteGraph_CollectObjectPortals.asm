# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0062ff80,0x00630023); analyst name LotRouteGraph_CollectObjectPortals.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0062ff80 <.text+0x22ef80>:
  62ff80:	83 ec 08             	sub    esp,0x8
  62ff83:	56                   	push   esi
  62ff84:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  62ff88:	85 f6                	test   esi,esi
  62ff8a:	57                   	push   edi
  62ff8b:	8b f9                	mov    edi,ecx
  62ff8d:	0f 84 88 00 00 00    	je     0x63001b
  62ff93:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  62ff96:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  62ff99:	51                   	push   ecx
  62ff9a:	50                   	push   eax
  62ff9b:	8b cf                	mov    ecx,edi
  62ff9d:	e8 be 93 ff ff       	call   0x629360
  62ffa2:	84 c0                	test   al,al
  62ffa4:	74 75                	je     0x63001b
  62ffa6:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  62ffa9:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  62ffac:	53                   	push   ebx
  62ffad:	8d 54 24 0c          	lea    edx,[esp+0xc]
  62ffb1:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  62ffb5:	52                   	push   edx
  62ffb6:	8d 4f 48             	lea    ecx,[edi+0x48]
  62ffb9:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  62ffbd:	e8 0e f3 ff ff       	call   0x62f2d0
  62ffc2:	8b 70 44             	mov    esi,DWORD PTR [eax+0x44]
  62ffc5:	8b 58 48             	mov    ebx,DWORD PTR [eax+0x48]
  62ffc8:	3b f3                	cmp    esi,ebx
  62ffca:	74 4e                	je     0x63001a
  62ffcc:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
  62ffd0:	55                   	push   ebp
  62ffd1:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
  62ffd5:	8b 06                	mov    eax,DWORD PTR [esi]
  62ffd7:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  62ffda:	3b cd                	cmp    ecx,ebp
  62ffdc:	75 34                	jne    0x630012
  62ffde:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  62ffe1:	3b 54 24 24          	cmp    edx,DWORD PTR [esp+0x24]
  62ffe5:	75 2b                	jne    0x630012
  62ffe7:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  62ffea:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  62ffed:	73 1a                	jae    0x630009
  62ffef:	85 c0                	test   eax,eax
  62fff1:	8d 48 04             	lea    ecx,[eax+0x4]
  62fff4:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
  62fff7:	74 19                	je     0x630012
  62fff9:	8b 0e                	mov    ecx,DWORD PTR [esi]
  62fffb:	85 c9                	test   ecx,ecx
  62fffd:	89 08                	mov    DWORD PTR [eax],ecx
  62ffff:	74 11                	je     0x630012
  630001:	8b 11                	mov    edx,DWORD PTR [ecx]
  630003:	8b 02                	mov    eax,DWORD PTR [edx]
  630005:	ff d0                	call   eax
  630007:	eb 09                	jmp    0x630012
  630009:	56                   	push   esi
  63000a:	50                   	push   eax
  63000b:	8b cf                	mov    ecx,edi
  63000d:	e8 be 5a 63 00       	call   0xc65ad0
  630012:	83 c6 04             	add    esi,0x4
  630015:	3b f3                	cmp    esi,ebx
  630017:	75 bc                	jne    0x62ffd5
  630019:	5d                   	pop    ebp
  63001a:	5b                   	pop    ebx
  63001b:	5f                   	pop    edi
  63001c:	5e                   	pop    esi
  63001d:	83 c4 08             	add    esp,0x8
  630020:	c2 10 00             	ret    0x10
