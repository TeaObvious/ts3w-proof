/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161e58 (original PC 1.67 TS3W.exe).
   ScriptCore.SACS::SACS_GetDebugStringImpl [assembly=ScriptCore token=0x06000D6A; scriptObjectId:
   System.UInt64; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.SACS::SACS_GetDebugStringImpl(void)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined4 *this;
  int *piVar5;
  undefined4 unaff_EBP;
  undefined4 *puVar6;
  int local_48 [2];
  undefined1 *local_40;
  undefined1 *local_3c;
  int *local_38;
  int *local_34;
  undefined4 *local_30;
  undefined4 *local_2c;
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  iVar4 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar4);
  if (this != (undefined4 *)0x0) {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
  }
  local_34 = (int *)0x1007e2c;
  local_40 = &DAT_011c8e54;
  local_3c = &DAT_011c8e54;
  local_38 = (int *)&DAT_011c8e55;
  if (this == (undefined4 *)0x0) {
    FUN_00405910(&local_40,"<Game Object Not Found>","");
  }
  else {
    iVar4 = FUN_00934260(this,DAT_011ea0f0);
    if (iVar4 != 0) goto LAB_00768d40;
  }
  FUN_00405910(&local_40,"<Sacs Component Not Found>","");
LAB_00768d40:
  local_30 = (undefined4 *)0x0;
  local_2c = (undefined4 *)0x0;
  local_28 = (undefined **)0x0;
  local_24 = "SACS/DebugStringVector";
  FUN_009144a0();
  puVar3 = local_2c;
  for (puVar6 = local_30; puVar6 != puVar3; puVar6 = puVar6 + 4) {
    FUN_00405700(&local_40,(undefined1 *)*puVar6,(undefined1 *)puVar6[1]);
    FUN_00405700(&local_40,&DAT_00f99a14,&DAT_00f99a15);
  }
  local_20[0] = &PTR_FUN_0100886c;
  local_16 = 0x12;
  local_18 = 0xb;
  FUN_004f59c0(local_20,0x12,9,&local_40,0x10,1);
  piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
  (**(code **)(*piVar5 + 0x50))(local_20,local_48);
  local_28 = &PTR_FUN_00fba6f4;
  piVar5 = local_38;
  piVar1 = local_34;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(&local_28,'\0');
    piVar5 = local_38;
    piVar1 = local_34;
  }
  for (; piVar2 = local_34, piVar5 < local_34; piVar5 = piVar5 + 4) {
    iVar4 = *piVar5;
    local_34 = piVar1;
    if ((1 < piVar5[2] - iVar4) && (iVar4 != 0)) {
      FUN_004e44e0(iVar4);
    }
    piVar1 = local_34;
    local_34 = piVar2;
  }
  local_34 = piVar1;
  if (local_38 != (int *)0x0) {
    FUN_004e44e0((int)local_38);
  }
  if ((1 < (int)local_40 - local_48[0]) && (local_48[0] != 0)) {
    FUN_004e44e0(local_48[0]);
  }
  if (this != (undefined4 *)0x0) {
    piVar5 = this + 1;
    LOCK();
    iVar4 = *piVar5;
    *piVar5 = *piVar5 + -1;
    UNLOCK();
    if (iVar4 == 1) {
      LOCK();
      *piVar5 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return unaff_EBP;
}

