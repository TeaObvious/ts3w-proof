/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Returns cached current-thread identity from TlsGetValue when
   available. Otherwise duplicates current-thread handle, lazily allocates TLS index0114d908,
   updates shared tracking and caches handle. JobManager compares this identity with
   registeredworker+24 to decide whether its wait can pump queued jobs. DuplicateHandle/TLS failure
   handling does not establish arbitrary failure safety; exact kernel thread scheduling is outside
   this static scope. No input parameters; RET. */

void * __cdecl ThreadIdentity_GetCurrentCachedHandle(void)

{
  LPVOID pvVar1;
  HANDLE hSourceHandle;
  HANDLE hTargetProcessHandle;
  HANDLE hSourceProcessHandle;
  LPVOID pvVar2;
  LPVOID *lpTargetHandle;
  DWORD dwDesiredAccess;
  BOOL BVar3;
  char cVar4;
  DWORD dwOptions;
  LPVOID local_4;
  
  if ((DAT_0114d908 != 0xffffffff) && (pvVar1 = TlsGetValue(DAT_0114d908), pvVar1 != (LPVOID)0x0)) {
    return pvVar1;
  }
  hSourceHandle = GetCurrentThread();
  dwOptions = 2;
  BVar3 = 1;
  dwDesiredAccess = 0;
  lpTargetHandle = &local_4;
  hTargetProcessHandle = GetCurrentProcess();
  hSourceProcessHandle = GetCurrentProcess();
  BVar3 = DuplicateHandle(hSourceProcessHandle,hSourceHandle,hTargetProcessHandle,lpTargetHandle,
                          dwDesiredAccess,BVar3,dwOptions);
  pvVar1 = local_4;
  if (BVar3 == 0) {
    return local_4;
  }
  if ((DAT_0114d908 == 0xffffffff) && (DAT_0114d908 = TlsAlloc(), DAT_0114d908 == 0xffffffff)) {
    return local_4;
  }
  FUN_004e15f0(&DAT_011c8e60,'\0');
  if (pvVar1 == (LPVOID)0x0) {
    pvVar2 = TlsGetValue(DAT_0114d908);
    if (pvVar2 == (LPVOID)0x0) goto LAB_004e1815;
    cVar4 = '\0';
  }
  else {
    cVar4 = '\x01';
    pvVar2 = pvVar1;
  }
  FUN_004e1670(&DAT_011c8e60,pvVar2,cVar4);
LAB_004e1815:
  TlsSetValue(DAT_0114d908,pvVar1);
  return local_4;
}

