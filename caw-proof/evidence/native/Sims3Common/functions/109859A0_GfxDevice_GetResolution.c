/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GfxDevice_GetResolution. Export ordinal(s): 1849.
   Entry VA: 0x109859a0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000AC9. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl GfxDevice_GetResolution(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 local_4;
  
  puVar2 = param_2;
                    /* 0x9859a0  1849  GfxDevice_GetResolution */
  puVar1 = param_1;
  *param_1 = 0;
  *param_2 = 0;
  if (DAT_10c735e8 != (void *)0x0) {
    FUN_104098a0(DAT_10c735e8,&param_1,&param_2,&local_4);
    *puVar1 = param_1;
    *puVar2 = param_2;
  }
  return;
}

