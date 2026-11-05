# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00922fd0 <.text+0x521fd0>:
  922fd0:	83 ec 4c             	sub    esp,0x4c
  922fd3:	57                   	push   edi
  922fd4:	8b 7c 24 54          	mov    edi,DWORD PTR [esp+0x54]
  922fd8:	6a 00                	push   0x0
  922fda:	8d 44 24 10          	lea    eax,[esp+0x10]
  922fde:	50                   	push   eax
  922fdf:	57                   	push   edi
  922fe0:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  922fe4:	e8 f7 a8 bb ff       	call   0x4dd8e0
  922fe9:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  922fed:	83 c1 fe             	add    ecx,0xfffffffe
  922ff0:	83 c4 0c             	add    esp,0xc
  922ff3:	66 85 c9             	test   cx,cx
  922ff6:	0f 87 e3 05 00 00    	ja     0x9235df
  922ffc:	53                   	push   ebx
  922ffd:	55                   	push   ebp
  922ffe:	56                   	push   esi
  922fff:	6a 00                	push   0x0
  923001:	8d 54 24 14          	lea    edx,[esp+0x14]
  923005:	52                   	push   edx
  923006:	57                   	push   edi
  923007:	e8 d4 a8 bb ff       	call   0x4dd8e0
  92300c:	66 8b 44 24 1c       	mov    ax,WORD PTR [esp+0x1c]
  923011:	83 c4 0c             	add    esp,0xc
  923014:	66 3d ff ff          	cmp    ax,0xffff
  923018:	0f 84 19 01 00 00    	je     0x923137
  92301e:	8b ff                	mov    edi,edi
  923020:	0f b7 c0             	movzx  eax,ax
  923023:	8d 0c c5 00 00 00 00 	lea    ecx,[eax*8+0x0]
  92302a:	2b c8                	sub    ecx,eax
  92302c:	83 3c 8d a4 c0 1d 01 	cmp    DWORD PTR [ecx*4+0x11dc0a4],0x0
  923033:	00 
  923034:	0f 84 de 00 00 00    	je     0x923118
  92303a:	6a 00                	push   0x0
  92303c:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  923040:	52                   	push   edx
  923041:	57                   	push   edi
  923042:	e8 99 a8 bb ff       	call   0x4dd8e0
  923047:	0f b7 4c 24 1c       	movzx  ecx,WORD PTR [esp+0x1c]
  92304c:	8d 04 cd 00 00 00 00 	lea    eax,[ecx*8+0x0]
  923053:	2b c1                	sub    eax,ecx
  923055:	0f b7 4c 24 24       	movzx  ecx,WORD PTR [esp+0x24]
  92305a:	03 c0                	add    eax,eax
  92305c:	03 c0                	add    eax,eax
  92305e:	83 c4 0c             	add    esp,0xc
  923061:	3b 88 ac c0 1d 01    	cmp    ecx,DWORD PTR [eax+0x11dc0ac]
  923067:	0f 8c 66 05 00 00    	jl     0x9235d3
  92306d:	3b 88 b0 c0 1d 01    	cmp    ecx,DWORD PTR [eax+0x11dc0b0]
  923073:	0f 8f 5a 05 00 00    	jg     0x9235d3
  923079:	6a 00                	push   0x0
  92307b:	8d 44 24 28          	lea    eax,[esp+0x28]
  92307f:	50                   	push   eax
  923080:	57                   	push   edi
  923081:	e8 fa a8 bb ff       	call   0x4dd980
  923086:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  92308a:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  92308e:	83 c4 0c             	add    esp,0xc
  923091:	51                   	push   ecx
  923092:	0f b7 4c 24 14       	movzx  ecx,WORD PTR [esp+0x14]
  923097:	c1 e1 04             	shl    ecx,0x4
  92309a:	03 4a 24             	add    ecx,DWORD PTR [edx+0x24]
  92309d:	e8 be fe ff ff       	call   0x922f60
  9230a2:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  9230a6:	33 ed                	xor    ebp,ebp
  9230a8:	85 c0                	test   eax,eax
  9230aa:	8b d8                	mov    ebx,eax
  9230ac:	7e 6a                	jle    0x923118
  9230ae:	8b ff                	mov    edi,edi
  9230b0:	0f b7 44 24 10       	movzx  eax,WORD PTR [esp+0x10]
  9230b5:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  9230b9:	8b 52 24             	mov    edx,DWORD PTR [edx+0x24]
  9230bc:	8b c8                	mov    ecx,eax
  9230be:	c1 e1 04             	shl    ecx,0x4
  9230c1:	8b 0c 11             	mov    ecx,DWORD PTR [ecx+edx*1]
  9230c4:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
  9230cb:	2b d0                	sub    edx,eax
  9230cd:	0f b7 44 24 18       	movzx  eax,WORD PTR [esp+0x18]
  9230d2:	50                   	push   eax
  9230d3:	8d 34 a9             	lea    esi,[ecx+ebp*4]
  9230d6:	8b 0c 95 a4 c0 1d 01 	mov    ecx,DWORD PTR [edx*4+0x11dc0a4]
  9230dd:	57                   	push   edi
  9230de:	ff d1                	call   ecx
  9230e0:	8b 0e                	mov    ecx,DWORD PTR [esi]
  9230e2:	83 c4 08             	add    esp,0x8
  9230e5:	3b c1                	cmp    eax,ecx
  9230e7:	74 28                	je     0x923111
  9230e9:	85 c0                	test   eax,eax
  9230eb:	74 04                	je     0x9230f1
  9230ed:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  9230f1:	85 c9                	test   ecx,ecx
  9230f3:	89 06                	mov    DWORD PTR [esi],eax
  9230f5:	74 1a                	je     0x923111
  9230f7:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  9230fa:	83 c0 ff             	add    eax,0xffffffff
  9230fd:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  923100:	75 0f                	jne    0x923111
  923102:	c7 41 04 01 00 00 00 	mov    DWORD PTR [ecx+0x4],0x1
  923109:	8b 11                	mov    edx,DWORD PTR [ecx]
  92310b:	8b 02                	mov    eax,DWORD PTR [edx]
  92310d:	6a 01                	push   0x1
  92310f:	ff d0                	call   eax
  923111:	83 c5 01             	add    ebp,0x1
  923114:	3b eb                	cmp    ebp,ebx
  923116:	7c 98                	jl     0x9230b0
  923118:	6a 00                	push   0x0
  92311a:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  92311e:	51                   	push   ecx
  92311f:	57                   	push   edi
  923120:	e8 bb a7 bb ff       	call   0x4dd8e0
  923125:	66 8b 44 24 1c       	mov    ax,WORD PTR [esp+0x1c]
  92312a:	83 c4 0c             	add    esp,0xc
  92312d:	66 3d ff ff          	cmp    ax,0xffff
  923131:	0f 85 e9 fe ff ff    	jne    0x923020
  923137:	6a 00                	push   0x0
  923139:	8d 54 24 18          	lea    edx,[esp+0x18]
  92313d:	52                   	push   edx
  92313e:	57                   	push   edi
  92313f:	e8 9c a7 bb ff       	call   0x4dd8e0
  923144:	66 8b 44 24 20       	mov    ax,WORD PTR [esp+0x20]
  923149:	83 c4 0c             	add    esp,0xc
  92314c:	66 3d ff ff          	cmp    ax,0xffff
  923150:	0f 84 0a 01 00 00    	je     0x923260
  923156:	eb 08                	jmp    0x923160
  923158:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  92315f:	90                   	nop
  923160:	0f b7 c0             	movzx  eax,ax
  923163:	c1 e0 05             	shl    eax,0x5
  923166:	83 b8 a8 c7 1d 01 00 	cmp    DWORD PTR [eax+0x11dc7a8],0x0
  92316d:	0f 84 ce 00 00 00    	je     0x923241
  923173:	6a 00                	push   0x0
  923175:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  923179:	51                   	push   ecx
  92317a:	57                   	push   edi
  92317b:	e8 60 a7 bb ff       	call   0x4dd8e0
  923180:	0f b7 44 24 20       	movzx  eax,WORD PTR [esp+0x20]
  923185:	0f b7 4c 24 24       	movzx  ecx,WORD PTR [esp+0x24]
  92318a:	c1 e0 05             	shl    eax,0x5
  92318d:	83 c4 0c             	add    esp,0xc
  923190:	3b 88 b0 c7 1d 01    	cmp    ecx,DWORD PTR [eax+0x11dc7b0]
  923196:	0f 8c 37 04 00 00    	jl     0x9235d3
  92319c:	3b 88 b4 c7 1d 01    	cmp    ecx,DWORD PTR [eax+0x11dc7b4]
  9231a2:	0f 8f 2b 04 00 00    	jg     0x9235d3
  9231a8:	6a 00                	push   0x0
  9231aa:	8d 54 24 28          	lea    edx,[esp+0x28]
  9231ae:	52                   	push   edx
  9231af:	57                   	push   edi
  9231b0:	e8 cb a7 bb ff       	call   0x4dd980
  9231b5:	0f b7 4c 24 20       	movzx  ecx,WORD PTR [esp+0x20]
  9231ba:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  9231be:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  9231c2:	c1 e1 04             	shl    ecx,0x4
  9231c5:	03 4a 34             	add    ecx,DWORD PTR [edx+0x34]
  9231c8:	83 c4 0c             	add    esp,0xc
  9231cb:	50                   	push   eax
  9231cc:	e8 8f fd ff ff       	call   0x922f60
  9231d1:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  9231d5:	33 ed                	xor    ebp,ebp
  9231d7:	85 c0                	test   eax,eax
  9231d9:	8b d8                	mov    ebx,eax
  9231db:	7e 64                	jle    0x923241
  9231dd:	8d 49 00             	lea    ecx,[ecx+0x0]
  9231e0:	0f b7 44 24 14       	movzx  eax,WORD PTR [esp+0x14]
  9231e5:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  9231e9:	8b 52 34             	mov    edx,DWORD PTR [edx+0x34]
  9231ec:	8b c8                	mov    ecx,eax
  9231ee:	c1 e1 04             	shl    ecx,0x4
  9231f1:	8b 0c 11             	mov    ecx,DWORD PTR [ecx+edx*1]
  9231f4:	0f b7 54 24 18       	movzx  edx,WORD PTR [esp+0x18]
  9231f9:	c1 e0 05             	shl    eax,0x5
  9231fc:	8b 80 a8 c7 1d 01    	mov    eax,DWORD PTR [eax+0x11dc7a8]
  923202:	52                   	push   edx
  923203:	57                   	push   edi
  923204:	8d 34 a9             	lea    esi,[ecx+ebp*4]
  923207:	ff d0                	call   eax
  923209:	8b 0e                	mov    ecx,DWORD PTR [esi]
  92320b:	83 c4 08             	add    esp,0x8
  92320e:	3b c1                	cmp    eax,ecx
  923210:	74 28                	je     0x92323a
  923212:	85 c0                	test   eax,eax
  923214:	74 04                	je     0x92321a
  923216:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  92321a:	85 c9                	test   ecx,ecx
  92321c:	89 06                	mov    DWORD PTR [esi],eax
  92321e:	74 1a                	je     0x92323a
  923220:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  923223:	83 c0 ff             	add    eax,0xffffffff
  923226:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  923229:	75 0f                	jne    0x92323a
  92322b:	c7 41 04 01 00 00 00 	mov    DWORD PTR [ecx+0x4],0x1
  923232:	8b 11                	mov    edx,DWORD PTR [ecx]
  923234:	8b 02                	mov    eax,DWORD PTR [edx]
  923236:	6a 01                	push   0x1
  923238:	ff d0                	call   eax
  92323a:	83 c5 01             	add    ebp,0x1
  92323d:	3b eb                	cmp    ebp,ebx
  92323f:	7c 9f                	jl     0x9231e0
  923241:	6a 00                	push   0x0
  923243:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  923247:	51                   	push   ecx
  923248:	57                   	push   edi
  923249:	e8 92 a6 bb ff       	call   0x4dd8e0
  92324e:	66 8b 44 24 20       	mov    ax,WORD PTR [esp+0x20]
  923253:	83 c4 0c             	add    esp,0xc
  923256:	66 3d ff ff          	cmp    ax,0xffff
  92325a:	0f 85 00 ff ff ff    	jne    0x923160
  923260:	6a 00                	push   0x0
  923262:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  923266:	52                   	push   edx
  923267:	57                   	push   edi
  923268:	e8 73 a6 bb ff       	call   0x4dd8e0
  92326d:	6a 00                	push   0x0
  92326f:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  923273:	50                   	push   eax
  923274:	57                   	push   edi
  923275:	e8 06 a7 bb ff       	call   0x4dd980
  92327a:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  92327e:	8b 74 24 38          	mov    esi,DWORD PTR [esp+0x38]
  923282:	83 c4 18             	add    esp,0x18
  923285:	83 c6 44             	add    esi,0x44
  923288:	51                   	push   ecx
  923289:	8b ce                	mov    ecx,esi
  92328b:	e8 30 05 ff ff       	call   0x9137c0
  923290:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  923293:	2b 0e                	sub    ecx,DWORD PTR [esi]
  923295:	b8 39 8e e3 38       	mov    eax,0x38e38e39
  92329a:	f7 e9                	imul   ecx
  92329c:	c1 fa 04             	sar    edx,0x4
  92329f:	8b c2                	mov    eax,edx
  9232a1:	c1 e8 1f             	shr    eax,0x1f
  9232a4:	03 c2                	add    eax,edx
  9232a6:	85 c0                	test   eax,eax
  9232a8:	7e 22                	jle    0x9232cc
  9232aa:	33 ed                	xor    ebp,ebp
  9232ac:	8b d8                	mov    ebx,eax
  9232ae:	8b ff                	mov    edi,edi
  9232b0:	8b 16                	mov    edx,DWORD PTR [esi]
  9232b2:	0f b7 44 24 18       	movzx  eax,WORD PTR [esp+0x18]
  9232b7:	03 d5                	add    edx,ebp
  9232b9:	52                   	push   edx
  9232ba:	50                   	push   eax
  9232bb:	57                   	push   edi
  9232bc:	e8 9f c4 00 00       	call   0x92f760
  9232c1:	83 c4 0c             	add    esp,0xc
  9232c4:	83 c5 48             	add    ebp,0x48
  9232c7:	83 eb 01             	sub    ebx,0x1
  9232ca:	75 e4                	jne    0x9232b0
  9232cc:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  9232d0:	8b 4b 70             	mov    ecx,DWORD PTR [ebx+0x70]
  9232d3:	8b 53 6c             	mov    edx,DWORD PTR [ebx+0x6c]
  9232d6:	8d 73 68             	lea    esi,[ebx+0x68]
  9232d9:	51                   	push   ecx
  9232da:	52                   	push   edx
  9232db:	8b ce                	mov    ecx,esi
  9232dd:	e8 be d2 20 00       	call   0xb305a0
  9232e2:	6a 00                	push   0x0
  9232e4:	8d 44 24 20          	lea    eax,[esp+0x20]
  9232e8:	50                   	push   eax
  9232e9:	57                   	push   edi
  9232ea:	c7 46 0c 00 00 00 00 	mov    DWORD PTR [esi+0xc],0x0
  9232f1:	e8 8a a6 bb ff       	call   0x4dd980
  9232f6:	83 c4 0c             	add    esp,0xc
  9232f9:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
  9232fe:	7c 5a                	jl     0x92335a
  923300:	6a 00                	push   0x0
  923302:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  923306:	51                   	push   ecx
  923307:	57                   	push   edi
  923308:	e8 a3 a7 bb ff       	call   0x4ddab0
  92330d:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  923311:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  923315:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  923319:	83 c4 0c             	add    esp,0xc
  92331c:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
  923320:	c6 44 24 28 00       	mov    BYTE PTR [esp+0x28],0x0
  923325:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  923329:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  92332d:	52                   	push   edx
  92332e:	89 4c 24 54          	mov    DWORD PTR [esp+0x54],ecx
  923332:	8d 44 24 4c          	lea    eax,[esp+0x4c]
  923336:	50                   	push   eax
  923337:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  92333b:	51                   	push   ecx
  92333c:	8b ce                	mov    ecx,esi
  92333e:	e8 0d df fe ff       	call   0x911250
  923343:	6a 00                	push   0x0
  923345:	8d 54 24 20          	lea    edx,[esp+0x20]
  923349:	52                   	push   edx
  92334a:	57                   	push   edi
  92334b:	e8 30 a6 bb ff       	call   0x4dd980
  923350:	83 c4 0c             	add    esp,0xc
  923353:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
  923358:	7d a6                	jge    0x923300
  92335a:	8b 6b 58             	mov    ebp,DWORD PTR [ebx+0x58]
  92335d:	8b 73 54             	mov    esi,DWORD PTR [ebx+0x54]
  923360:	83 c3 54             	add    ebx,0x54
  923363:	3b f5                	cmp    esi,ebp
  923365:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
  923369:	73 25                	jae    0x923390
  92336b:	eb 03                	jmp    0x923370
  92336d:	8d 49 00             	lea    ecx,[ecx+0x0]
  923370:	8b 06                	mov    eax,DWORD PTR [esi]
  923372:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  923375:	2b c8                	sub    ecx,eax
  923377:	83 f9 01             	cmp    ecx,0x1
  92337a:	7e 0d                	jle    0x923389
  92337c:	85 c0                	test   eax,eax
  92337e:	74 09                	je     0x923389
  923380:	50                   	push   eax
  923381:	e8 5a 11 bc ff       	call   0x4e44e0
  923386:	83 c4 04             	add    esp,0x4
  923389:	83 c6 14             	add    esi,0x14
  92338c:	3b f5                	cmp    esi,ebp
  92338e:	72 e0                	jb     0x923370
  923390:	8b 13                	mov    edx,DWORD PTR [ebx]
  923392:	6a 00                	push   0x0
  923394:	8d 44 24 20          	lea    eax,[esp+0x20]
  923398:	50                   	push   eax
  923399:	bd 54 8e 1c 01       	mov    ebp,0x11c8e54
  92339e:	be 55 8e 1c 01       	mov    esi,0x11c8e55
  9233a3:	57                   	push   edi
  9233a4:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
  9233a7:	c7 44 24 50 50 32 04 	mov    DWORD PTR [esp+0x50],0x1043250
  9233ae:	01 
  9233af:	89 6c 24 44          	mov    DWORD PTR [esp+0x44],ebp
  9233b3:	89 6c 24 48          	mov    DWORD PTR [esp+0x48],ebp
  9233b7:	89 74 24 4c          	mov    DWORD PTR [esp+0x4c],esi
  9233bb:	e8 c0 a5 bb ff       	call   0x4dd980
  9233c0:	83 c4 0c             	add    esp,0xc
  9233c3:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
  9233c8:	0f 8c e5 01 00 00    	jl     0x9235b3
  9233ce:	eb 08                	jmp    0x9233d8
  9233d0:	8b 7c 24 60          	mov    edi,DWORD PTR [esp+0x60]
  9233d4:	8b 5c 24 28          	mov    ebx,DWORD PTR [esp+0x28]
  9233d8:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  9233dc:	51                   	push   ecx
  9233dd:	57                   	push   edi
  9233de:	e8 fd 6e fa ff       	call   0x8ca2e0
  9233e3:	8b 6c 24 44          	mov    ebp,DWORD PTR [esp+0x44]
  9233e7:	2b 6c 24 40          	sub    ebp,DWORD PTR [esp+0x40]
  9233eb:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
  9233ef:	8d 75 01             	lea    esi,[ebp+0x1]
  9233f2:	83 c4 08             	add    esp,0x8
  9233f5:	83 fe 01             	cmp    esi,0x1
  9233f8:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  9233fc:	76 22                	jbe    0x923420
  9233fe:	68 e7 00 00 00       	push   0xe7
  923403:	68 88 99 f9 00       	push   0xf99988
  923408:	6a 00                	push   0x0
  92340a:	6a 00                	push   0x0
  92340c:	50                   	push   eax
  92340d:	56                   	push   esi
  92340e:	e8 ed 10 bc ff       	call   0x4e4500
  923413:	8b f8                	mov    edi,eax
  923415:	83 c4 18             	add    esp,0x18
  923418:	03 f7                	add    esi,edi
  92341a:	89 74 24 50          	mov    DWORD PTR [esp+0x50],esi
  92341e:	eb 0d                	jmp    0x92342d
  923420:	bf 54 8e 1c 01       	mov    edi,0x11c8e54
  923425:	c7 44 24 50 55 8e 1c 	mov    DWORD PTR [esp+0x50],0x11c8e55
  92342c:	01 
  92342d:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  923431:	55                   	push   ebp
  923432:	52                   	push   edx
  923433:	57                   	push   edi
  923434:	89 7c 24 54          	mov    DWORD PTR [esp+0x54],edi
  923438:	ff 15 88 66 f9 00    	call   DWORD PTR ds:0xf96688
  92343e:	8b ef                	mov    ebp,edi
  923440:	2b 6c 24 44          	sub    ebp,DWORD PTR [esp+0x44]
  923444:	8d 54 24 54          	lea    edx,[esp+0x54]
  923448:	03 6c 24 48          	add    ebp,DWORD PTR [esp+0x48]
  92344c:	c6 45 00 00          	mov    BYTE PTR [ebp+0x0],0x0
  923450:	0f b6 4b 10          	movzx  ecx,BYTE PTR [ebx+0x10]
  923454:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  923458:	8b 73 04             	mov    esi,DWORD PTR [ebx+0x4]
  92345b:	51                   	push   ecx
  92345c:	52                   	push   edx
  92345d:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  923461:	8b 03                	mov    eax,DWORD PTR [ebx]
  923463:	56                   	push   esi
  923464:	50                   	push   eax
  923465:	89 6c 24 68          	mov    DWORD PTR [esp+0x68],ebp
  923469:	e8 f2 df fe ff       	call   0x911460
  92346e:	8b d8                	mov    ebx,eax
  923470:	83 c4 1c             	add    esp,0x1c
  923473:	3b de                	cmp    ebx,esi
  923475:	74 4d                	je     0x9234c4
  923477:	8b 13                	mov    edx,DWORD PTR [ebx]
  923479:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  92347c:	8b c5                	mov    eax,ebp
  92347e:	2b c7                	sub    eax,edi
  923480:	2b ca                	sub    ecx,edx
  923482:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  923486:	3b c8                	cmp    ecx,eax
  923488:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  92348c:	8d 44 24 20          	lea    eax,[esp+0x20]
  923490:	7c 04                	jl     0x923496
  923492:	8d 44 24 24          	lea    eax,[esp+0x24]
  923496:	8b 08                	mov    ecx,DWORD PTR [eax]
  923498:	51                   	push   ecx
  923499:	52                   	push   edx
  92349a:	57                   	push   edi
  92349b:	e8 a0 6c ae ff       	call   0x40a140
  9234a0:	83 c4 0c             	add    esp,0xc
  9234a3:	85 c0                	test   eax,eax
  9234a5:	75 17                	jne    0x9234be
  9234a7:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  9234ab:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  9234af:	3b c1                	cmp    eax,ecx
  9234b1:	7c 11                	jl     0x9234c4
  9234b3:	33 d2                	xor    edx,edx
  9234b5:	3b c1                	cmp    eax,ecx
  9234b7:	0f 9f c2             	setg   dl
  9234ba:	8b c2                	mov    eax,edx
  9234bc:	85 c0                	test   eax,eax
  9234be:	0f 8d b0 00 00 00    	jge    0x923574
  9234c4:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  9234c8:	3b 71 08             	cmp    esi,DWORD PTR [ecx+0x8]
  9234cb:	0f 84 94 00 00 00    	je     0x923565
  9234d1:	3b de                	cmp    ebx,esi
  9234d3:	0f 85 8c 00 00 00    	jne    0x923565
  9234d9:	8d 46 14             	lea    eax,[esi+0x14]
  9234dc:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  9234df:	33 c9                	xor    ecx,ecx
  9234e1:	3b f1                	cmp    esi,ecx
  9234e3:	0f 84 8b 00 00 00    	je     0x923574
  9234e9:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  9234ed:	8b c5                	mov    eax,ebp
  9234ef:	2b c7                	sub    eax,edi
  9234f1:	8d 58 01             	lea    ebx,[eax+0x1]
  9234f4:	83 fb 01             	cmp    ebx,0x1
  9234f7:	89 0e                	mov    DWORD PTR [esi],ecx
  9234f9:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  9234fc:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  9234ff:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  923502:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  923506:	76 24                	jbe    0x92352c
  923508:	68 e7 00 00 00       	push   0xe7
  92350d:	68 88 99 f9 00       	push   0xf99988
  923512:	51                   	push   ecx
  923513:	51                   	push   ecx
  923514:	8b c2                	mov    eax,edx
  923516:	50                   	push   eax
  923517:	53                   	push   ebx
  923518:	e8 e3 0f bc ff       	call   0x4e4500
  92351d:	83 c4 18             	add    esp,0x18
  923520:	89 06                	mov    DWORD PTR [esi],eax
  923522:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  923525:	03 c3                	add    eax,ebx
  923527:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  92352a:	eb 14                	jmp    0x923540
  92352c:	c7 06 54 8e 1c 01    	mov    DWORD PTR [esi],0x11c8e54
  923532:	c7 46 04 54 8e 1c 01 	mov    DWORD PTR [esi+0x4],0x11c8e54
  923539:	c7 46 08 55 8e 1c 01 	mov    DWORD PTR [esi+0x8],0x11c8e55
  923540:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  923544:	8b 1e                	mov    ebx,DWORD PTR [esi]
  923546:	51                   	push   ecx
  923547:	57                   	push   edi
  923548:	53                   	push   ebx
  923549:	ff 15 88 66 f9 00    	call   DWORD PTR ds:0xf96688
  92354f:	8b 54 24 64          	mov    edx,DWORD PTR [esp+0x64]
  923553:	2b df                	sub    ebx,edi
  923555:	83 c4 0c             	add    esp,0xc
  923558:	03 dd                	add    ebx,ebp
  92355a:	89 5e 04             	mov    DWORD PTR [esi+0x4],ebx
  92355d:	c6 03 00             	mov    BYTE PTR [ebx],0x0
  923560:	89 56 10             	mov    DWORD PTR [esi+0x10],edx
  923563:	eb 0f                	jmp    0x923574
  923565:	8d 44 24 48          	lea    eax,[esp+0x48]
  923569:	50                   	push   eax
  92356a:	53                   	push   ebx
  92356b:	e8 b0 f0 fe ff       	call   0x912620
  923570:	8b 7c 24 48          	mov    edi,DWORD PTR [esp+0x48]
  923574:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  923578:	2b c7                	sub    eax,edi
  92357a:	83 f8 01             	cmp    eax,0x1
  92357d:	7e 0d                	jle    0x92358c
  92357f:	85 ff                	test   edi,edi
  923581:	74 09                	je     0x92358c
  923583:	57                   	push   edi
  923584:	e8 57 0f bc ff       	call   0x4e44e0
  923589:	83 c4 04             	add    esp,0x4
  92358c:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  923590:	6a 00                	push   0x0
  923592:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  923596:	51                   	push   ecx
  923597:	52                   	push   edx
  923598:	e8 e3 a3 bb ff       	call   0x4dd980
  92359d:	83 c4 0c             	add    esp,0xc
  9235a0:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
  9235a5:	0f 8d 25 fe ff ff    	jge    0x9233d0
  9235ab:	8b 74 24 40          	mov    esi,DWORD PTR [esp+0x40]
  9235af:	8b 6c 24 38          	mov    ebp,DWORD PTR [esp+0x38]
  9235b3:	2b f5                	sub    esi,ebp
  9235b5:	83 fe 01             	cmp    esi,0x1
  9235b8:	7e 0d                	jle    0x9235c7
  9235ba:	85 ed                	test   ebp,ebp
  9235bc:	74 09                	je     0x9235c7
  9235be:	55                   	push   ebp
  9235bf:	e8 1c 0f bc ff       	call   0x4e44e0
  9235c4:	83 c4 04             	add    esp,0x4
  9235c7:	5e                   	pop    esi
  9235c8:	5d                   	pop    ebp
  9235c9:	5b                   	pop    ebx
  9235ca:	b0 01                	mov    al,0x1
  9235cc:	5f                   	pop    edi
  9235cd:	83 c4 4c             	add    esp,0x4c
  9235d0:	c2 04 00             	ret    0x4
  9235d3:	5e                   	pop    esi
  9235d4:	5d                   	pop    ebp
  9235d5:	5b                   	pop    ebx
  9235d6:	32 c0                	xor    al,al
  9235d8:	5f                   	pop    edi
  9235d9:	83 c4 4c             	add    esp,0x4c
  9235dc:	c2 04 00             	ret    0x4
  9235df:	32 c0                	xor    al,al
  9235e1:	5f                   	pop    edi
  9235e2:	83 c4 4c             	add    esp,0x4c
  9235e5:	c2 04 00             	ret    0x4
