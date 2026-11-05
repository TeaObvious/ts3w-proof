/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StopWatch_Create. Export ordinal(s): 2437. Entry
   VA: 0x109933c0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000598. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

DWORD * __cdecl StopWatch_Create(undefined4 param_1)

{
  void *this;
  DWORD *pDVar1;
  
                    /* 0x9933c0  2437  StopWatch_Create */
  this = (void *)FUN_10918eb0(0x18,"StopWatch_Create",0);
  if (this != (void *)0x0) {
    pDVar1 = FUN_10926ca0(this,param_1,'\0');
    return pDVar1;
  }
  return (DWORD *)0x0;
}

