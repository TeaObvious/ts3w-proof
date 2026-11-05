# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x006fdc60 (SceneObject_PublishOpacityEndpoint)
Full Ghidra function-body envelope: 0x006fdc60..0x006fdce5 (exclusive end)
Ghidra body ranges: [[006fdc60, 006fdce4]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006fdc60 <.text+0x2fcc60>:
  6fdc60:	55                   	push   ebp
  6fdc61:	8b ec                	mov    ebp,esp
  6fdc63:	83 e4 f0             	and    esp,0xfffffff0
  6fdc66:	83 ec 28             	sub    esp,0x28
  6fdc69:	56                   	push   esi
  6fdc6a:	57                   	push   edi
  6fdc6b:	c6 44 24 0c 00       	mov    BYTE PTR [esp+0xc],0x0
  6fdc70:	e8 0b 2b fb ff       	call   0x6b0780
  6fdc75:	8b f8                	mov    edi,eax
  6fdc77:	85 ff                	test   edi,edi
  6fdc79:	74 62                	je     0x6fdcdd
  6fdc7b:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  6fdc7e:	8b ce                	mov    ecx,esi
  6fdc80:	e8 eb 1f f1 ff       	call   0x60fc70
  6fdc85:	a8 01                	test   al,0x1
  6fdc87:	74 35                	je     0x6fdcbe
  6fdc89:	0f 28 86 d0 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x1d0]
  6fdc90:	0f c6 c0 ff          	shufps xmm0,xmm0,0xff
  6fdc94:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  6fdc9a:	f3 0f 10 05 b4 35 fb 00 	movss  xmm0,DWORD PTR ds:0xfb35b4
  6fdca2:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6fdca6:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  6fdcac:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  6fdcb2:	0f 2f 44 24 20       	comiss xmm0,DWORD PTR [esp+0x20]
  6fdcb7:	76 05                	jbe    0x6fdcbe
  6fdcb9:	c6 44 24 0c 01       	mov    BYTE PTR [esp+0xc],0x1
  6fdcbe:	85 f6                	test   esi,esi
  6fdcc0:	74 05                	je     0x6fdcc7
  6fdcc2:	8d 46 08             	lea    eax,[esi+0x8]
  6fdcc5:	eb 02                	jmp    0x6fdcc9
  6fdcc7:	33 c0                	xor    eax,eax
  6fdcc9:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  6fdccd:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  6fdcd0:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  6fdcd3:	51                   	push   ecx
  6fdcd4:	52                   	push   edx
  6fdcd5:	50                   	push   eax
  6fdcd6:	8b cf                	mov    ecx,edi
  6fdcd8:	e8 53 31 fb ff       	call   0x6b0e30
  6fdcdd:	5f                   	pop    edi
  6fdcde:	5e                   	pop    esi
  6fdcdf:	8b e5                	mov    esp,ebp
  6fdce1:	5d                   	pop    ebp
  6fdce2:	c2 04 00             	ret    0x4
