# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009433a0 <.text+0x5423a0>:
  9433a0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  9433a4:	83 ec 40             	sub    esp,0x40
  9433a7:	56                   	push   esi
  9433a8:	6a ff                	push   0xffffffff
  9433aa:	6a 40                	push   0x40
  9433ac:	8b f1                	mov    esi,ecx
  9433ae:	50                   	push   eax
  9433af:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  9433b3:	51                   	push   ecx
  9433b4:	e8 e7 ab bb ff       	call   0x4fdfa0
  9433b9:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  9433bd:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  9433c1:	83 c4 10             	add    esp,0x10
  9433c4:	6a 00                	push   0x0
  9433c6:	52                   	push   edx
  9433c7:	50                   	push   eax
  9433c8:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  9433cc:	51                   	push   ecx
  9433cd:	8b ce                	mov    ecx,esi
  9433cf:	e8 4c f9 ff ff       	call   0x942d20
  9433d4:	5e                   	pop    esi
  9433d5:	83 c4 40             	add    esp,0x40
  9433d8:	c2 0c 00             	ret    0xc
