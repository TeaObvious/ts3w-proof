# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0095e170,0x0095e1ca); analyst name RugComponent_NotifyLayerChanged.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095e170 <.text+0x55d170>:
  95e170:	55                   	push   ebp
  95e171:	8b ec                	mov    ebp,esp
  95e173:	83 e4 f0             	and    esp,0xfffffff0
  95e176:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  95e179:	83 ec 50             	sub    esp,0x50
  95e17c:	85 c0                	test   eax,eax
  95e17e:	74 44                	je     0x95e1c4
  95e180:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  95e183:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  95e186:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  95e18a:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  95e18e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  95e191:	8d 0c 24             	lea    ecx,[esp]
  95e194:	51                   	push   ecx
  95e195:	c7 44 24 04 a3 d2 3b 06 	mov    DWORD PTR [esp+0x4],0x63bd2a3
  95e19d:	c7 44 24 08 00 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  95e1a5:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  95e1a9:	e8 d2 51 d3 ff       	call   0x693380
  95e1ae:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  95e1b2:	83 c4 04             	add    esp,0x4
  95e1b5:	85 c9                	test   ecx,ecx
  95e1b7:	74 0b                	je     0x95e1c4
  95e1b9:	8b 11                	mov    edx,DWORD PTR [ecx]
  95e1bb:	8b 12                	mov    edx,DWORD PTR [edx]
  95e1bd:	8d 44 24 10          	lea    eax,[esp+0x10]
  95e1c1:	50                   	push   eax
  95e1c2:	ff d2                	call   edx
  95e1c4:	8b e5                	mov    esp,ebp
  95e1c6:	5d                   	pop    ebp
  95e1c7:	c2 04 00             	ret    0x4
