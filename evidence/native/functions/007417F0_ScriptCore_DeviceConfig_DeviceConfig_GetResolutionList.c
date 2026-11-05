/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01160ff8 (original PC 1.67 TS3W.exe).
   ScriptCore.DeviceConfig::DeviceConfig_GetResolutionList [assembly=ScriptCore token=0x06000FF8; ;
   return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.DeviceConfig::DeviceConfig_GetResolutionList(void)

{
  uint *puVar1;
  int *piVar2;
  int iVar3;
  uint *puVar4;
  undefined4 local_134;
  uint local_130;
  uint local_12c;
  int *local_128;
  uint *local_124;
  uint *local_120;
  uint *local_11c;
  uint *local_118;
  char *local_114;
  uint *local_110;
  uint local_108 [64];
  uint local_8;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_134 = 0;
  local_128 = piVar2;
  iVar3 = FUN_0058e800();
  if (iVar3 != 0) {
    puVar4 = *(uint **)(iVar3 + 0x7c);
    local_124 = *(uint **)(iVar3 + 0x80);
    local_120 = local_108;
    local_118 = &local_8;
    local_114 = "Scripting/DeviceConfigHost";
    local_11c = local_120;
    local_110 = local_120;
    if (puVar4 != local_124) {
      do {
        local_12c = *puVar4;
        local_130 = puVar4[1] << 0x10 | puVar4[2];
        if (local_11c < local_118) {
          puVar1 = local_11c + 2;
          if (local_11c != (uint *)0x0) {
            *local_11c = local_130;
            local_11c[1] = local_12c;
          }
        }
        else {
          FUN_00749a20(&local_120,local_11c,&local_130);
          puVar1 = local_11c;
        }
        local_11c = puVar1;
        puVar4 = puVar4 + 4;
        piVar2 = local_128;
      } while (puVar4 != local_124);
    }
    local_130 = 0x1e00000;
    local_12c = 0x280;
    if (local_11c < local_118) {
      puVar4 = local_11c + 2;
      if (local_11c != (uint *)0x0) {
        *local_11c = 0x1e00000;
        local_11c[1] = 0x280;
      }
    }
    else {
      FUN_00749a20(&local_120,local_11c,&local_130);
      puVar4 = local_11c;
    }
    local_11c = puVar4;
    local_130 = 0x2580000;
    local_12c = 800;
    if (local_11c < local_118) {
      puVar4 = local_11c + 2;
      if (local_11c != (uint *)0x0) {
        *local_11c = 0x2580000;
        local_11c[1] = 800;
      }
    }
    else {
      FUN_00749a20(&local_120,local_11c,&local_130);
      puVar4 = local_11c;
    }
    local_11c = puVar4;
    FUN_00741780(local_120,local_11c);
    (**(code **)(*piVar2 + 0x88))(&local_134,(int)local_11c - (int)local_120 >> 3);
    (**(code **)(*piVar2 + 0xa0))(&stack0xfffffec4,local_128,0,(int)local_124 - (int)local_128 >> 3)
    ;
    if ((local_120 != (uint *)0x0) && (local_120 != local_110)) {
      FUN_004e44e0((int)local_120);
    }
  }
  return local_134;
}

