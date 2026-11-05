/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified original PC1.67 hand-tool ownership/physical ABI closure. Physical thiscall consumes
   five stack DWORDs and returns with RET14h: object pointer, GUID low/high, script flag and edit
   type. Conditional slot notification passes final Boolean one; then the edit notification
   dispatches according to current edit mode/type. The inferred one-stack-argument pseudocode is
   incomplete; full Listing governs. */

void __thiscall ObjectTool_NotifyCompletedEdit(void *this,void *param_1)

{
  void *pvVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  int unaff_EBX;
  int unaff_EBP;
  void *unaff_ESI;
  
  FUN_00cfb5e0(this,param_1);
  if ((*(int *)((int)this + 0x390) != 0) && (*(char *)((int)this + 0x394) != '\0')) {
    pvVar1 = (void *)FUN_0049d2e0();
    FUN_0049d790(pvVar1,(int *)((int)this + 0x374));
    *(undefined1 *)((int)this + 0x394) = 0;
  }
  piVar2 = FloorMessagePool_AcquireStorage();
  if (piVar2 == (int *)0x0) {
    piVar2 = (int *)0x0;
  }
  else {
    *piVar2 = (int)&PTR_FUN_01065f8c;
    LOCK();
    piVar2[1] = 0;
    UNLOCK();
    *piVar2 = (int)&PTR_FUN_01065f8c;
    (**(code **)(*piVar2 + 4))();
  }
  piVar2[2] = *(int *)((int)this + 0xc);
  piVar3 = (int *)MessageDispatch_GetCurrent();
  (**(code **)(*piVar3 + 0x1c))(0x7fd9113,piVar2,0,0);
  (**(code **)(*piVar2 + 8))();
  if (unaff_EBP != 0 || unaff_EBX != 0) {
    if (unaff_ESI != (void *)0x0) {
      pvVar1 = Object_GetComponentByMask(unaff_ESI,DAT_011ea158);
      if ((pvVar1 != (void *)0x0) && (*(int *)((int)pvVar1 + 0x30) != 0)) {
        iVar4 = FUN_00956300(pvVar1,(undefined1 *)0x0);
        if (iVar4 != 0) {
          FUN_00790850();
        }
      }
    }
    if (*(int *)((int)this + 0x108) != 2) {
      if ((param_1 == (void *)0x2) && (*(int *)((int)this + 0x108) == 1)) {
        FUN_00790600(unaff_EBP,unaff_EBX,6);
        return;
      }
      FUN_00790600(unaff_EBP,unaff_EBX,param_1);
    }
  }
  return;
}

