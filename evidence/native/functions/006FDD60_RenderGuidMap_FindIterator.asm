# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006fdd60 <.text+0x2fcd60>:
  6fdd60:	83 ec 08             	sub    esp,0x8
  6fdd63:	56                   	push   esi
  6fdd64:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  6fdd68:	8b 06                	mov    eax,DWORD PTR [esi]
  6fdd6a:	33 d2                	xor    edx,edx
  6fdd6c:	57                   	push   edi
  6fdd6d:	bf 09 04 00 00       	mov    edi,0x409
  6fdd72:	f7 f7                	div    edi
  6fdd74:	8b 04 91             	mov    eax,DWORD PTR [ecx+edx*4]
  6fdd77:	85 c0                	test   eax,eax
  6fdd79:	8d 14 91             	lea    edx,[ecx+edx*4]
  6fdd7c:	74 15                	je     0x6fdd93
  6fdd7e:	8b 3e                	mov    edi,DWORD PTR [esi]
  6fdd80:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  6fdd83:	3b 78 08             	cmp    edi,DWORD PTR [eax+0x8]
  6fdd86:	75 05                	jne    0x6fdd8d
  6fdd88:	3b 70 0c             	cmp    esi,DWORD PTR [eax+0xc]
  6fdd8b:	74 30                	je     0x6fddbd
  6fdd8d:	8b 00                	mov    eax,DWORD PTR [eax]
  6fdd8f:	85 c0                	test   eax,eax
  6fdd91:	75 f0                	jne    0x6fdd83
  6fdd93:	8d 81 24 10 00 00    	lea    eax,[ecx+0x1024]
  6fdd99:	8b 08                	mov    ecx,DWORD PTR [eax]
  6fdd9b:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  6fdd9f:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  6fdda3:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  6fdda7:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  6fddab:	8b 11                	mov    edx,DWORD PTR [ecx]
  6fddad:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  6fddb0:	5f                   	pop    edi
  6fddb1:	89 10                	mov    DWORD PTR [eax],edx
  6fddb3:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  6fddb6:	5e                   	pop    esi
  6fddb7:	83 c4 08             	add    esp,0x8
  6fddba:	c2 08 00             	ret    0x8
  6fddbd:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  6fddc1:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  6fddc5:	eb dc                	jmp    0x6fdda3
