# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00791fc0,0x0079229c); analyst name World_InvokePortalLockedCallback.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00791fc0 <.text+0x390fc0>:
  791fc0:	81 ec 08 01 00 00    	sub    esp,0x108
  791fc6:	53                   	push   ebx
  791fc7:	55                   	push   ebp
  791fc8:	33 ed                	xor    ebp,ebp
  791fca:	56                   	push   esi
  791fcb:	57                   	push   edi
  791fcc:	bf f4 a6 fb 00       	mov    edi,0xfba6f4
  791fd1:	8d 84 24 1c 01 00 00 	lea    eax,[esp+0x11c]
  791fd8:	be 02 00 00 00       	mov    esi,0x2
  791fdd:	50                   	push   eax
  791fde:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  791fe2:	89 7c 24 3c          	mov    DWORD PTR [esp+0x3c],edi
  791fe6:	66 89 6c 24 44       	mov    WORD PTR [esp+0x44],bp
  791feb:	66 89 6c 24 46       	mov    WORD PTR [esp+0x46],bp
  791ff0:	89 7c 24 5c          	mov    DWORD PTR [esp+0x5c],edi
  791ff4:	66 89 6c 24 64       	mov    WORD PTR [esp+0x64],bp
  791ff9:	66 89 6c 24 66       	mov    WORD PTR [esp+0x66],bp
  791ffe:	89 7c 24 7c          	mov    DWORD PTR [esp+0x7c],edi
  792002:	66 89 ac 24 84 00 00 00 	mov    WORD PTR [esp+0x84],bp
  79200a:	66 89 ac 24 86 00 00 00 	mov    WORD PTR [esp+0x86],bp
  792012:	89 bc 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],edi
  792019:	66 89 ac 24 a4 00 00 00 	mov    WORD PTR [esp+0xa4],bp
  792021:	66 89 ac 24 a6 00 00 00 	mov    WORD PTR [esp+0xa6],bp
  792029:	89 bc 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],edi
  792030:	66 89 ac 24 c4 00 00 00 	mov    WORD PTR [esp+0xc4],bp
  792038:	66 89 ac 24 c6 00 00 00 	mov    WORD PTR [esp+0xc6],bp
  792040:	89 bc 24 dc 00 00 00 	mov    DWORD PTR [esp+0xdc],edi
  792047:	66 89 ac 24 e4 00 00 00 	mov    WORD PTR [esp+0xe4],bp
  79204f:	66 89 ac 24 e6 00 00 00 	mov    WORD PTR [esp+0xe6],bp
  792057:	89 bc 24 fc 00 00 00 	mov    DWORD PTR [esp+0xfc],edi
  79205e:	66 89 ac 24 04 01 00 00 	mov    WORD PTR [esp+0x104],bp
  792066:	66 89 ac 24 06 01 00 00 	mov    WORD PTR [esp+0x106],bp
  79206e:	c7 44 24 14 6c 88 00 01 	mov    DWORD PTR [esp+0x14],0x100886c
  792076:	66 c7 44 24 1e 0c 00 	mov    WORD PTR [esp+0x1e],0xc
  79207d:	66 89 74 24 1c       	mov    WORD PTR [esp+0x1c],si
  792082:	e8 99 3f d6 ff       	call   0x4f6020
  792087:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  79208b:	51                   	push   ecx
  79208c:	8d 4c 24 5c          	lea    ecx,[esp+0x5c]
  792090:	e8 1b 44 d6 ff       	call   0x4f64b0
  792095:	b3 04                	mov    bl,0x4
  792097:	84 5c 24 18          	test   BYTE PTR [esp+0x18],bl
  79209b:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
  79209f:	74 0a                	je     0x7920ab
  7920a1:	55                   	push   ebp
  7920a2:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  7920a6:	e8 b5 36 d6 ff       	call   0x4f5760
  7920ab:	8d 94 24 24 01 00 00 	lea    edx,[esp+0x124]
  7920b2:	52                   	push   edx
  7920b3:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  7920b7:	c7 44 24 14 6c 88 00 01 	mov    DWORD PTR [esp+0x14],0x100886c
  7920bf:	66 c7 44 24 1e 0c 00 	mov    WORD PTR [esp+0x1e],0xc
  7920c6:	66 89 74 24 1c       	mov    WORD PTR [esp+0x1c],si
  7920cb:	e8 50 3f d6 ff       	call   0x4f6020
  7920d0:	8d 44 24 10          	lea    eax,[esp+0x10]
  7920d4:	50                   	push   eax
  7920d5:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  7920d9:	e8 d2 43 d6 ff       	call   0x4f64b0
  7920de:	84 5c 24 18          	test   BYTE PTR [esp+0x18],bl
  7920e2:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
  7920e6:	74 0a                	je     0x7920f2
  7920e8:	55                   	push   ebp
  7920e9:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  7920ed:	e8 6e 36 d6 ff       	call   0x4f5760
  7920f2:	8d 8c 24 2c 01 00 00 	lea    ecx,[esp+0x12c]
  7920f9:	51                   	push   ecx
  7920fa:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  7920fe:	c7 44 24 14 6c 88 00 01 	mov    DWORD PTR [esp+0x14],0x100886c
  792106:	66 c7 44 24 1e 0c 00 	mov    WORD PTR [esp+0x1e],0xc
  79210d:	66 89 74 24 1c       	mov    WORD PTR [esp+0x1c],si
  792112:	e8 09 3f d6 ff       	call   0x4f6020
  792117:	8d 54 24 10          	lea    edx,[esp+0x10]
  79211b:	52                   	push   edx
  79211c:	8d 8c 24 9c 00 00 00 	lea    ecx,[esp+0x9c]
  792123:	e8 88 43 d6 ff       	call   0x4f64b0
  792128:	84 5c 24 18          	test   BYTE PTR [esp+0x18],bl
  79212c:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
  792130:	74 0a                	je     0x79213c
  792132:	55                   	push   ebp
  792133:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  792137:	e8 24 36 d6 ff       	call   0x4f5760
  79213c:	8d 84 24 34 01 00 00 	lea    eax,[esp+0x134]
  792143:	50                   	push   eax
  792144:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  792148:	c7 44 24 14 6c 88 00 01 	mov    DWORD PTR [esp+0x14],0x100886c
  792150:	66 c7 44 24 1e 07 00 	mov    WORD PTR [esp+0x1e],0x7
  792157:	66 89 74 24 1c       	mov    WORD PTR [esp+0x1c],si
  79215c:	e8 bf 3c d6 ff       	call   0x4f5e20
  792161:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  792165:	51                   	push   ecx
  792166:	8d 8c 24 bc 00 00 00 	lea    ecx,[esp+0xbc]
  79216d:	e8 3e 43 d6 ff       	call   0x4f64b0
  792172:	84 5c 24 18          	test   BYTE PTR [esp+0x18],bl
  792176:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
  79217a:	74 0a                	je     0x792186
  79217c:	55                   	push   ebp
  79217d:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  792181:	e8 da 35 d6 ff       	call   0x4f5760
  792186:	8d 94 24 38 01 00 00 	lea    edx,[esp+0x138]
  79218d:	52                   	push   edx
  79218e:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  792192:	c7 44 24 14 6c 88 00 01 	mov    DWORD PTR [esp+0x14],0x100886c
  79219a:	66 c7 44 24 1e 07 00 	mov    WORD PTR [esp+0x1e],0x7
  7921a1:	66 89 74 24 1c       	mov    WORD PTR [esp+0x1c],si
  7921a6:	e8 75 3c d6 ff       	call   0x4f5e20
  7921ab:	8d 44 24 10          	lea    eax,[esp+0x10]
  7921af:	50                   	push   eax
  7921b0:	8d 8c 24 dc 00 00 00 	lea    ecx,[esp+0xdc]
  7921b7:	e8 f4 42 d6 ff       	call   0x4f64b0
  7921bc:	84 5c 24 18          	test   BYTE PTR [esp+0x18],bl
  7921c0:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
  7921c4:	74 0a                	je     0x7921d0
  7921c6:	55                   	push   ebp
  7921c7:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  7921cb:	e8 90 35 d6 ff       	call   0x4f5760
  7921d0:	8a 8c 24 3c 01 00 00 	mov    cl,BYTE PTR [esp+0x13c]
  7921d7:	8d 54 24 10          	lea    edx,[esp+0x10]
  7921db:	88 4c 24 20          	mov    BYTE PTR [esp+0x20],cl
  7921df:	52                   	push   edx
  7921e0:	8d 8c 24 fc 00 00 00 	lea    ecx,[esp+0xfc]
  7921e7:	c7 44 24 14 6c 88 00 01 	mov    DWORD PTR [esp+0x14],0x100886c
  7921ef:	66 c7 44 24 1e 01 00 	mov    WORD PTR [esp+0x1e],0x1
  7921f6:	66 89 74 24 1c       	mov    WORD PTR [esp+0x1c],si
  7921fb:	e8 b0 42 d6 ff       	call   0x4f64b0
  792200:	84 5c 24 18          	test   BYTE PTR [esp+0x18],bl
  792204:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
  792208:	74 0a                	je     0x792214
  79220a:	55                   	push   ebp
  79220b:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  79220f:	e8 4c 35 d6 ff       	call   0x4f5760
  792214:	6a 06                	push   0x6
  792216:	8d 44 24 5c          	lea    eax,[esp+0x5c]
  79221a:	50                   	push   eax
  79221b:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  79221f:	6a 3b                	push   0x3b
  792221:	51                   	push   ecx
  792222:	e8 49 d4 ff ff       	call   0x78f670
  792227:	83 c4 10             	add    esp,0x10
  79222a:	50                   	push   eax
  79222b:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  79222f:	e8 7c 42 d6 ff       	call   0x4f64b0
  792234:	84 5c 24 18          	test   BYTE PTR [esp+0x18],bl
  792238:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
  79223c:	74 0a                	je     0x792248
  79223e:	55                   	push   ebp
  79223f:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  792243:	e8 18 35 d6 ff       	call   0x4f5760
  792248:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  79224c:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  792250:	8d b4 24 18 01 00 00 	lea    esi,[esp+0x118]
  792257:	c7 44 24 30 05 00 00 00 	mov    DWORD PTR [esp+0x30],0x5
  79225f:	90                   	nop
  792260:	83 ee 20             	sub    esi,0x20
  792263:	84 5e 08             	test   BYTE PTR [esi+0x8],bl
  792266:	89 3e                	mov    DWORD PTR [esi],edi
  792268:	74 08                	je     0x792272
  79226a:	55                   	push   ebp
  79226b:	8b ce                	mov    ecx,esi
  79226d:	e8 ee 34 d6 ff       	call   0x4f5760
  792272:	83 6c 24 30 01       	sub    DWORD PTR [esp+0x30],0x1
  792277:	79 e7                	jns    0x792260
  792279:	84 5c 24 40          	test   BYTE PTR [esp+0x40],bl
  79227d:	89 7c 24 38          	mov    DWORD PTR [esp+0x38],edi
  792281:	74 0a                	je     0x79228d
  792283:	55                   	push   ebp
  792284:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  792288:	e8 d3 34 d6 ff       	call   0x4f5760
  79228d:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  792291:	5f                   	pop    edi
  792292:	5e                   	pop    esi
  792293:	5d                   	pop    ebp
  792294:	5b                   	pop    ebx
  792295:	81 c4 08 01 00 00    	add    esp,0x108
  79229b:	c3                   	ret
