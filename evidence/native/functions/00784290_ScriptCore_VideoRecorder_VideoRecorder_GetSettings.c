/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163138 (original PC 1.67 TS3W.exe).
   ScriptCore.VideoRecorder::VideoRecorder_GetSettings [assembly=ScriptCore token=0x06000CFD; ;
   return=System.Int32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * ScriptCore.VideoRecorder::VideoRecorder_GetSettings(void)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 uStack_48;
  undefined4 *puStack_44;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  uint uStack_10;
  uint uStack_c;
  uint uStack_8;
  
  piVar1 = (int *)FUN_009dff90();
  puVar2 = (undefined4 *)0x0;
  if (piVar1 != (int *)0x0) {
    local_38 = 0;
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    local_28 = 0;
    local_24 = 0;
    puStack_44 = &local_38;
    uStack_48 = 0x7842ce;
    (**(code **)(*piVar1 + 8))();
    local_24 = 0;
    uStack_1c = local_34;
    uStack_20 = local_38;
    uStack_18 = local_30;
    uStack_10 = (uint)((char)local_28 != '\0');
    uStack_14 = local_2c;
    uStack_c = (uint)((char)((uint)local_28 >> 8) != '\0');
    uStack_8 = (uint)(local_28._2_1_ != '\0');
    uStack_48 = 0x784322;
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uStack_48 = 8;
    (**(code **)(*piVar1 + 0x8c))(&stack0xffffffc0);
    puVar2 = &local_2c;
    (**(code **)(*piVar1 + 0xa4))(&uStack_48,puVar2,0,8);
  }
  return puVar2;
}

