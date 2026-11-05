# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007a9ae0 <.text+0x3a8ae0>:
  7a9ae0:	51                   	push   ecx
  7a9ae1:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  7a9ae4:	56                   	push   esi
  7a9ae5:	57                   	push   edi
  7a9ae6:	8b 39                	mov    edi,DWORD PTR [ecx]
  7a9ae8:	8d 77 01             	lea    esi,[edi+0x1]
  7a9aeb:	89 31                	mov    DWORD PTR [ecx],esi
  7a9aed:	0f b6 14 38          	movzx  edx,BYTE PTR [eax+edi*1]
  7a9af1:	8d 7e 01             	lea    edi,[esi+0x1]
  7a9af4:	89 39                	mov    DWORD PTR [ecx],edi
  7a9af6:	88 54 24 08          	mov    BYTE PTR [esp+0x8],dl
  7a9afa:	0f b6 14 30          	movzx  edx,BYTE PTR [eax+esi*1]
  7a9afe:	8d 77 01             	lea    esi,[edi+0x1]
  7a9b01:	89 31                	mov    DWORD PTR [ecx],esi
  7a9b03:	88 54 24 09          	mov    BYTE PTR [esp+0x9],dl
  7a9b07:	0f b6 14 38          	movzx  edx,BYTE PTR [eax+edi*1]
  7a9b0b:	88 54 24 0a          	mov    BYTE PTR [esp+0xa],dl
  7a9b0f:	8d 56 01             	lea    edx,[esi+0x1]
  7a9b12:	89 11                	mov    DWORD PTR [ecx],edx
  7a9b14:	8a 04 30             	mov    al,BYTE PTR [eax+esi*1]
  7a9b17:	88 44 24 0b          	mov    BYTE PTR [esp+0xb],al
  7a9b1b:	5f                   	pop    edi
  7a9b1c:	5e                   	pop    esi
  7a9b1d:	d9 04 24             	fld    DWORD PTR [esp]
  7a9b20:	59                   	pop    ecx
  7a9b21:	c3                   	ret
