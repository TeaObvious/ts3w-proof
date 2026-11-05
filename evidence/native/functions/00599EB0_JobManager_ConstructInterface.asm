# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00599eb0..00599f57; JobManager_ConstructInterface
  599eb0:	56                   	push   esi
  599eb1:	8b f1                	mov    esi,ecx
  599eb3:	6a 01                	push   0x1
  599eb5:	6a 00                	push   0x0
  599eb7:	8d 4e 08             	lea    ecx,[esi+0x8]
  599eba:	c7 06 0c a8 fd 00    	mov    DWORD PTR [esi],0xfda80c
  599ec0:	e8 2b 7e f4 ff       	call   0x4e1cf0
  599ec5:	8d 46 38             	lea    eax,[esi+0x38]
  599ec8:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  599ecb:	89 00                	mov    DWORD PTR [eax],eax
  599ecd:	8d 46 40             	lea    eax,[esi+0x40]
  599ed0:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  599ed3:	89 00                	mov    DWORD PTR [eax],eax
  599ed5:	8d 46 48             	lea    eax,[esi+0x48]
  599ed8:	8d 48 08             	lea    ecx,[eax+0x8]
  599edb:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  599ede:	89 09                	mov    DWORD PTR [ecx],ecx
  599ee0:	8d 48 10             	lea    ecx,[eax+0x10]
  599ee3:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  599ee6:	89 09                	mov    DWORD PTR [ecx],ecx
  599ee8:	8d 48 18             	lea    ecx,[eax+0x18]
  599eeb:	89 48 1c             	mov    DWORD PTR [eax+0x1c],ecx
  599eee:	89 09                	mov    DWORD PTR [ecx],ecx
  599ef0:	8d 48 20             	lea    ecx,[eax+0x20]
  599ef3:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  599ef6:	89 09                	mov    DWORD PTR [ecx],ecx
  599ef8:	8d 48 28             	lea    ecx,[eax+0x28]
  599efb:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
  599efe:	89 09                	mov    DWORD PTR [ecx],ecx
  599f00:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  599f03:	89 00                	mov    DWORD PTR [eax],eax
  599f05:	8d 48 30             	lea    ecx,[eax+0x30]
  599f08:	89 48 34             	mov    DWORD PTR [eax+0x34],ecx
  599f0b:	89 09                	mov    DWORD PTR [ecx],ecx
  599f0d:	8d 48 38             	lea    ecx,[eax+0x38]
  599f10:	89 48 3c             	mov    DWORD PTR [eax+0x3c],ecx
  599f13:	89 09                	mov    DWORD PTR [ecx],ecx
  599f15:	8d 86 88 00 00 00    	lea    eax,[esi+0x88]
  599f1b:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  599f1e:	89 00                	mov    DWORD PTR [eax],eax
  599f20:	c7 86 90 00 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x90],0x0
  599f2a:	8d 86 94 00 00 00    	lea    eax,[esi+0x94]
  599f30:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  599f33:	89 00                	mov    DWORD PTR [eax],eax
  599f35:	8d 86 9c 00 00 00    	lea    eax,[esi+0x9c]
  599f3b:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  599f3e:	89 00                	mov    DWORD PTR [eax],eax
  599f40:	c7 86 a8 00 00 00 00 00 00 00 	mov    DWORD PTR [esi+0xa8],0x0
  599f4a:	c7 86 ac 00 00 00 00 00 00 00 	mov    DWORD PTR [esi+0xac],0x0
  599f54:	8b c6                	mov    eax,esi
  599f56:	5e                   	pop    esi
  599f57:	c3                   	ret
