/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_AddObjectToSceneImpl. Export ordinal(s):
   1257. Entry VA: 0x1057a810. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BA8. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void World_AddObjectToSceneImpl(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  
                    /* 0x57a810  1257  World_AddObjectToSceneImpl */
  iVar2 = FUN_1072a1a0();
  puVar3 = (undefined4 *)FUN_1072abb0(iVar2);
  if (puVar3 != (undefined4 *)0x0) {
    piVar1 = puVar3 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    FUN_107282f0(0xb,puVar3,0);
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*puVar3)(1);
    }
  }
  return;
}

