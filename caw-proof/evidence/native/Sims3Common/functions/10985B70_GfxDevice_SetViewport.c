/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GfxDevice_SetViewport. Export ordinal(s): 1854.
   Entry VA: 0x10985b70. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000ACE. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl GfxDevice_SetViewport(int param_1,int param_2,int param_3,int param_4)

{
  int local_1c;
  int local_18;
  undefined4 local_14;
  int local_10;
  int local_c;
  int local_8;
  int local_4;
  
                    /* 0x985b70  1854  GfxDevice_SetViewport */
  if (DAT_10c735e8 != (void *)0x0) {
    FUN_104098a0(DAT_10c735e8,&local_1c,&local_18,&local_14);
    if (param_1 < 0) {
      param_1 = 0;
    }
    if (param_2 < 0) {
      param_2 = 0;
    }
    if (local_1c < param_3) {
      param_3 = local_1c;
    }
    if (local_18 < param_4) {
      param_4 = local_18;
    }
    local_10 = param_1;
    local_c = param_2;
    local_8 = param_3;
    local_4 = param_4;
    FUN_1040b170(DAT_10c735e8,&local_10,0,0x3f800000);
  }
  return;
}

