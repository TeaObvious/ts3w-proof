/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: SPKG v2 reader. Checks little-endian SPKG and version 2, then SHDB, SMDB, SETS, SHDS and
   optional LINK chunks before END. SHDB feeds the vertex/pixel bytecode database; SMDB holds
   sampler presets; SETS and SHDS build set/definition collections. Low AL is success; failure
   clears the reader state. Verify each chunk boundary against the original instructions. */

uint __thiscall
ShaderPackage_ReadSPKG
          (void *this,undefined4 *param_1,void *param_2,uint param_3,char param_4,undefined4 param_5
          )

{
  char cVar1;
  undefined4 *this_00;
  void *pvVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  uint local_c;
  uint local_8;
  uint local_4;
  
  this_00 = param_1;
  uVar4 = FUN_004dd980((int *)param_1[2],&local_8);
  FUN_007d79f0(this_00,(byte)uVar4);
  uVar4 = FUN_004dd980((int *)this_00[2],&local_c);
  FUN_007d79f0(this_00,(byte)uVar4);
  if ((local_8 == 0x474b5053) && (local_c == 2)) {
    uVar4 = FUN_004dd980((int *)this_00[2],(uint *)&param_1);
    FUN_007d79f0(this_00,(byte)uVar4);
    if ((*(char *)(this_00 + 5) != '\0') && (param_1 == (undefined4 *)0x42444853)) {
      FUN_005684b0(this_00,&local_4);
      iVar5 = FUN_007d8470((int)this_00);
      pvVar2 = param_2;
      if ((char)param_3 != '\0') {
        ShaderDatabase_ReadLINKAndDBUF(*(void **)this,this_00,(uint)param_2,param_5);
      }
      uVar4 = FUN_007d8490(this_00,iVar5 + local_4,0);
      if (*(char *)(this_00 + 5) != '\0') {
        FUN_005684b0(this_00,(uint *)&param_1);
        if ((*(char *)(this_00 + 5) != '\0') && (param_1 == (undefined4 *)0x42444d53)) {
          uVar4 = ShaderSamplerDatabase_ReadSMPS(*(void **)((int)this + 4),this_00);
          if (*(char *)(this_00 + 5) == '\0') goto LAB_0079d3cf;
          FUN_005684b0(this_00,(uint *)&param_1);
          if ((*(char *)(this_00 + 5) != '\0') && (param_1 == (undefined4 *)0x53544553)) {
            uVar4 = ShaderPackage_ReadSSETSets(this,this_00,local_c);
            if (*(char *)(this_00 + 5) == '\0') goto LAB_0079d3cf;
            FUN_005684b0(this_00,(uint *)&param_1);
            if ((*(char *)(this_00 + 5) != '\0') && (param_1 == (undefined4 *)0x53444853)) {
              ShaderPackage_ReadSBLKDefinitions(this,this_00,pvVar2);
              FUN_005684b0(this_00,(uint *)&param_1);
              cVar3 = param_4;
              cVar1 = *(char *)(this_00 + 5);
              while (cVar1 != '\0') {
                if (param_1 != (undefined4 *)0x204d4e4b) {
                  if (param_1 == (undefined4 *)0x20444e45) {
                    return CONCAT31(0x20444e,*(undefined1 *)(this_00 + 5));
                  }
                  break;
                }
                FUN_005684b0(this_00,&param_3);
                iVar5 = FUN_007d8470((int)this_00);
                if (cVar3 != '\0') {
                  FUN_0072f480(*(void **)((int)this + 8),(int *)this_00[2]);
                }
                FUN_007d8490(this_00,iVar5 + param_3,0);
                FUN_005684b0(this_00,(uint *)&param_1);
                cVar1 = *(char *)(this_00 + 5);
              }
            }
          }
        }
        uVar4 = FUN_007d79f0(this_00,0);
        *(undefined1 *)(this_00 + 5) = 0;
      }
LAB_0079d3cf:
      return uVar4 & 0xffffff00;
    }
  }
  uVar4 = FUN_007d79f0(this_00,0);
  *(undefined1 *)(this_00 + 5) = 0;
  return uVar4 & 0xffffff00;
}

