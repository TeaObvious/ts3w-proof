# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

005f5b50 <.text+0x1f4b50>:
  5f5b50:	83 ec 68             	sub    esp,0x68
  5f5b53:	56                   	push   esi
  5f5b54:	e8 37 38 17 00       	call   0x769390
  5f5b59:	8b 4c 24 70          	mov    ecx,DWORD PTR [esp+0x70]
  5f5b5d:	8b 10                	mov    edx,DWORD PTR [eax]
  5f5b5f:	8b 52 58             	mov    edx,DWORD PTR [edx+0x58]
  5f5b62:	51                   	push   ecx
  5f5b63:	8b c8                	mov    ecx,eax
  5f5b65:	ff d2                	call   edx
  5f5b67:	8b f0                	mov    esi,eax
  5f5b69:	85 f6                	test   esi,esi
  5f5b6b:	75 05                	jne    0x5f5b72
  5f5b6d:	5e                   	pop    esi
  5f5b6e:	83 c4 68             	add    esp,0x68
  5f5b71:	c3                   	ret
  5f5b72:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  5f5b76:	e8 45 9f fc ff       	call   0x5bfac0
  5f5b7b:	56                   	push   esi
  5f5b7c:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  5f5b80:	e8 db a4 fc ff       	call   0x5c0060
  5f5b85:	8d 44 24 04          	lea    eax,[esp+0x4]
  5f5b89:	50                   	push   eax
  5f5b8a:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  5f5b8e:	51                   	push   ecx
  5f5b8f:	68 50 6f fe 00       	push   0xfe6f50
  5f5b94:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  5f5b98:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  5f5b9f:	00 
  5f5ba0:	c7 44 24 14 02 00 00 	mov    DWORD PTR [esp+0x14],0x2
  5f5ba7:	00 
  5f5ba8:	e8 c3 98 fc ff       	call   0x5bf470
  5f5bad:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
  5f5bb1:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  5f5bb5:	e8 26 a1 fc ff       	call   0x5bfce0
  5f5bba:	8b c6                	mov    eax,esi
  5f5bbc:	5e                   	pop    esi
  5f5bbd:	83 c4 68             	add    esp,0x68
  5f5bc0:	c3                   	ret
