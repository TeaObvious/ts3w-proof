/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SeaWrap_RebuildWaterGeometry. Export ordinal(s):
   2296. Entry VA: 0x1098f940. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000BE2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
SeaWrap_RebuildWaterGeometry
          (void *param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x98f940  2296  SeaWrap_RebuildWaterGeometry */
  if (param_1 != (void *)0x0) {
    local_10 = param_2;
    local_8 = param_4;
    local_c = param_3;
    local_4 = param_5;
    FUN_101d92c0(param_1,&local_10);
  }
  return;
}

