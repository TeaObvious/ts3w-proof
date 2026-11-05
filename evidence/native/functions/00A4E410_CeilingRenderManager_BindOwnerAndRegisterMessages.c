/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original PC 1.67: Store renderer owner+18, copy underside-level byte vector, register exact9ID
   table01060C10. B126940A is absent; do not claim it can never arrive by other routes. RET4;
   external message-delivery semantics open. */

undefined4 __thiscall
CeilingRenderManager_BindOwnerAndRegisterMessages(void *this,undefined4 param_1)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  
  *(undefined4 *)((int)this + 0x18) = param_1;
  *(undefined4 *)((int)this + 0x68) = *(undefined4 *)((int)this + 100);
  iVar1 = *(int *)(*(int *)((int)this + 0x18) + 0x18);
  FUN_00a4de50(this,(uint *)(*(int *)(iVar1 + 0x2b0) + 0x20));
  FUN_00608c10((void *)((int)this + 100),(int *)(*(int *)(iVar1 + 0x290) + 0x34));
  piVar2 = (int *)MessageDispatch_GetCurrent();
  *(int **)((int)this + 4) = piVar2;
  *(void **)((int)this + 8) = this;
  *(undefined4 **)((int)this + 0xc) = &DAT_01060c10;
  *(undefined4 *)((int)this + 0x10) = 9;
  *(undefined4 *)((int)this + 0x14) = 0;
  if (piVar2 != (int *)0x0) {
    uVar3 = 0;
    do {
      (**(code **)(*piVar2 + 0x24))(this,*(undefined4 *)((int)&DAT_01060c10 + uVar3),0,0);
      uVar3 = uVar3 + 4;
    } while (uVar3 < 0x24);
  }
  iVar1 = DAT_011edbc4;
  *(bool *)((int)this + 0x60) = *(int *)(DAT_011edbc4 + 0x158) != 0x12d;
  return CONCAT31((int3)((uint)iVar1 >> 8),1);
}

