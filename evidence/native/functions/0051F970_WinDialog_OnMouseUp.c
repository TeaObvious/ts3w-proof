/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* PC 1.67 WinDialog mouse-up/release handler; analyst name inferred from vtable/state flow, not
   recovered symbol. Existing body 0051f970..0051f9bf inclusive; RET 0x10 consumes four stack DWORDs
   whose event types are not established here. Query capture-service +0x60(1); if result equals
   this+4, call service +0x68(1,this+4,0). Then set component DWORD this+0x25c to -1, call IWindow
   +0x90, return AL=1. This handler performs no direct area-set or mouse-move call. Effects inside
   indirect capture release remain outside this body claim. */

undefined4 __fastcall WinDialog_OnMouseUp(int param_1)

{
  code *pcVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  
  if (param_1 == 0) {
    iVar4 = 0;
  }
  else {
    iVar4 = param_1 + 4;
  }
  iVar2 = (**(code **)(**(int **)(param_1 + 0x30) + 0x60))(1);
  if (iVar2 == iVar4) {
    (**(code **)(**(int **)(param_1 + 0x30) + 0x68))(1,param_1 + 4,0);
  }
  pcVar1 = *(code **)(*(int *)(param_1 + 4) + 0x90);
  *(undefined4 *)(param_1 + 0x25c) = 0xffffffff;
  uVar3 = (*pcVar1)();
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}

