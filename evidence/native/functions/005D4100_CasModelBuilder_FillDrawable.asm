# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

005d4100 <.text+0x1d3100>:
  5d4100:	83 ec 34             	sub    esp,0x34
  5d4103:	53                   	push   ebx
  5d4104:	55                   	push   ebp
  5d4105:	56                   	push   esi
  5d4106:	8b 74 24 44          	mov    esi,DWORD PTR [esp+0x44]
  5d410a:	8b 5e 20             	mov    ebx,DWORD PTR [esi+0x20]
  5d410d:	69 db d0 00 00 00    	imul   ebx,ebx,0xd0
  5d4113:	8b e9                	mov    ebp,ecx
  5d4115:	03 9d 34 01 00 00    	add    ebx,DWORD PTR [ebp+0x134]
  5d411b:	57                   	push   edi
  5d411c:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
  5d411f:	a8 60                	test   al,0x60
  5d4121:	c7 44 24 14 04 00 00 	mov    DWORD PTR [esp+0x14],0x4
  5d4128:	00 
  5d4129:	74 0a                	je     0x5d4135
  5d412b:	c7 44 24 14 02 00 00 	mov    DWORD PTR [esp+0x14],0x2
  5d4132:	00 
  5d4133:	eb 0c                	jmp    0x5d4141
  5d4135:	84 c0                	test   al,al
  5d4137:	79 08                	jns    0x5d4141
  5d4139:	c7 44 24 14 01 00 00 	mov    DWORD PTR [esp+0x14],0x1
  5d4140:	00 
  5d4141:	8b 8b a8 00 00 00    	mov    ecx,DWORD PTR [ebx+0xa8]
  5d4147:	8b 56 38             	mov    edx,DWORD PTR [esi+0x38]
  5d414a:	8b bb a4 00 00 00    	mov    edi,DWORD PTR [ebx+0xa4]
  5d4150:	33 c0                	xor    eax,eax
  5d4152:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  5d4156:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  5d4159:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  5d415d:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  5d4161:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  5d4165:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  5d4169:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  5d416d:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  5d4171:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  5d4175:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  5d4179:	0f b7 56 20          	movzx  edx,WORD PTR [esi+0x20]
  5d417d:	50                   	push   eax
  5d417e:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  5d4182:	51                   	push   ecx
  5d4183:	8d 4d 34             	lea    ecx,[ebp+0x34]
  5d4186:	c6 44 24 50 01       	mov    BYTE PTR [esp+0x50],0x1
  5d418b:	c7 44 24 48 94 4a fe 	mov    DWORD PTR [esp+0x48],0xfe4a94
  5d4192:	00 
  5d4193:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  5d4197:	e8 14 1f 05 00       	call   0x6260b0
  5d419c:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  5d41a0:	8d 45 38             	lea    eax,[ebp+0x38]
  5d41a3:	3b c8                	cmp    ecx,eax
  5d41a5:	74 0a                	je     0x5d41b1
  5d41a7:	8b 49 1c             	mov    ecx,DWORD PTR [ecx+0x1c]
  5d41aa:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  5d41ad:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  5d41b1:	3b 7c 24 1c          	cmp    edi,DWORD PTR [esp+0x1c]
  5d41b5:	0f 84 ac 00 00 00    	je     0x5d4267
  5d41bb:	eb 03                	jmp    0x5d41c0
  5d41bd:	8d 49 00             	lea    ecx,[ecx+0x0]
  5d41c0:	80 7e 42 00          	cmp    BYTE PTR [esi+0x42],0x0
  5d41c4:	0f 84 90 00 00 00    	je     0x5d425a
  5d41ca:	8d 46 08             	lea    eax,[esi+0x8]
  5d41cd:	50                   	push   eax
  5d41ce:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  5d41d2:	e8 a9 f4 ff ff       	call   0x5d3680
  5d41d7:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
  5d41da:	f6 c1 03             	test   cl,0x3
  5d41dd:	75 05                	jne    0x5d41e4
  5d41df:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
  5d41e2:	eb 02                	jmp    0x5d41e6
  5d41e4:	33 c9                	xor    ecx,ecx
  5d41e6:	0f b6 56 45          	movzx  edx,BYTE PTR [esi+0x45]
  5d41ea:	52                   	push   edx
  5d41eb:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  5d41ef:	52                   	push   edx
  5d41f0:	8d 47 30             	lea    eax,[edi+0x30]
  5d41f3:	8d 54 24 28          	lea    edx,[esp+0x28]
  5d41f7:	52                   	push   edx
  5d41f8:	8d 50 10             	lea    edx,[eax+0x10]
  5d41fb:	52                   	push   edx
  5d41fc:	50                   	push   eax
  5d41fd:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  5d4201:	50                   	push   eax
  5d4202:	8d 53 78             	lea    edx,[ebx+0x78]
  5d4205:	52                   	push   edx
  5d4206:	8d 43 40             	lea    eax,[ebx+0x40]
  5d4209:	50                   	push   eax
  5d420a:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
  5d420d:	8d 54 24 68          	lea    edx,[esp+0x68]
  5d4211:	52                   	push   edx
  5d4212:	0f b7 56 40          	movzx  edx,WORD PTR [esi+0x40]
  5d4216:	50                   	push   eax
  5d4217:	52                   	push   edx
  5d4218:	8d 44 24 60          	lea    eax,[esp+0x60]
  5d421c:	50                   	push   eax
  5d421d:	51                   	push   ecx
  5d421e:	8b cd                	mov    ecx,ebp
  5d4220:	e8 7b d7 ff ff       	call   0x5d19a0
  5d4225:	89 46 38             	mov    DWORD PTR [esi+0x38],eax
  5d4228:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
  5d422b:	f6 c1 03             	test   cl,0x3
  5d422e:	75 05                	jne    0x5d4235
  5d4230:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  5d4233:	eb 02                	jmp    0x5d4237
  5d4235:	33 c0                	xor    eax,eax
  5d4237:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  5d423b:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  5d423e:	52                   	push   edx
  5d423f:	51                   	push   ecx
  5d4240:	50                   	push   eax
  5d4241:	e8 9a 57 ff ff       	call   0x5c99e0
  5d4246:	89 46 34             	mov    DWORD PTR [esi+0x34],eax
  5d4249:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
  5d424c:	8b 11                	mov    edx,DWORD PTR [ecx]
  5d424e:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
  5d4251:	83 c4 0c             	add    esp,0xc
  5d4254:	ff d0                	call   eax
  5d4256:	01 44 24 10          	add    DWORD PTR [esp+0x10],eax
  5d425a:	83 c7 50             	add    edi,0x50
  5d425d:	3b 7c 24 1c          	cmp    edi,DWORD PTR [esp+0x1c]
  5d4261:	0f 85 59 ff ff ff    	jne    0x5d41c0
  5d4267:	80 7e 42 00          	cmp    BYTE PTR [esi+0x42],0x0
  5d426b:	74 4f                	je     0x5d42bc
  5d426d:	80 7e 44 00          	cmp    BYTE PTR [esi+0x44],0x0
  5d4271:	74 49                	je     0x5d42bc
  5d4273:	0f b7 56 40          	movzx  edx,WORD PTR [esi+0x40]
  5d4277:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  5d427b:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  5d427e:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
  5d4281:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
  5d4285:	51                   	push   ecx
  5d4286:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  5d428a:	52                   	push   edx
  5d428b:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  5d428f:	51                   	push   ecx
  5d4290:	50                   	push   eax
  5d4291:	57                   	push   edi
  5d4292:	52                   	push   edx
  5d4293:	e8 58 e0 ff ff       	call   0x5d22f0
  5d4298:	66 0f b6 4c 24 38    	movzx  cx,BYTE PTR [esp+0x38]
  5d429e:	0f b7 56 40          	movzx  edx,WORD PTR [esi+0x40]
  5d42a2:	8d 44 24 30          	lea    eax,[esp+0x30]
  5d42a6:	50                   	push   eax
  5d42a7:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  5d42ab:	51                   	push   ecx
  5d42ac:	52                   	push   edx
  5d42ad:	50                   	push   eax
  5d42ae:	57                   	push   edi
  5d42af:	e8 8c 56 ff ff       	call   0x5c9940
  5d42b4:	83 c4 2c             	add    esp,0x2c
  5d42b7:	89 46 38             	mov    DWORD PTR [esi+0x38],eax
  5d42ba:	eb 04                	jmp    0x5d42c0
  5d42bc:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
  5d42c0:	80 7e 42 00          	cmp    BYTE PTR [esi+0x42],0x0
  5d42c4:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  5d42c8:	89 7e 38             	mov    DWORD PTR [esi+0x38],edi
  5d42cb:	89 4e 34             	mov    DWORD PTR [esi+0x34],ecx
  5d42ce:	74 73                	je     0x5d4343
  5d42d0:	f7 43 0c 00 00 04 00 	test   DWORD PTR [ebx+0xc],0x40000
  5d42d7:	74 6a                	je     0x5d4343
  5d42d9:	8b 7d 28             	mov    edi,DWORD PTR [ebp+0x28]
  5d42dc:	8d 45 28             	lea    eax,[ebp+0x28]
  5d42df:	3b f8                	cmp    edi,eax
  5d42e1:	c7 44 24 14 01 00 00 	mov    DWORD PTR [esp+0x14],0x1
  5d42e8:	00 
  5d42e9:	74 58                	je     0x5d4343
  5d42eb:	8b 85 f0 02 00 00    	mov    eax,DWORD PTR [ebp+0x2f0]
  5d42f1:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  5d42f5:	50                   	push   eax
  5d42f6:	51                   	push   ecx
  5d42f7:	51                   	push   ecx
  5d42f8:	8b c4                	mov    eax,esp
  5d42fa:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  5d4300:	8b 0d 84 4c 1d 01    	mov    ecx,DWORD PTR ds:0x11d4c84
  5d4306:	85 c9                	test   ecx,ecx
  5d4308:	8d 57 08             	lea    edx,[edi+0x8]
  5d430b:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  5d430f:	74 1c                	je     0x5d432d
  5d4311:	8b 11                	mov    edx,DWORD PTR [ecx]
  5d4313:	6a 00                	push   0x0
  5d4315:	6a 00                	push   0x0
  5d4317:	6a 01                	push   0x1
  5d4319:	68 a0 b3 d4 00       	push   0xd4b3a0
  5d431e:	68 d0 56 5e 00       	push   0x5e56d0
  5d4323:	ff 74 24 48          	push   DWORD PTR [esp+0x48]
  5d4327:	50                   	push   eax
  5d4328:	8b 42 38             	mov    eax,DWORD PTR [edx+0x38]
  5d432b:	ff d0                	call   eax
  5d432d:	56                   	push   esi
  5d432e:	8b cd                	mov    ecx,ebp
  5d4330:	e8 3b 96 ff ff       	call   0x5cd970
  5d4335:	8b 3f                	mov    edi,DWORD PTR [edi]
  5d4337:	83 44 24 14 01       	add    DWORD PTR [esp+0x14],0x1
  5d433c:	8d 45 28             	lea    eax,[ebp+0x28]
  5d433f:	3b f8                	cmp    edi,eax
  5d4341:	75 a8                	jne    0x5d42eb
  5d4343:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  5d4347:	81 c5 ac 01 00 00    	add    ebp,0x1ac
  5d434d:	f0 0f c1 4d 00       	lock xadd DWORD PTR [ebp+0x0],ecx
  5d4352:	80 7e 42 00          	cmp    BYTE PTR [esi+0x42],0x0
  5d4356:	74 26                	je     0x5d437e
  5d4358:	80 7e 43 00          	cmp    BYTE PTR [esi+0x43],0x0
  5d435c:	75 20                	jne    0x5d437e
  5d435e:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
  5d4361:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  5d4364:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  5d4367:	83 c3 40             	add    ebx,0x40
  5d436a:	53                   	push   ebx
  5d436b:	52                   	push   edx
  5d436c:	8b 56 1c             	mov    edx,DWORD PTR [esi+0x1c]
  5d436f:	50                   	push   eax
  5d4370:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  5d4373:	51                   	push   ecx
  5d4374:	52                   	push   edx
  5d4375:	50                   	push   eax
  5d4376:	e8 55 ad ff ff       	call   0x5cf0d0
  5d437b:	83 c4 18             	add    esp,0x18
  5d437e:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  5d4382:	85 c0                	test   eax,eax
  5d4384:	74 09                	je     0x5d438f
  5d4386:	50                   	push   eax
  5d4387:	e8 54 01 f1 ff       	call   0x4e44e0
  5d438c:	83 c4 04             	add    esp,0x4
  5d438f:	5f                   	pop    edi
  5d4390:	5e                   	pop    esi
  5d4391:	5d                   	pop    ebp
  5d4392:	b0 01                	mov    al,0x1
  5d4394:	5b                   	pop    ebx
  5d4395:	83 c4 34             	add    esp,0x34
  5d4398:	c2 04 00             	ret    0x4
