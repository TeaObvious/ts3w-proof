/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_ShutdownUserToolManager. Export ordinal(s):
   1703. Entry VA: 0x1097db10. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009C3. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void App3D_ShutdownUserToolManager(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  
                    /* 0x97db10  1703  App3D_ShutdownUserToolManager */
  if (DAT_10cb7b44 != (undefined4 *)0x0) {
    FUN_102c7cb0(DAT_10cb7b44);
    if (DAT_10c700c4 != (void *)0x0) {
      FUN_10239a60(DAT_10c700c4,200);
    }
    FUN_102c7cc0(DAT_10cb7b44);
    puVar3 = DAT_10cb7b44;
    if (DAT_10cb7b44 != (undefined4 *)0x0) {
      piVar1 = DAT_10cb7b44 + 1;
      DAT_10cb7b44 = (undefined4 *)0x0;
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
  }
  return;
}

