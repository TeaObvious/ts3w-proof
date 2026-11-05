/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_RemoveObjectManager. Export ordinal(s):
   2689. Entry VA: 0x1099a560. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004B3. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl WorldWrap_RemoveObjectManager(undefined4 param_1,undefined4 param_2)

{
  undefined1 local_20 [4];
  undefined **local_1c;
  undefined4 local_18;
  undefined4 local_10;
  code *local_c;
  undefined4 *local_8;
  undefined1 *local_4;
  
                    /* 0x99a560  2689  WorldWrap_RemoveObjectManager */
  local_4 = local_20;
  local_20[0] = 1;
  LOCK();
  local_18 = 0;
  UNLOCK();
  local_8 = &param_2;
  local_1c = &PTR_FUN_10ac9a44;
  local_10 = param_1;
  local_c = FUN_10239f90;
  FUN_105ccd90(&local_1c,'\x01');
  return;
}

