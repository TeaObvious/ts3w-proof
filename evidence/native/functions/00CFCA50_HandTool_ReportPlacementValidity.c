/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified original PC1.67 hand-tool ownership/physical ABI closure. Validity consumes the low byte
   of the first stack word; physical RET8 consumes two stack words. The normalized Boolean and
   captured object GUID are sent to the managed validity callback before last-reported fields are
   stored. The inferred Float32 parameter is not evidence of numeric1.0; direct callers pass integer
   bits1. */

void __thiscall HandTool_ReportPlacementValidity(void *this,float param_1,char param_2)

{
  int iVar1;
  void *pvVar2;
  undefined4 *puVar3;
  int *piVar4;
  char cVar5;
  
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar1 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar1 = *(int *)((int)this + 0x60);
  }
  cVar5 = SUB41(param_1,0);
  if ((iVar1 != 0) && (*(void **)(iVar1 + 0x58) != (void *)0x0)) {
    FUN_00cfaf80(this,*(void **)(iVar1 + 0x58),param_1,param_2);
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar1 = *(int *)((int)this + 0x60);
    }
    else {
      iVar1 = *(int *)((int)this + 0x5c);
    }
    if (iVar1 == 0) {
      pvVar2 = (void *)0x0;
    }
    else {
      pvVar2 = *(void **)(iVar1 + 0x58);
    }
    FUN_00cfaf80(this,pvVar2,param_1,param_2);
    if ((*(char *)((int)this + 0x104) == '\0') || (cVar5 != *(char *)((int)this + 0x101))) {
      FUN_00790c50();
      *(undefined1 *)((int)this + 0x104) = 1;
      *(char *)((int)this + 0x101) = cVar5;
    }
  }
  puVar3 = FloorMessagePool_AcquireStorage();
  if (puVar3 == (undefined4 *)0x0) {
    puVar3 = (undefined4 *)0x0;
  }
  else {
    *puVar3 = &PTR_FUN_01065f8c;
    LOCK();
    puVar3[1] = 0;
    UNLOCK();
    *puVar3 = &PTR_FUN_01065f8c;
  }
  puVar3[2] = (uint)(cVar5 == '\0');
  piVar4 = (int *)MessageDispatch_GetCurrent();
  (**(code **)(*piVar4 + 0x1c))(0x5a89a0c,puVar3,0,0);
  return;
}

