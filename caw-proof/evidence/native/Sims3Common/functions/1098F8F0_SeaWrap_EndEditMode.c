/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SeaWrap_EndEditMode. Export ordinal(s): 2294.
   Entry VA: 0x1098f8f0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000BE1. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
SeaWrap_EndEditMode(void *param_1,int param_2,undefined4 param_3,undefined4 param_4,
                   undefined4 param_5,undefined4 param_6)

{
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x98f8f0  2294  SeaWrap_EndEditMode */
  if (param_2 != 0) {
    FUN_101d9280(param_1,0);
    return;
  }
  local_c = param_4;
  local_10 = param_3;
  local_8 = param_5;
  local_4 = param_6;
  FUN_101d9280(param_1,(int)&local_10);
  return;
}

