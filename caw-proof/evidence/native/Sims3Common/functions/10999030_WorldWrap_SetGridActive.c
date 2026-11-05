/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_SetGridActive. Export ordinal(s): 2700.
   Entry VA: 0x10999030. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004F0. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl WorldWrap_SetGridActive(int param_1,char param_2)

{
  void *this;
  void *pvVar1;
  uint uVar2;
  
                    /* 0x999030  2700  WorldWrap_SetGridActive */
  this = *(void **)(param_1 + 0x6c);
  if (this != (void *)0x0) {
    pvVar1 = (void *)FUN_10409fe0(param_1);
    uVar2 = FUN_102002b0(this,pvVar1,param_2);
    return uVar2 & 0xff;
  }
  return 0;
}

