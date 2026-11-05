/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX geometry plus three stack arguments, RET0x0C; AL success narrower than
   stored undefined4. Store lot/parent/selected level/position/dimensions; allocate and zero
   ceil(width*depth/8) presence bits using actual signed arithmetic. Retained B66D60/B65F50 resource
   and virtual bounds children remain unproved. No new dimension validation or full geometry layout
   inferred. Descriptive role, not recovered symbol. */

undefined4 __thiscall
PoolGeometry_SetupLotLevel(void *this,int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  bool bVar6;
  
  *(undefined4 *)((int)this + 0x214) = param_2;
  *(int *)((int)this + 0x210) = param_1;
  *(undefined4 *)((int)this + 0x264) = param_3;
  *(undefined4 *)((int)this + 0x1b0) = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)((int)this + 0x1b4) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)((int)this + 0x1b8) = param_3;
  iVar1 = *(int *)(param_1 + 0x60);
  iVar5 = *(int *)(param_1 + 100);
  *(int *)((int)this + 0x220) = iVar5;
  uVar2 = iVar5 * iVar1;
  *(int *)((int)this + 0x21c) = iVar1;
  uVar3 = (int)(uVar2 + ((int)uVar2 >> 0x1f & 7U)) >> 3;
  uVar2 = uVar2 & 0x80000007;
  bVar6 = uVar2 == 0;
  if ((int)uVar2 < 0) {
    bVar6 = (uVar2 - 1 | 0xfffffff8) == 0xffffffff;
  }
  if (!bVar6) {
    uVar3 = uVar3 + 1;
  }
  FUN_00412e20((void *)((int)this + 0x224),uVar3);
  memset(*(void **)((int)this + 0x224),0,
         *(int *)((int)this + 0x228) - (int)*(void **)((int)this + 0x224));
  FUN_00b66d60((int)this);
  uVar4 = FUN_00b65f50((int)this);
  if ((char)uVar4 == '\0') {
    return uVar4;
  }
  iVar1 = *(int *)this;
  iVar5 = FUN_00adf630(*(int *)((int)this + 0x210));
  uVar4 = (**(code **)(iVar1 + 0x20))(iVar5);
  return CONCAT31((int3)((uint)uVar4 >> 8),1);
}

