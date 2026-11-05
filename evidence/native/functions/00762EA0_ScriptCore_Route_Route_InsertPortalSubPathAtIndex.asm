# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00762ea0,0x00763226); analyst name Route_InsertPortalSubPathAtIndex.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00762ea0 <.text+0x361ea0>:
  762ea0:	55                   	push   ebp
  762ea1:	8b ec                	mov    ebp,esp
  762ea3:	83 e4 f0             	and    esp,0xfffffff0
  762ea6:	8b 0d c4 50 1d 01    	mov    ecx,DWORD PTR ds:0x11d50c4
  762eac:	83 ec 34             	sub    esp,0x34
  762eaf:	53                   	push   ebx
  762eb0:	56                   	push   esi
  762eb1:	57                   	push   edi
  762eb2:	33 ff                	xor    edi,edi
  762eb4:	3b cf                	cmp    ecx,edi
  762eb6:	0f 84 f0 00 00 00    	je     0x762fac
  762ebc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  762ebf:	50                   	push   eax
  762ec0:	e8 eb 85 fe ff       	call   0x74b4b0
  762ec5:	8b d8                	mov    ebx,eax
  762ec7:	3b df                	cmp    ebx,edi
  762ec9:	0f 84 dd 00 00 00    	je     0x762fac
  762ecf:	8b 13                	mov    edx,DWORD PTR [ebx]
  762ed1:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  762ed4:	8b cb                	mov    ecx,ebx
  762ed6:	ff d0                	call   eax
  762ed8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  762edb:	3b c7                	cmp    eax,edi
  762edd:	76 54                	jbe    0x762f33
  762edf:	83 c0 ff             	add    eax,0xffffffff
  762ee2:	50                   	push   eax
  762ee3:	8b cb                	mov    ecx,ebx
  762ee5:	e8 c6 d1 fe ff       	call   0x7500b0
  762eea:	8b f0                	mov    esi,eax
  762eec:	3b f7                	cmp    esi,edi
  762eee:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
  762ef2:	74 43                	je     0x762f37
  762ef4:	8b 16                	mov    edx,DWORD PTR [esi]
  762ef6:	8b 42 7c             	mov    eax,DWORD PTR [edx+0x7c]
  762ef9:	8b ce                	mov    ecx,esi
  762efb:	ff d0                	call   eax
  762efd:	8b 16                	mov    edx,DWORD PTR [esi]
  762eff:	8b 92 34 01 00 00    	mov    edx,DWORD PTR [edx+0x134]
  762f05:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  762f09:	8d 44 24 30          	lea    eax,[esp+0x30]
  762f0d:	50                   	push   eax
  762f0e:	8b ce                	mov    ecx,esi
  762f10:	ff d2                	call   edx
  762f12:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  762f15:	8b 06                	mov    eax,DWORD PTR [esi]
  762f17:	8b 90 40 01 00 00    	mov    edx,DWORD PTR [eax+0x140]
  762f1d:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  762f21:	51                   	push   ecx
  762f22:	8b ce                	mov    ecx,esi
  762f24:	0f 29 44 24 34       	movaps XMMWORD PTR [esp+0x34],xmm0
  762f29:	ff d2                	call   edx
  762f2b:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  762f2e:	e9 b8 00 00 00       	jmp    0x762feb
  762f33:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  762f37:	8b 73 40             	mov    esi,DWORD PTR [ebx+0x40]
  762f3a:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  762f3e:	8b 7b 44             	mov    edi,DWORD PTR [ebx+0x44]
  762f41:	e8 2a 46 1d 00       	call   0x937570
  762f46:	85 c0                	test   eax,eax
  762f48:	74 0b                	je     0x762f55
  762f4a:	57                   	push   edi
  762f4b:	56                   	push   esi
  762f4c:	8b c8                	mov    ecx,eax
  762f4e:	e8 2d 50 1d 00       	call   0x937f80
  762f53:	eb 02                	jmp    0x762f57
  762f55:	33 c0                	xor    eax,eax
  762f57:	85 c0                	test   eax,eax
  762f59:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  762f5d:	74 3b                	je     0x762f9a
  762f5f:	8d 48 04             	lea    ecx,[eax+0x4]
  762f62:	ba 01 00 00 00       	mov    edx,0x1
  762f67:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  762f6b:	8b 0d 58 a1 1e 01    	mov    ecx,DWORD PTR ds:0x11ea158
  762f71:	51                   	push   ecx
  762f72:	8b c8                	mov    ecx,eax
  762f74:	e8 e7 12 1d 00       	call   0x934260
  762f79:	8b f0                	mov    esi,eax
  762f7b:	85 f6                	test   esi,esi
  762f7d:	75 36                	jne    0x762fb5
  762f7f:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  762f83:	e8 58 33 fe ff       	call   0x7462e0
  762f88:	8b 13                	mov    edx,DWORD PTR [ebx]
  762f8a:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  762f8d:	8b cb                	mov    ecx,ebx
  762f8f:	ff d0                	call   eax
  762f91:	32 c0                	xor    al,al
  762f93:	5f                   	pop    edi
  762f94:	5e                   	pop    esi
  762f95:	5b                   	pop    ebx
  762f96:	8b e5                	mov    esp,ebp
  762f98:	5d                   	pop    ebp
  762f99:	c3                   	ret
  762f9a:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  762f9e:	e8 3d 33 fe ff       	call   0x7462e0
  762fa3:	8b 03                	mov    eax,DWORD PTR [ebx]
  762fa5:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
  762fa8:	8b cb                	mov    ecx,ebx
  762faa:	ff d2                	call   edx
  762fac:	32 c0                	xor    al,al
  762fae:	5f                   	pop    edi
  762faf:	5e                   	pop    esi
  762fb0:	5b                   	pop    ebx
  762fb1:	8b e5                	mov    esp,ebp
  762fb3:	5d                   	pop    ebp
  762fb4:	c3                   	ret
  762fb5:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  762fb9:	51                   	push   ecx
  762fba:	8b ce                	mov    ecx,esi
  762fbc:	e8 6f 4a 1f 00       	call   0x957a30
  762fc1:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  762fc4:	8d 54 24 20          	lea    edx,[esp+0x20]
  762fc8:	52                   	push   edx
  762fc9:	8b ce                	mov    ecx,esi
  762fcb:	0f 29 44 24 34       	movaps XMMWORD PTR [esp+0x34],xmm0
  762fd0:	e8 8b 4a 1f 00       	call   0x957a60
  762fd5:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  762fd8:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  762fdc:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  762fe1:	e8 fa 32 fe ff       	call   0x7462e0
  762fe6:	0f 28 54 24 20       	movaps xmm2,XMMWORD PTR [esp+0x20]
  762feb:	0f 57 c0             	xorps  xmm0,xmm0
  762fee:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  762ff6:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  762ffc:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  763002:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  763008:	0f 28 da             	movaps xmm3,xmm2
  76300b:	0f c6 da 12          	shufps xmm3,xmm2,0x12
  76300f:	0f 28 e2             	movaps xmm4,xmm2
  763012:	0f c6 e2 09          	shufps xmm4,xmm2,0x9
  763016:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  76301c:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  763021:	0f 28 c1             	movaps xmm0,xmm1
  763024:	0f c6 c1 12          	shufps xmm0,xmm1,0x12
  763028:	0f 59 c4             	mulps  xmm0,xmm4
  76302b:	0f 28 e9             	movaps xmm5,xmm1
  76302e:	0f c6 e9 09          	shufps xmm5,xmm1,0x9
  763032:	0f 59 eb             	mulps  xmm5,xmm3
  763035:	0f 5c c5             	subps  xmm0,xmm5
  763038:	0f 28 ea             	movaps xmm5,xmm2
  76303b:	0f c6 ea ff          	shufps xmm5,xmm2,0xff
  76303f:	6a 00                	push   0x0
  763041:	0f 59 e9             	mulps  xmm5,xmm1
  763044:	0f 58 c5             	addps  xmm0,xmm5
  763047:	0f 28 d0             	movaps xmm2,xmm0
  76304a:	0f c6 d0 12          	shufps xmm2,xmm0,0x12
  76304e:	0f 59 d4             	mulps  xmm2,xmm4
  763051:	6a 00                	push   0x0
  763053:	0f 28 e0             	movaps xmm4,xmm0
  763056:	6a 00                	push   0x0
  763058:	0f c6 e0 09          	shufps xmm4,xmm0,0x9
  76305c:	f3 0f 10 05 88 fd 03 01 	movss  xmm0,DWORD PTR ds:0x103fd88
  763064:	6a 00                	push   0x0
  763066:	0f 59 e3             	mulps  xmm4,xmm3
  763069:	0f 5c d4             	subps  xmm2,xmm4
  76306c:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  763070:	0f 59 d0             	mulps  xmm2,xmm0
  763073:	68 6c 59 00 01       	push   0x100596c
  763078:	0f 58 d1             	addps  xmm2,xmm1
  76307b:	68 90 01 00 00       	push   0x190
  763080:	0f 29 54 24 38       	movaps XMMWORD PTR [esp+0x38],xmm2
  763085:	e8 76 14 d8 ff       	call   0x4e4500
  76308a:	83 c4 18             	add    esp,0x18
  76308d:	85 c0                	test   eax,eax
  76308f:	0f 84 8a 01 00 00    	je     0x76321f
  763095:	8b c8                	mov    ecx,eax
  763097:	e8 84 cf 0b 00       	call   0x820020
  76309c:	8b f0                	mov    esi,eax
  76309e:	85 f6                	test   esi,esi
  7630a0:	74 0c                	je     0x7630ae
  7630a2:	8d 46 04             	lea    eax,[esi+0x4]
  7630a5:	b9 01 00 00 00       	mov    ecx,0x1
  7630aa:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  7630ae:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  7630b1:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  7630b4:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  7630b9:	89 96 b8 00 00 00    	mov    DWORD PTR [esi+0xb8],edx
  7630bf:	89 86 bc 00 00 00    	mov    DWORD PTR [esi+0xbc],eax
  7630c5:	c7 86 b0 00 00 00 52 0d 66 50 	mov    DWORD PTR [esi+0xb0],0x50660d52
  7630cf:	0f 29 86 c0 00 00 00 	movaps XMMWORD PTR [esi+0xc0],xmm0
  7630d6:	8b 16                	mov    edx,DWORD PTR [esi]
  7630d8:	8b 82 dc 00 00 00    	mov    eax,DWORD PTR [edx+0xdc]
  7630de:	8b ce                	mov    ecx,esi
  7630e0:	ff d0                	call   eax
  7630e2:	8b f8                	mov    edi,eax
  7630e4:	6a 01                	push   0x1
  7630e6:	8b cf                	mov    ecx,edi
  7630e8:	e8 a3 cc ff ff       	call   0x75fd90
  7630ed:	8b 07                	mov    eax,DWORD PTR [edi]
  7630ef:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  7630f4:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  7630f9:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  7630fc:	0f 57 c0             	xorps  xmm0,xmm0
  7630ff:	f3 0f 11 40 20       	movss  DWORD PTR [eax+0x20],xmm0
  763104:	8d 7e 04             	lea    edi,[esi+0x4]
  763107:	0f 29 48 10          	movaps XMMWORD PTR [eax+0x10],xmm1
  76310b:	f3 0f 11 40 24       	movss  DWORD PTR [eax+0x24],xmm0
  763110:	8b cf                	mov    ecx,edi
  763112:	ba 01 00 00 00       	mov    edx,0x1
  763117:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  76311b:	8b 83 e8 00 00 00    	mov    eax,DWORD PTR [ebx+0xe8]
  763121:	68 e7 00 00 00       	push   0xe7
  763126:	68 88 99 f9 00       	push   0xf99988
  76312b:	6a 00                	push   0x0
  76312d:	6a 00                	push   0x0
  76312f:	50                   	push   eax
  763130:	6a 0c                	push   0xc
  763132:	e8 c9 13 d8 ff       	call   0x4e4500
  763137:	8d 48 08             	lea    ecx,[eax+0x8]
  76313a:	83 c4 18             	add    esp,0x18
  76313d:	85 c9                	test   ecx,ecx
  76313f:	74 0d                	je     0x76314e
  763141:	89 31                	mov    DWORD PTR [ecx],esi
  763143:	8b cf                	mov    ecx,edi
  763145:	ba 01 00 00 00       	mov    edx,0x1
  76314a:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  76314e:	8d 8b e0 00 00 00    	lea    ecx,[ebx+0xe0]
  763154:	89 08                	mov    DWORD PTR [eax],ecx
  763156:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  763159:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  76315c:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  76315f:	89 02                	mov    DWORD PTR [edx],eax
  763161:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  763164:	8b c7                	mov    eax,edi
  763166:	83 c9 ff             	or     ecx,0xffffffff
  763169:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  76316d:	49                   	dec    ecx
  76316e:	75 11                	jne    0x763181
  763170:	ba 01 00 00 00       	mov    edx,0x1
  763175:	87 10                	xchg   DWORD PTR [eax],edx
  763177:	8b 16                	mov    edx,DWORD PTR [esi]
  763179:	8b 02                	mov    eax,DWORD PTR [edx]
  76317b:	6a 01                	push   0x1
  76317d:	8b ce                	mov    ecx,esi
  76317f:	ff d0                	call   eax
  763181:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  763185:	85 c0                	test   eax,eax
  763187:	74 0e                	je     0x763197
  763189:	8b 10                	mov    edx,DWORD PTR [eax]
  76318b:	8b c8                	mov    ecx,eax
  76318d:	8b 42 78             	mov    eax,DWORD PTR [edx+0x78]
  763190:	56                   	push   esi
  763191:	ff d0                	call   eax
  763193:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  763197:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  76319b:	85 c9                	test   ecx,ecx
  76319d:	74 0f                	je     0x7631ae
  76319f:	8b 11                	mov    edx,DWORD PTR [ecx]
  7631a1:	8b 82 80 00 00 00    	mov    eax,DWORD PTR [edx+0x80]
  7631a7:	56                   	push   esi
  7631a8:	ff d0                	call   eax
  7631aa:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  7631ae:	8b 16                	mov    edx,DWORD PTR [esi]
  7631b0:	50                   	push   eax
  7631b1:	8b 82 80 00 00 00    	mov    eax,DWORD PTR [edx+0x80]
  7631b7:	8b ce                	mov    ecx,esi
  7631b9:	ff d0                	call   eax
  7631bb:	8b 16                	mov    edx,DWORD PTR [esi]
  7631bd:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  7631c1:	8b 52 78             	mov    edx,DWORD PTR [edx+0x78]
  7631c4:	50                   	push   eax
  7631c5:	8b ce                	mov    ecx,esi
  7631c7:	ff d2                	call   edx
  7631c9:	8b 06                	mov    eax,DWORD PTR [esi]
  7631cb:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  7631ce:	8d 8b 58 01 00 00    	lea    ecx,[ebx+0x158]
  7631d4:	51                   	push   ecx
  7631d5:	8b ce                	mov    ecx,esi
  7631d7:	ff d2                	call   edx
  7631d9:	8b cb                	mov    ecx,ebx
  7631db:	e8 90 37 ff ff       	call   0x756970
  7631e0:	6a 00                	push   0x0
  7631e2:	8b cb                	mov    ecx,ebx
  7631e4:	e8 47 cf fe ff       	call   0x750130
  7631e9:	8b cb                	mov    ecx,ebx
  7631eb:	e8 60 d2 fe ff       	call   0x750450
  7631f0:	8b c7                	mov    eax,edi
  7631f2:	83 c9 ff             	or     ecx,0xffffffff
  7631f5:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  7631f9:	49                   	dec    ecx
  7631fa:	75 11                	jne    0x76320d
  7631fc:	ba 01 00 00 00       	mov    edx,0x1
  763201:	87 17                	xchg   DWORD PTR [edi],edx
  763203:	8b 06                	mov    eax,DWORD PTR [esi]
  763205:	8b 10                	mov    edx,DWORD PTR [eax]
  763207:	6a 01                	push   0x1
  763209:	8b ce                	mov    ecx,esi
  76320b:	ff d2                	call   edx
  76320d:	8b 03                	mov    eax,DWORD PTR [ebx]
  76320f:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
  763212:	8b cb                	mov    ecx,ebx
  763214:	ff d2                	call   edx
  763216:	5f                   	pop    edi
  763217:	5e                   	pop    esi
  763218:	b0 01                	mov    al,0x1
  76321a:	5b                   	pop    ebx
  76321b:	8b e5                	mov    esp,ebp
  76321d:	5d                   	pop    ebp
  76321e:	c3                   	ret
  76321f:	33 f6                	xor    esi,esi
  763221:	e9 88 fe ff ff       	jmp    0x7630ae
