/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_InitUserToolManager. Export ordinal(s):
   1693. Entry VA: 0x1097da90. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009C2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void App3D_InitUserToolManager(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  
                    /* 0x97da90  1693  App3D_InitUserToolManager */
  puVar5 = (undefined4 *)FUN_10918eb0(0x1d8,"UserToolManager",0);
  if (puVar5 == (undefined4 *)0x0) {
    puVar5 = (undefined4 *)0x0;
  }
  else {
    puVar5 = FUN_102c9370(puVar5);
  }
  puVar3 = DAT_10cb7b44;
  puVar4 = DAT_10cb7b44;
  if (puVar5 != DAT_10cb7b44) {
    if (puVar5 != (undefined4 *)0x0) {
      LOCK();
      puVar5[1] = puVar5[1] + 1;
      UNLOCK();
    }
    puVar4 = puVar5;
    if (DAT_10cb7b44 != (undefined4 *)0x0) {
      piVar1 = DAT_10cb7b44 + 1;
      LOCK();
      iVar2 = *piVar1;
      DAT_10cb7b44 = puVar5;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      puVar4 = DAT_10cb7b44;
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
        puVar4 = DAT_10cb7b44;
      }
    }
  }
  DAT_10cb7b44 = puVar4;
  FUN_102c72c0((int)DAT_10cb7b44);
  return;
}

