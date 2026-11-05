/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC 1.67 original instruction review. Analyst-assigned name. Resource replacement at +0x5d0
   acquires new via resource vtable+0 then releases old via+4. Non-null resource sets duration from
   ClipResource_GetDuration, byte+0x5fb=(flags>>1)&1, namespace/actor binding at+0x4f0 including
   lowercased FNV1 x, then refreshes actor rig bindings. Clearing the resource does not explicitly
   reset duration here. */

void __thiscall AnimationClipController_BindResource(void *this,int *param_1)

{
  void *this_00;
  int *piVar1;
  uint uVar2;
  int iVar3;
  float10 fVar4;
  
  if ((_DAT_011ce7e0 & 1) == 0) {
    _DAT_011ce7e0 = _DAT_011ce7e0 | 1;
    DAT_011ce7dc = HashLowercasedCStringFNV1("x");
  }
  piVar1 = *(int **)((int)this + 0x5d0);
  if (param_1 != piVar1) {
    if (param_1 != (int *)0x0) {
      (**(code **)*param_1)();
    }
    *(int **)((int)this + 0x5d0) = param_1;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  if (*(int *)((int)this + 0x5d0) != 0) {
    fVar4 = AnimationClipResource_GetDuration(*(int *)((int)this + 0x5d0));
    *(float *)((int)this + 0x5e8) = (float)fVar4;
    uVar2 = AnimationClipResource_GetFlags(*(int *)((int)this + 0x5d0));
    *(byte *)((int)this + 0x5fb) = (byte)(uVar2 >> 1) & 1;
    iVar3 = *(int *)(*(int *)((int)this + 0x5d0) + 0x48);
    this_00 = (void *)((int)this + 0x4f0);
    if (iVar3 == 0) {
      FUN_00579460(this_00,*(int *)(*(int *)((int)this + 0x5d0) + 0x4c),10);
    }
    else {
      FUN_00569fd0(this_00,iVar3);
    }
    iVar3 = (**(code **)(**(int **)((int)this + 0x1c) + 0x24))();
    ClipIkInfo_BindNamespaceEntity(this_00,DAT_011ce7dc,iVar3);
    FUN_00577ec0((int)this_00);
    ClipController_ResolveIkTargetActors((int)this);
  }
  return;
}

