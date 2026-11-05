/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67: Owner GUID copied as two DWORDs; payload event0x063bd2a3 has layer at+0x10,
   dispatched00693380. Original player bytes unchanged. */

void __thiscall RugComponent_NotifyLayerChanged(void *this,undefined4 param_1)

{
  int iVar1;
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50 [19];
  
  iVar1 = *(int *)((int)this + 4);
  if (iVar1 != 0) {
    local_58 = *(undefined4 *)(iVar1 + 8);
    local_54 = *(undefined4 *)(iVar1 + 0xc);
    local_60[0] = 0xa3;
    local_60[1] = 0xd2;
    local_60[2] = 0x3b;
    local_60[3] = 6;
    local_5c = (undefined4 *)0x0;
    local_50[0] = param_1;
    RenderCommand_EnqueueIfDispatcherExists(local_60);
    if (local_5c != (undefined4 *)0x0) {
      (**(code **)*local_5c)(local_50);
    }
  }
  return;
}

