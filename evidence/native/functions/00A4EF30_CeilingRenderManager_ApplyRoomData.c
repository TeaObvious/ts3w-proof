/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC 1.67: Call A4E200 before visiting response20-byte records; call A4D550 and
   conditionally A4E740. Helper clear/build/emitter semantics are supporting context outside
   selected pairs. No GPU readiness or full geometry/resource contract claim. RET4.
   
   PC1.67 original static instructions. Selected geometry closure: A4D550 computes contour/height
   info then A4E740 conditionally emits material/model. This closes immediate parent inputs/outputs,
   not unselected clearing helper A4E200 or all contour child algorithms/resource lifetimes. */

void __thiscall CeilingRenderManager_ApplyRoomData(void *this,int param_1)

{
  int iVar1;
  int iVar2;
  undefined1 local_24 [8];
  int *local_1c;
  int *local_18;
  undefined4 local_14;
  char *local_10;
  short local_8;
  
  FUN_00a4e200((int)this);
  FUN_00a49a50(local_24,*(undefined4 *)((int)this + 0x18));
  iVar2 = 0;
  local_1c = (int *)0x0;
  local_18 = (int *)0x0;
  local_14 = 0;
  local_10 = "LotRenderer/CeilingRenderManager/tRoomInfo";
  for (iVar1 = (*(int *)(param_1 + 0x14) - *(int *)(param_1 + 0x10)) / 0x14; iVar1 != 0;
      iVar1 = iVar1 + -1) {
    CeilingRenderer_ComputeRoomInfo
              (local_24,(undefined4 *)(*(int *)(param_1 + 0x10) + iVar2),&local_1c);
    if ((local_1c != local_18) ||
       ((*(int *)(*(int *)(param_1 + 0x10) + 4 + iVar2) !=
         *(int *)(*(int *)(param_1 + 0x10) + 8 + iVar2) && (local_8 != 0)))) {
      CeilingRenderer_EmitRoomModel(this,&local_1c);
    }
    iVar2 = iVar2 + 0x14;
  }
  FUN_00a480f0(local_1c,local_18);
  if (local_1c != (int *)0x0) {
    Memory_FreeIfNonNull(local_1c);
  }
  return;
}

