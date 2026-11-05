/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_ShutdownApp3D. Export ordinal(s): 1702.
   Entry VA: 0x1097d5a0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009B3. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void App3D_ShutdownApp3D(void)

{
  int *piVar1;
  
                    /* 0x97d5a0  1702  App3D_ShutdownApp3D */
  FUN_10488430((int *)&DAT_10cad7b0);
  if (DAT_10cad798 != (int *)0x0) {
    (**(code **)(*DAT_10cad798 + 0xc))();
    DAT_10cad798 = (int *)0x0;
  }
  FUN_10685f10();
  FUN_10521060();
  ResourceMgr_Destroy();
  FUN_10387050();
  FUN_10388f90((int *)&DAT_10cb7dc0);
  piVar1 = (int *)FUN_1039a180(0);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))();
    (**(code **)*piVar1)(1);
  }
  return;
}

