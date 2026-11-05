/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_AddObjectManager. Export ordinal(s):
   2604. Entry VA: 0x1099a510. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004B2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl WorldWrap_AddObjectManager(undefined4 param_1,undefined4 param_2)

{
  undefined **local_18;
  undefined4 local_14;
  undefined4 local_c;
  code *local_8;
  undefined4 *local_4;
  
                    /* 0x99a510  2604  WorldWrap_AddObjectManager */
  LOCK();
  local_14 = 0;
  UNLOCK();
  local_4 = &param_2;
  local_18 = &PTR_FUN_10b33710;
  local_c = param_1;
  local_8 = FUN_1023a2e0;
  FUN_105ccd90(&local_18,'\x01');
  return;
}

