/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_EvictManagedResources. Export ordinal(s):
   1675. Entry VA: 0x1097d570. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009BD. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void App3D_EvictManagedResources(void)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x97d570  1675  App3D_EvictManagedResources */
  iVar2 = FUN_104094c0();
  piVar1 = *(int **)(iVar2 + 0xc);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x14))(piVar1);
  }
  return;
}

