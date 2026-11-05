/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x0073299c) */
/* WARNING: Removing unreachable block (ram,0x007329a3) */
/* WARNING: Removing unreachable block (ram,0x007329b3) */
/* WARNING: Removing unreachable block (ram,0x007329f3) */
/* WARNING: Removing unreachable block (ram,0x007329e8) */

undefined1 __thiscall FUN_00732910(void *this,int *param_1)

{
  undefined4 uVar1;
  int *piVar2;
  undefined1 unaff_retaddr;
  LPCRITICAL_SECTION p_Stack_2c;
  undefined4 *local_28;
  int *piStack_24;
  
  if ((param_1 == (int *)0x0) || (uVar1 = FUN_00731d60(param_1[4]), (char)uVar1 == '\0')) {
    return 0;
  }
  local_28 = (undefined4 *)((int)this + 0x58);
  FUN_004e1c00(local_28,(uint *)&DAT_00ffeda4);
  piVar2 = (int *)(**(code **)(*param_1 + 0xc))(0xeb54b802);
  if (piVar2 != (int *)0x0) {
    FUN_005ed9e0((void *)((int)this + 0x1c),&local_28,(uint *)(piVar2 + 2));
    if (local_28 != *(undefined4 **)(*(int *)((int)this + 0x20) + *(int *)((int)this + 0x24) * 4)) {
      if ((int *)local_28[4] != piVar2) goto LAB_00732a53;
      FUN_00732040((void *)((int)this + 0x1c),(int *)&local_28,local_28,piStack_24);
      uVar1 = FUN_00731d40((int)piVar2);
      if ((char)uVar1 != '\0') {
        FUN_00731f50(this,(int)piVar2);
      }
      *(int *)((int)this + 0x94) = *(int *)((int)this + 0x94) - piVar2[8];
      piVar2[9] = 0;
      FUN_00731ce0(piVar2);
    }
    unaff_retaddr = 1;
  }
LAB_00732a53:
  FUN_004e1cc0(p_Stack_2c);
  return unaff_retaddr;
}

