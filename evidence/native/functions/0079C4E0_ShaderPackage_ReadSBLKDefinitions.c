/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: SHDS definition-block reader. The package parser passes a capability mask; the low and
   second bytes select SBLK groups by intersection, with zero meaning unrestricted. Accepted blocks
   instantiate ShaderDefinition objects; rejected blocks seek to their recorded end. Low AL/reader
   state governs failure. */

void __thiscall ShaderPackage_ReadSBLKDefinitions(void *this,void *param_1,void *param_2)

{
  undefined4 *puVar1;
  void *this_00;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  void *pvVar5;
  uint local_24;
  uint local_20;
  uint local_1c;
  uint local_18;
  uint local_14;
  uint local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
  this_00 = param_1;
  uVar2 = FUN_004dd980(*(int **)((int)param_1 + 8),&local_1c);
  FUN_007d79f0(this_00,(byte)uVar2);
  local_18 = (uint)param_2 & 0xff;
  local_14 = (uint)param_2 & 0xff00;
  local_20 = 0;
  if (local_1c != 0) {
    while (uVar4 = local_14, uVar2 = local_18, *(char *)((int)this_00 + 0x14) != '\0') {
      uVar3 = FUN_004dd980(*(int **)((int)this_00 + 8),&local_10);
      FUN_007d79f0(this_00,(byte)uVar3);
      uVar3 = FUN_004dd980(*(int **)((int)this_00 + 8),&local_4);
      FUN_007d79f0(this_00,(byte)uVar3);
      uVar3 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)&param_1);
      FUN_007d79f0(this_00,(byte)uVar3);
      uVar3 = FUN_004dd980(*(int **)((int)this_00 + 8),&local_c);
      FUN_007d79f0(this_00,(byte)uVar3);
      if ((*(char *)((int)this_00 + 0x14) == '\0') || (local_10 != 0x4b4c4253)) {
        FUN_007d79f0(this_00,0);
        *(undefined1 *)((int)this_00 + 0x14) = 0;
        return;
      }
      if (((uVar2 == 0) || ((uVar2 & (uint)param_1) != 0)) &&
         ((uVar4 == 0 || ((uVar4 & (uint)param_1) != 0)))) {
        uVar2 = FUN_004dd980(*(int **)((int)this_00 + 8),&local_24);
        FUN_007d79f0(this_00,(byte)uVar2);
        uVar2 = 0;
        if (local_24 != 0) {
          do {
            if (*(char *)((int)this_00 + 0x14) == '\0') break;
            uVar4 = FUN_004dd980(*(int **)((int)this_00 + 8),&local_8);
            FUN_007d79f0(this_00,(byte)uVar4);
            pvVar5 = (void *)FUN_004e4500(0x38,"Shader/Shader",0);
            if (pvVar5 == (void *)0x0) {
              pvVar5 = (void *)0x0;
            }
            else {
              pvVar5 = (void *)FUN_0079a660(pvVar5,local_4,local_8);
            }
            *(void **)((int)pvVar5 + 0x28) = param_1;
            param_2 = pvVar5;
            ShaderDefinition_ReadBody(pvVar5,this_00,*(void **)this);
            if (*(char *)((int)this_00 + 0x14) == '\0') {
              FUN_0079aa40(pvVar5);
              FUN_004e44e0((int)pvVar5);
              break;
            }
            puVar1 = *(undefined4 **)((int)this + 0x20);
            if (puVar1 < *(undefined4 **)((int)this + 0x24)) {
              *(undefined4 **)((int)this + 0x20) = puVar1 + 1;
              if (puVar1 != (undefined4 *)0x0) {
                *puVar1 = pvVar5;
              }
            }
            else {
              FUN_00982420((void *)((int)this + 0x1c),puVar1,&param_2);
            }
            uVar2 = uVar2 + 1;
          } while (uVar2 < local_24);
        }
      }
      else {
        FUN_007d8490(this_00,local_c,1);
      }
      local_20 = local_20 + 1;
      if (local_1c <= local_20) {
        return;
      }
    }
  }
  return;
}

