/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_UnclusterTrees. Export
   ordinal(s): 1997. Entry VA: 0x109965b0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600026C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl ObjectManagerWrap_UnclusterTrees(uint param_1)

{
  undefined **local_20;
  undefined4 local_1c;
  uint local_14;
  code *local_10;
  undefined4 local_c;
  uint *local_8;
  
                    /* 0x9965b0  1997  ObjectManagerWrap_UnclusterTrees */
  local_14 = param_1;
  if (param_1 != 0) {
    param_1 = param_1 & 0xffffff00;
    LOCK();
    local_1c = 0;
    UNLOCK();
    local_10 = FUN_10246f20;
    local_c = 0;
    local_8 = &param_1;
    local_20 = &PTR_FUN_10b979dc;
    FUN_105ccd90(&local_20,'\x01');
  }
  return;
}

