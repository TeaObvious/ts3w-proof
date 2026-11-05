/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified original PC1.67 hand-tool ownership/physical ABI closure. Physical RET4 consumes the
   low-byte release/show parameter. Optional show precedes validity/UI cleanup; the function
   captures the held GUID and original flags, conditionally invokes completed-edit notification with
   its full five-word physical ABI, then original command/cache/cursor cleanup. Inferred
   unaffiliated register and reduced callback arguments are not a reliable ABI. */

void __thiscall ObjectTool_ReleaseHeldEdit(void *this,char param_1)

{
  void *pvVar1;
  int *piVar2;
  int iVar3;
  char unaff_BL;
  char cVar4;
  
  if ((*(int *)((int)this + 0x390) != 0) && (*(char *)((int)this + 0x394) != '\0')) {
    pvVar1 = (void *)FUN_0049d2e0();
    FUN_0049d790(pvVar1,(int *)((int)this + 0x374));
    *(undefined1 *)((int)this + 0x394) = 0;
  }
  if (param_1 != '\0') {
    FUN_00d00700((int)this);
  }
  HandTool_ReportPlacementValidity(this,1.4013e-45,'\0');
  piVar2 = (int *)MessageDispatch_GetCurrent();
  cVar4 = '\0';
  (**(code **)(*piVar2 + 0x1c))(0x5a89a05,0,0,0);
  *(undefined1 *)((int)this + 0x2fc) = 0;
  if (*(int *)((int)this + 0x370) != 0) {
    FUN_00cdc4e0(*(int *)((int)this + 0x370));
  }
  PayloadCleanup_NoOperation((byte *)0x0);
  if (unaff_BL != '\0') {
    FUN_00cfb140((int)this);
  }
  if (cVar4 == '\0') {
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar3 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar3 = *(int *)((int)this + 0x60);
    }
    if (iVar3 == 0) {
      pvVar1 = (void *)0x0;
    }
    else {
      pvVar1 = *(void **)(iVar3 + 0x58);
    }
    ObjectTool_NotifyCompletedEdit(this,pvVar1);
  }
  FUN_00cfcde0((int)this);
  FUN_00d001a0(this,'\0');
  if (*(int *)((int)this + 0x1c4) != 0) {
    FUN_00ccafe0(*(int *)((int)this + 0x1c4));
  }
  *(undefined1 *)((int)this + 0x8b) = 0;
  ObjectTool_UpdateHeldCursor((int)this);
  return;
}

