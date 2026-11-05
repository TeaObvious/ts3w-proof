/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_BuildRoutingDataImpl. Export ordinal(s):
   1261. Entry VA: 0x1057d200. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BE2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void World_BuildRoutingDataImpl(void)

{
  int *piVar1;
  void *this;
  bool bVar2;
  undefined3 extraout_var;
  
                    /* 0x57d200  1261  World_BuildRoutingDataImpl */
  this = DAT_10c700c4;
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = *(int **)((int)DAT_10c700c4 + 0x84);
    bVar2 = FUN_10233500((int)DAT_10c700c4);
    FUN_10240610(this,piVar1,(undefined4 *)CONCAT31(extraout_var,bVar2));
  }
  return;
}

