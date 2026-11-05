/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163140 (original PC 1.67 TS3W.exe).
   ScriptCore.VideoRecorder::VideoRecorder_SetSettings [assembly=ScriptCore token=0x06000CFE;
   settings: System.UInt32[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.VideoRecorder::VideoRecorder_SetSettings(undefined4 param_1)

{
  uint uVar1;
  int *piVar2;
  int *piVar3;
  uint *puVar4;
  uint *puVar5;
  int unaff_ESI;
  uint *puVar6;
  uint *puVar7;
  uint local_24;
  uint local_20;
  uint uStack_1c;
  uint uStack_18;
  uint uStack_14;
  undefined4 uStack_10;
  
  piVar2 = (int *)FUN_009dff90();
  if (piVar2 != (int *)0x0) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar7 = &local_20;
    puVar6 = &local_24;
    local_20 = 0;
    (**(code **)(*piVar3 + 0x6c))(param_1,puVar6);
    if (unaff_ESI == 8) {
      local_24 = 0;
      local_20 = 0;
      uStack_1c = 0;
      uStack_18 = 0;
      uStack_14 = 0;
      uStack_10 = 0;
      puVar5 = puVar7 + 1;
      puVar4 = puVar7;
      if (3 < *puVar7) {
        puVar4 = (uint *)&stack0xffffffd8;
      }
      local_24 = *puVar4;
      puVar4 = puVar7 + 2;
      if (2 < *puVar5) {
        puVar5 = (uint *)&stack0xffffffd8;
      }
      local_20 = *puVar5;
      puVar5 = puVar7 + 3;
      if (1 < *puVar4) {
        puVar4 = (uint *)&stack0xffffffd8;
      }
      uStack_1c = *puVar4;
      if (1 < *puVar5) {
        puVar5 = (uint *)&stack0xffffffd8;
      }
      uStack_18 = *puVar5;
      uStack_14 = puVar7[4];
      uStack_10 = (uint)(puVar7[5] != 0);
      uVar1 = uStack_10;
      uStack_10._0_2_ = CONCAT11(1,puVar7[5] != 0);
      uStack_10 = (uint)(ushort)uStack_10;
      if (puVar7[6] == 0) {
        uStack_10 = uVar1;
      }
      uVar1 = uStack_10;
      uStack_10 = (uint)CONCAT12(1,(ushort)uStack_10);
      if (puVar7[7] == 0) {
        uStack_10 = uVar1;
      }
      (**(code **)(*piVar2 + 4))(&local_24,param_1,puVar6,puVar7 + 8);
    }
  }
  return;
}

