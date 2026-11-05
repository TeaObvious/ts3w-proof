/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GfxDevice_GetViewport. Export ordinal(s): 1850.
   Entry VA: 0x10985a50. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000ACD. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int * __cdecl GfxDevice_GetViewport(int *param_1)

{
  void *this;
  bool bVar1;
  int local_10;
  int local_c;
  int local_8;
  int local_4;
  
                    /* 0x985a50  1850  GfxDevice_GetViewport */
  this = DAT_10c735e8;
  bVar1 = DAT_10c735e8 != (void *)0x0;
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  if (bVar1) {
    FUN_1040b140(this,&local_10);
    *param_1 = local_10;
    param_1[1] = local_c;
    param_1[2] = local_8;
    param_1[3] = local_4;
  }
  return param_1;
}

