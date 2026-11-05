/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: VideoRecorder_GetSettings. Export ordinal(s):
   1243. Entry VA: 0x10575da0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F17. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 * VideoRecorder_GetSettings(void)

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
  
                    /* 0x575da0  1243  VideoRecorder_GetSettings */
  piVar1 = (int *)FUN_107cd170();
  puVar2 = (undefined4 *)0x0;
  if (piVar1 != (int *)0x0) {
    local_38 = 0;
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    local_28 = 0;
    local_24 = 0;
    puStack_44 = &local_38;
    uStack_48 = 0x10575dde;
    (**(code **)(*piVar1 + 8))();
    local_24 = 0;
    uStack_1c = local_34;
    uStack_20 = local_38;
    uStack_18 = local_30;
    uStack_10 = (uint)((char)local_28 != '\0');
    uStack_14 = local_2c;
    uStack_c = (uint)((char)((uint)local_28 >> 8) != '\0');
    uStack_8 = (uint)(local_28._2_1_ != '\0');
    uStack_48 = 0x10575e32;
    piVar1 = (int *)FUN_1055b120();
    uStack_48 = 8;
    (**(code **)(*piVar1 + 0x8c))(&stack0xffffffc0);
    puVar2 = &local_2c;
    (**(code **)(*piVar1 + 0xa4))(&uStack_48,puVar2,0,8);
  }
  return puVar2;
}

