# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007cff80 <.text+0x3cef80>:
  7cff80:	51                   	push   ecx
  7cff81:	53                   	push   ebx
  7cff82:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  7cff86:	85 db                	test   ebx,ebx
  7cff88:	56                   	push   esi
  7cff89:	57                   	push   edi
  7cff8a:	be 25 23 22 84       	mov    esi,0x84222325
  7cff8f:	bf e4 9c f2 cb       	mov    edi,0xcbf29ce4
  7cff94:	74 52                	je     0x7cffe8
  7cff96:	55                   	push   ebp
  7cff97:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
  7cff9b:	eb 03                	jmp    0x7cffa0
  7cff9d:	8d 49 00             	lea    ecx,[ecx+0x0]
  7cffa0:	0f b7 45 00          	movzx  eax,WORD PTR [ebp+0x0]
  7cffa4:	50                   	push   eax
  7cffa5:	83 eb 01             	sub    ebx,0x1
  7cffa8:	ff 15 68 67 f9 00    	call   DWORD PTR ds:0xf96768
  7cffae:	83 c4 04             	add    esp,0x4
  7cffb1:	0f b7 c0             	movzx  eax,ax
  7cffb4:	68 00 01 00 00       	push   0x100
  7cffb9:	99                   	cdq
  7cffba:	68 b3 01 00 00       	push   0x1b3
  7cffbf:	57                   	push   edi
  7cffc0:	8b ca                	mov    ecx,edx
  7cffc2:	56                   	push   esi
  7cffc3:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  7cffc7:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  7cffcb:	e8 50 f5 7a 00       	call   0xf7f520
  7cffd0:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  7cffd4:	33 c8                	xor    ecx,eax
  7cffd6:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  7cffda:	33 c2                	xor    eax,edx
  7cffdc:	83 c5 02             	add    ebp,0x2
  7cffdf:	85 db                	test   ebx,ebx
  7cffe1:	8b f1                	mov    esi,ecx
  7cffe3:	8b f8                	mov    edi,eax
  7cffe5:	75 b9                	jne    0x7cffa0
  7cffe7:	5d                   	pop    ebp
  7cffe8:	8b d7                	mov    edx,edi
  7cffea:	5f                   	pop    edi
  7cffeb:	8b c6                	mov    eax,esi
  7cffed:	5e                   	pop    esi
  7cffee:	5b                   	pop    ebx
  7cffef:	59                   	pop    ecx
  7cfff0:	c3                   	ret
