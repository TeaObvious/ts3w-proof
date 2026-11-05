/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetTerrainExtentsImpl. Export ordinal(s):
   1382. Entry VA: 0x1057a890. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BAB. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl World_GetTerrainExtentsImpl(undefined4 *param_1)

{
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x57a890  1382  World_GetTerrainExtentsImpl */
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  if (DAT_10c700c4 != 0) {
    local_10 = *(undefined4 *)(DAT_10c700c4 + 0xb4);
    local_c = *(undefined4 *)(DAT_10c700c4 + 0xb8);
    local_8 = *(undefined4 *)(DAT_10c700c4 + 0xbc);
    local_4 = *(undefined4 *)(DAT_10c700c4 + 0xc0);
  }
  *param_1 = local_10;
  param_1[1] = local_c;
  param_1[2] = local_8;
  param_1[3] = local_4;
  return;
}

