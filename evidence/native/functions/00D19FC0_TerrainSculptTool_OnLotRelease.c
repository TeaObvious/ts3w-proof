/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PhysicalthiscallECX(noEDXparameter)noargs/plainRETAL1.
   Whileengaged5E,checksundoablevirtual50(SculptD2C260);iftruepassesundoableCD3A20submit,elsecallsvirtual8.
   Clears178beforelocalrefrelease,flags5E/BD,level/cursorstate;
   actualsoundhandle16Cstoppedandclearedlast. NOsecondhouseholddebitinthisreleasebody.
   Completeabort/outerUndoablevirtual8fundsbehaviorisnotprovenbyitsabsencealone. */

bool __thiscall TerrainSculptTool_OnLotRelease(void *this)

{
  undefined4 *puVar1;
  int iVar2;
  char cVar3;
  
  if (*(char *)((int)this + 0x5e) != '\0') {
    FUN_00cd3810((int)this);
    if (*(int **)((int)this + 0x178) != (int *)0x0) {
      cVar3 = (**(code **)(**(int **)((int)this + 0x178) + 0x50))();
      if (cVar3 == '\0') {
        (**(code **)(**(int **)((int)this + 0x178) + 8))();
      }
      else {
        UserTool_SubmitUndoableWithCostEffects(this,*(int **)((int)this + 0x178),'\0');
      }
    }
    puVar1 = *(undefined4 **)((int)this + 0x178);
    if (puVar1 != (undefined4 *)0x0) {
      *(undefined4 *)((int)this + 0x178) = 0;
      iVar2 = puVar1[1];
      puVar1[1] = iVar2 + -1;
      if (iVar2 + -1 == 0) {
        puVar1[1] = 1;
        (**(code **)*puVar1)(1);
      }
    }
    *(undefined1 *)((int)this + 0x5e) = 0;
    *(undefined1 *)((int)this + 0xbd) = 0;
    FUN_00ced6c0((int)this);
    FUN_00d19d70((int)this + -0x28);
  }
  thunk_FUN_00792320();
  if (*(int *)((int)this + 0x16c) != 0) {
    Audio_SubmitHandleStopCommand(*(int *)((int)this + 0x16c));
    *(undefined4 *)((int)this + 0x16c) = 0;
  }
  return true;
}

