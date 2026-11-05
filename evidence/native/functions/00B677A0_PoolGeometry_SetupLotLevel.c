/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  uint elementCount;
  undefined4 uVar3;
  int iVar4;
  bool bVar5;
  
  *(undefined4 *)((int)this + 0x214) = param_2;
  *(int *)((int)this + 0x210) = param_1;
  *(undefined4 *)((int)this + 0x264) = param_3;
  *(undefined4 *)((int)this + 0x1b0) = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)((int)this + 0x1b4) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)((int)this + 0x1b8) = param_3;
  iVar1 = *(int *)(param_1 + 0x60);
  iVar4 = *(int *)(param_1 + 100);
  *(int *)((int)this + 0x220) = iVar4;
  uVar2 = iVar4 * iVar1;
  *(int *)((int)this + 0x21c) = iVar1;
  elementCount = (int)(uVar2 + ((int)uVar2 >> 0x1f & 7U)) >> 3;
  uVar2 = uVar2 & 0x80000007;
  bVar5 = uVar2 == 0;
  if ((int)uVar2 < 0) {
    bVar5 = (uVar2 - 1 | 0xfffffff8) == 0xffffffff;
  }
  if (!bVar5) {
    elementCount = elementCount + 1;
  }
  ByteVector_ResizeZeroed((void *)((int)this + 0x224),elementCount);
  memset(*(void **)((int)this + 0x224),0,
         *(int *)((int)this + 0x228) - (int)*(void **)((int)this + 0x224));
  FUN_00b66d60((int)this);
  uVar3 = FUN_00b65f50((int)this);
  if ((char)uVar3 == '\0') {
    return uVar3;
  }
  iVar1 = *(int *)this;
  iVar4 = FUN_00adf630(*(int *)((int)this + 0x210));
  uVar3 = (**(code **)(iVar1 + 0x20))(iVar4);
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}

