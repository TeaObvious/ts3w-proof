/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX solver, x/z stack slots+4/+8, RET8. Ordered signed-bound probes
   (x-1,z),(x,z-1) with mask10 then (x+1,z),(x,z-1) with mask40. Each uses6AA390/500DB0 and tests
   AL; early true MOV AL1, otherwise XOR AL0. Final fourth neighbor really repeats z-1. Upper EAX is
   not normalized; parent consumes AL. Child predicates and allocator-field initialization are not
   recovered here. */

undefined4 __thiscall LightingSolver_HasAdjacentSplitBase(void *this,int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  char cVar3;
  int iVar4;
  undefined1 *puVar5;
  undefined3 extraout_var;
  uint uVar6;
  undefined3 extraout_var_01;
  undefined3 extraout_var_02;
  undefined4 local_7;
  undefined3 extraout_var_00;
  
  iVar2 = param_2;
  iVar1 = param_1;
  if (-1 < param_1 + -1) {
    iVar4 = *(int *)((int)this + 0x264) * param_2 + param_1;
    param_1 = 0x10;
    puVar5 = (undefined1 *)
             FUN_006aa390((void *)(*(int *)((int)this + 4) + -0xe + iVar4 * 0xe),&local_7,
                          (ushort *)&param_1);
    cVar3 = FUN_00500db0(puVar5);
    if (cVar3 != '\0') {
      return CONCAT31(extraout_var,1);
    }
  }
  iVar4 = iVar2 + -1;
  if (-1 < iVar4) {
    param_1 = 0x10;
    puVar5 = (undefined1 *)
             FUN_006aa390((void *)(*(int *)((int)this + 4) +
                                  (*(int *)((int)this + 0x264) * iVar4 + iVar1) * 0xe),&local_7,
                          (ushort *)&param_1);
    cVar3 = FUN_00500db0(puVar5);
    uVar6 = CONCAT31(extraout_var_00,cVar3);
    if (cVar3 != '\0') goto LAB_006a50cc;
  }
  uVar6 = *(uint *)((int)this + 0x264);
  if (iVar1 + 1 < (int)uVar6) {
    param_1 = 0x40;
    puVar5 = (undefined1 *)
             FUN_006aa390((void *)(*(int *)((int)this + 4) + (uVar6 * iVar2 + 1 + iVar1) * 0xe),
                          &local_7,(ushort *)&param_1);
    cVar3 = FUN_00500db0(puVar5);
    uVar6 = CONCAT31(extraout_var_01,cVar3);
    if (cVar3 != '\0') goto LAB_006a50cc;
  }
  if (-1 < iVar4) {
    param_1 = 0x40;
    puVar5 = (undefined1 *)
             FUN_006aa390((void *)(*(int *)((int)this + 4) +
                                  (*(int *)((int)this + 0x264) * iVar4 + iVar1) * 0xe),&local_7,
                          (ushort *)&param_1);
    cVar3 = FUN_00500db0(puVar5);
    uVar6 = CONCAT31(extraout_var_02,cVar3);
    if (cVar3 != '\0') {
LAB_006a50cc:
      return CONCAT31((int3)(uVar6 >> 8),1);
    }
  }
  return uVar6 & 0xffffff00;
}

