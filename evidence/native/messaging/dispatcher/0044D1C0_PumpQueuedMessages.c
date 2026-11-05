/* Pops queued message records before invoking targets or the dispatcher listener path, then
   conditionally releases target/payload references. Returns the processed count. B3 selects
   continued draining versus an unsigned64 frontier built from the initial UInt32 queue count and
   shared UInt64 processed counter. This is not a snapshot of original message identities or a time
   budget; reentrancy and priority changes can affect which entries are selected. Analyst-assigned
   name. */

int __fastcall PumpQueuedMessages(int *param_1)

{
  uint *puVar1;
  uint uVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  int *piVar8;
  int local_24;
  int *local_10;
  code *local_8;
  int local_4;

  piVar8 = (int *)0x0;
  iVar7 = 0;
  local_24 = 0;
  local_10 = (int *)0x0;
  local_8 = (code *)0x0;
  local_4 = 0;
  if ((char)param_1[0x2c] != '\0') {
    FUN_004e1c00(param_1 + 8,(uint *)&DAT_00fa2ac8);
  }
  uVar6 = 0;
  for (piVar3 = (int *)param_1[3]; piVar3 != param_1 + 3; piVar3 = (int *)*piVar3) {
    uVar6 = uVar6 + 1;
  }
  uVar4 = param_1[0x14];
  uVar5 = param_1[0x15] + (uint)CARRY4(uVar6,param_1[0x14]);
  if ((char)param_1[0x2c] == '\0') goto LAB_0044d246;
  FUN_004e1cc0((LPCRITICAL_SECTION)(param_1 + 8));
  do {
    do {
      if ((char)param_1[0x2c] != '\0') {
        FUN_004e1c00(param_1 + 8,(uint *)&DAT_00fa2ac8);
      }
LAB_0044d246:
      piVar3 = (int *)param_1[3];
      if (piVar3 != param_1 + 3) {
        /* 0044D254: Copy the queued record to locals, unlink and free its 20h-byte node, increment the processed UInt64 counter, then release the queue lock before callbacks. */
        local_10 = (int *)piVar3[4];
        iVar7 = piVar3[2];
        piVar8 = (int *)piVar3[3];
        local_8 = (code *)piVar3[6];
        local_4 = piVar3[7];
        *(int *)piVar3[1] = *piVar3;
        *(int *)(*piVar3 + 4) = piVar3[1];
        (**(code **)(*(int *)param_1[5] + 0xc))(piVar3,0x20);
        puVar1 = (uint *)(param_1 + 0x14);
        uVar2 = *puVar1;
        *puVar1 = *puVar1 + 1;
        param_1[0x15] = param_1[0x15] + (uint)(0xfffffffe < uVar2);
        local_24 = local_24 + 1;
      }
      if ((char)param_1[0x2c] != '\0') {
        FUN_004e1cc0((LPCRITICAL_SECTION)(param_1 + 8));
      }
      if (piVar3 == param_1 + 3) {
        return local_24;
      }
      if (local_10 == (int *)0x0) {
        if (local_8 == (code *)0x0) {
          /* 0044D315: A913D0 used target=null and callback=null, so this branch invokes dispatcher virtual+18 with the same ID and payload. Table00FA2B00 resolves that slot to44D5F0, whose current Ghidra definition is unavailable; complete outer delivery remains explicitly open. */
          (**(code **)(*param_1 + 0x18))(iVar7,piVar8,0);
        }
        else {
          (*local_8)(iVar7,piVar8,local_4);
          if ((char)param_1[0x2d] != '\0') {
            (*local_8)(2,0,local_4);
          }
        }
      }
      else {
        (**(code **)(*local_10 + 4))(iVar7,piVar8);
        if ((char)param_1[0x2d] != '\0') {
          (**(code **)(*local_10 + 0xc))();
        }
      }
      /* 0044D322: After callback/dispatch, release nonnull payload through virtual+8 when B4 is enabled. For the constructed floor message this is69EE30; any extra receiver-local retained reference is separate. */
      if ((piVar8 != (int *)0x0) && ((char)param_1[0x2d] != '\0')) {
        (**(code **)(*piVar8 + 8))();
      }
    } while ((*(char *)((int)param_1 + 0xb3) != '\0') || ((uint)param_1[0x15] < uVar5));
    if (uVar5 < (uint)param_1[0x15]) {
      return local_24;
    }
  } while ((uint)param_1[0x14] < uVar6 + uVar4);
  return local_24;
}
