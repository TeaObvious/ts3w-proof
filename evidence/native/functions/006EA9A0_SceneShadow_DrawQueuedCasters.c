/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 queued scene-shadow consumer. Physical thiscall ECX scene renderer and three stack
   DWORDs (source, pointer to begin/end queue, borrowed draw-context pointer), RET0C. Queue count is
   signed arithmetic shift of end-begin by3, rows advance8 bytes. Each row points to a draw item;
   item+24 selects source+210 plus index*80 bytes. Local memo compares item key and
   parameter-registry row stamps, resets per invocation, and updates two matrix payloads before item
   interface virtual+18. This is a matrix/input memo inside one queue, not a resident depth image
   cache. Four parameter handles are cleared after loop, even an empty queue; unresolved virtual
   draw target not asserted. Function has two owned ranges with8 alignment bytes between6EA9E8
   and6EA9F0; export explicitly labels those non-owned envelope bytes. */

void __thiscall
SceneShadow_DrawQueuedCasters(void *this,int param_1,int *param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 *puVar2;
  void *pvVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int local_10;
  
  pvVar3 = DAT_011d8530;
  iVar1 = *(int *)(param_1 + 0x210);
  piVar4 = (int *)*param_2;
                    /* SAR3 after end-begin: signed 8-byte row count; this memo resets locally every
                       invocation and does not preserve a resident shadow depth image. */
  iVar5 = param_2[1] - (int)piVar4 >> 3;
  param_1 = -1;
  param_2 = (int *)0x0;
  local_10 = 0;
  while (iVar5 != 0) {
    puVar2 = (undefined4 *)*piVar4;
    iVar5 = iVar5 + -1;
    piVar4 = piVar4 + 2;
    if (((param_1 != puVar2[9]) ||
        (*(int **)(*(int *)((int)this + 0x1d4) * 0x10 + *(int *)((int)pvVar3 + 4)) != param_2)) ||
       (*(int *)(*(int *)((int)this + 0x1d8) * 0x10 + *(int *)((int)pvVar3 + 4)) != local_10)) {
      param_1 = puVar2[9];
      iVar6 = param_1 * 0x80 + iVar1;
      FUN_0079a040(pvVar3,*(uint *)((int)this + 0x1d4),iVar6);
      FUN_0079a040(pvVar3,*(uint *)((int)this + 0x1d8),iVar6 + 0x40);
      param_2 = *(int **)(*(int *)((int)this + 0x1d4) * 0x10 + *(int *)((int)pvVar3 + 4));
      local_10 = *(int *)(*(int *)((int)this + 0x1d8) * 0x10 + *(int *)((int)pvVar3 + 4));
      FUN_006ea610(this,(int *)*puVar2);
    }
    (**(code **)(*(int *)*puVar2 + 0x18))(puVar2[1],param_3);
  }
  FUN_0079a040(pvVar3,*(uint *)((int)this + 0x1d4),0);
  FUN_0079a040(pvVar3,*(uint *)((int)this + 0x1d8),0);
  pvVar3 = DAT_011d8530;
  FUN_0079a040(DAT_011d8530,*(uint *)((int)this + 0x1dc),0);
  FUN_0079a040(pvVar3,*(uint *)((int)this + 0x1e0),0);
  return;
}

