# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00745020, 0x007451be); analyst name Objects_SetPosition.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00745020 <.text+0x344020>:
  745020:	55                   	push   ebp
  745021:	8b ec                	mov    ebp,esp
  745023:	83 e4 f0             	and    esp,0xfffffff0
  745026:	83 ec 34             	sub    esp,0x34
  745029:	53                   	push   ebx
  74502a:	56                   	push   esi
  74502b:	57                   	push   edi
  74502c:	e8 3f 25 1f 00       	call   0x937570
  745031:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  745034:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  745037:	51                   	push   ecx
  745038:	52                   	push   edx
  745039:	8b c8                	mov    ecx,eax
  74503b:	e8 40 2f 1f 00       	call   0x937f80
  745040:	8b f0                	mov    esi,eax
  745042:	85 f6                	test   esi,esi
  745044:	0f 84 6d 01 00 00    	je     0x7451b7
  74504a:	a1 84 d4 1d 01       	mov    eax,ds:0x11dd484
  74504f:	50                   	push   eax
  745050:	8b ce                	mov    ecx,esi
  745052:	e8 09 f2 1e 00       	call   0x934260
  745057:	85 c0                	test   eax,eax
  745059:	74 0d                	je     0x745068
  74505b:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  74505e:	8d 48 08             	lea    ecx,[eax+0x8]
  745061:	8b 42 28             	mov    eax,DWORD PTR [edx+0x28]
  745064:	ff d0                	call   eax
  745066:	eb 19                	jmp    0x745081
  745068:	8b 0d 58 a1 1e 01    	mov    ecx,DWORD PTR ds:0x11ea158
  74506e:	51                   	push   ecx
  74506f:	8b ce                	mov    ecx,esi
  745071:	e8 ea f1 1e 00       	call   0x934260
  745076:	85 c0                	test   eax,eax
  745078:	74 07                	je     0x745081
  74507a:	8b c8                	mov    ecx,eax
  74507c:	e8 4f 0e 21 00       	call   0x955ed0
  745081:	8b 15 08 df 1e 01    	mov    edx,DWORD PTR ds:0x11edf08
  745087:	52                   	push   edx
  745088:	8b ce                	mov    ecx,esi
  74508a:	c6 44 24 1f 00       	mov    BYTE PTR [esp+0x1f],0x0
  74508f:	e8 cc f1 1e 00       	call   0x934260
  745094:	8b d8                	mov    ebx,eax
  745096:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  74509b:	50                   	push   eax
  74509c:	8b ce                	mov    ecx,esi
  74509e:	e8 bd f1 1e 00       	call   0x934260
  7450a3:	8b f8                	mov    edi,eax
  7450a5:	85 ff                	test   edi,edi
  7450a7:	74 75                	je     0x74511e
  7450a9:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  7450ad:	51                   	push   ecx
  7450ae:	8b cf                	mov    ecx,edi
  7450b0:	e8 7b 29 21 00       	call   0x957a30
  7450b5:	f3 0f 10 4d 18       	movss  xmm1,DWORD PTR [ebp+0x18]
  7450ba:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  7450bf:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  7450c5:	f3 0f 10 4d 14       	movss  xmm1,DWORD PTR [ebp+0x14]
  7450ca:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  7450d0:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  7450d6:	0f 28 4c 24 30       	movaps xmm1,XMMWORD PTR [esp+0x30]
  7450db:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  7450e1:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  7450e6:	0f c2 c1 00          	cmpeqps xmm0,xmm1
  7450ea:	0f 50 d0             	movmskps edx,xmm0
  7450ed:	83 e2 07             	and    edx,0x7
  7450f0:	80 fa 07             	cmp    dl,0x7
  7450f3:	0f 95 c0             	setne  al
  7450f6:	84 c0                	test   al,al
  7450f8:	88 44 24 1b          	mov    BYTE PTR [esp+0x1b],al
  7450fc:	74 0b                	je     0x745109
  7450fe:	85 db                	test   ebx,ebx
  745100:	74 07                	je     0x745109
  745102:	81 63 2c 7f ff ff ff 	and    DWORD PTR [ebx+0x2c],0xffffff7f
  745109:	8d 44 24 20          	lea    eax,[esp+0x20]
  74510d:	50                   	push   eax
  74510e:	8d 4d 10             	lea    ecx,[ebp+0x10]
  745111:	e8 3a 6f 02 00       	call   0x76c050
  745116:	50                   	push   eax
  745117:	8b cf                	mov    ecx,edi
  745119:	e8 92 32 21 00       	call   0x9583b0
  74511e:	8b 0d fc a0 1e 01    	mov    ecx,DWORD PTR ds:0x11ea0fc
  745124:	51                   	push   ecx
  745125:	8b ce                	mov    ecx,esi
  745127:	e8 34 f1 1e 00       	call   0x934260
  74512c:	8b 15 38 a1 1e 01    	mov    edx,DWORD PTR ds:0x11ea138
  745132:	52                   	push   edx
  745133:	8b ce                	mov    ecx,esi
  745135:	8b f8                	mov    edi,eax
  745137:	e8 24 f1 1e 00       	call   0x934260
  74513c:	85 ff                	test   edi,edi
  74513e:	8b c8                	mov    ecx,eax
  745140:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  745144:	75 66                	jne    0x7451ac
  745146:	85 c9                	test   ecx,ecx
  745148:	74 0d                	je     0x745157
  74514a:	e8 a1 d0 20 00       	call   0x9521f0
  74514f:	84 c0                	test   al,al
  745151:	75 55                	jne    0x7451a8
  745153:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  745157:	85 db                	test   ebx,ebx
  745159:	74 51                	je     0x7451ac
  74515b:	80 7c 24 1b 00       	cmp    BYTE PTR [esp+0x1b],0x0
  745160:	74 3d                	je     0x74519f
  745162:	8b ce                	mov    ecx,esi
  745164:	e8 c7 9f f4 ff       	call   0x68f130
  745169:	50                   	push   eax
  74516a:	e8 e1 fa ff ff       	call   0x744c50
  74516f:	83 c4 04             	add    esp,0x4
  745172:	6a 00                	push   0x0
  745174:	8b cb                	mov    ecx,ebx
  745176:	8b f8                	mov    edi,eax
  745178:	e8 33 5f 54 00       	call   0xc8b0b0
  74517d:	8b ce                	mov    ecx,esi
  74517f:	e8 ac 9f f4 ff       	call   0x68f130
  745184:	50                   	push   eax
  745185:	e8 c6 fa ff ff       	call   0x744c50
  74518a:	83 c4 04             	add    esp,0x4
  74518d:	85 c0                	test   eax,eax
  74518f:	74 17                	je     0x7451a8
  745191:	3b f8                	cmp    edi,eax
  745193:	75 13                	jne    0x7451a8
  745195:	56                   	push   esi
  745196:	8b c8                	mov    ecx,eax
  745198:	e8 73 80 38 00       	call   0xacd210
  74519d:	eb 09                	jmp    0x7451a8
  74519f:	6a 00                	push   0x0
  7451a1:	8b cb                	mov    ecx,ebx
  7451a3:	e8 08 5f 54 00       	call   0xc8b0b0
  7451a8:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  7451ac:	85 c9                	test   ecx,ecx
  7451ae:	74 07                	je     0x7451b7
  7451b0:	8b 01                	mov    eax,DWORD PTR [ecx]
  7451b2:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  7451b5:	ff d2                	call   edx
  7451b7:	5f                   	pop    edi
  7451b8:	5e                   	pop    esi
  7451b9:	5b                   	pop    ebx
  7451ba:	8b e5                	mov    esp,ebp
  7451bc:	5d                   	pop    ebp
  7451bd:	c3                   	ret
