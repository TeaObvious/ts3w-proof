/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_InsertFence. Export ordinal(s):
   2266. Entry VA: 0x1098ebe0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000162. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int SceneManWrap_InsertFence(void)

{
  int iVar1;
  undefined4 local_60;
  undefined4 *local_5c;
  int local_58;
  undefined4 local_54;
  undefined1 *local_50;
  undefined4 local_4c;
  
                    /* 0x98ebe0  2266  SceneManWrap_InsertFence */
  iVar1 = DAT_10c59e20;
  local_60 = 0x489122f;
  local_5c = (undefined4 *)0x0;
  local_58 = DAT_10c59e20;
  local_54 = 0;
  local_50 = &LAB_1098ebd0;
  local_4c = 0;
  DAT_10c59e20 = DAT_10c59e20 + 1;
  FUN_10489ee0(&local_60);
  if (local_5c != (undefined4 *)0x0) {
    (**(code **)*local_5c)(&local_50);
  }
  return iVar1;
}

