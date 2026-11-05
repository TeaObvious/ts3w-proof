/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: material shader selection. Chooses option sources for the requested context/mode,
   resolves certain shader aliases, calls ShaderSet_SelectVariantFromOptions, and then looks up the
   shader definition by key and variant index. On -1 with fallback allowed it looks up shadererror.
   The mode-number meanings require the caller and material contract; they are not original
   recovered names. */

void * __thiscall
MaterialShaderBinding_SelectShader
          (void *this,uint *param_1,undefined4 param_2,uint *param_3,char param_4)

{
  uint uVar1;
  uint uVar2;
  uint *puVar3;
  uint uVar4;
  int *piVar5;
  undefined4 uVar6;
  void *pvVar7;
  uint *this_00;
  uint *this_01;
  int iVar8;
  char cVar9;
  uint *local_8;
  void *local_4;
  
  local_4 = DAT_011d853c;
  local_8 = (uint *)0x0;
  this_00 = param_3;
  if (param_3 == (uint *)0x0) {
    this_00 = *(uint **)((int)this + 0x44);
  }
  iVar8 = 0;
  param_3 = param_1;
  switch(param_2) {
  case 1:
  case 3:
    uVar4 = FUN_006c96c0(this_00,0x10bbc4b4);
    if (uVar4 == 0) {
      return (void *)0x0;
    }
    if (uVar4 != this_00[2]) {
      cVar9 = '\0';
      piVar5 = FUN_0074efa0((int *)&local_8);
      uVar6 = FUN_0079b560(DAT_011d853c,uVar4,piVar5,cVar9);
      if ((char)uVar6 == '\0') {
LAB_006ca8a8:
        if (local_8 == (uint *)0x0) {
          return (void *)0x0;
        }
        (**(code **)(*local_8 + 4))();
        return (void *)0x0;
      }
      this_00 = local_8;
    }
    param_3 = param_1 + 0x12;
    param_4 = '\0';
    break;
  case 4:
    iVar8 = -0x58e4ad07;
    break;
  case 5:
    iVar8 = -0x7f18cc9a;
    break;
  case 6:
    param_3 = param_1 + 0x12;
    iVar8 = -0x7f18cc9a;
    break;
  case 9:
    iVar8 = -0x3c99bfbd;
    break;
  case 10:
    iVar8 = -0x5b00c67e;
  }
  puVar3 = local_8;
  uVar4 = param_1[0x25];
  uVar1 = param_1[0x24];
  this_01 = param_1 + 0x24;
  if (iVar8 == 0) {
    FUN_006ca680(this_01,param_2);
LAB_006ca996:
    iVar8 = ShaderSet_SelectVariantFromOptions
                      (this_00,param_3,(int *)*this_01,(int)(param_1[0x25] - *this_01) >> 2);
    FUN_0044fd10(this_01,(int)(uVar4 - uVar1) >> 2);
    if ((iVar8 == -1) && (param_4 != '\0')) {
      pvVar7 = (void *)ShaderLibrary_FindByName(local_4,"shadererror",0,'\0');
      if (local_8 != (uint *)0x0) {
        (**(code **)(*local_8 + 4))();
        return pvVar7;
      }
    }
    else {
      pvVar7 = ShaderLibrary_FindDefinition(local_4,this_00[2],iVar8,param_4);
      if (local_8 != (uint *)0x0) {
        (**(code **)(*local_8 + 4))();
      }
    }
    return pvVar7;
  }
  piVar5 = (int *)this_00[3];
  do {
    if (piVar5 == (int *)this_00[4]) {
LAB_006ca938:
      if (local_8 != (uint *)0x0) {
        (**(code **)(*local_8 + 4))();
      }
      return (void *)0x0;
    }
    if (*piVar5 == iVar8) {
      uVar2 = piVar5[1];
      if (uVar2 != 0) {
        if (uVar2 == this_00[2]) goto LAB_006ca996;
        if (local_8 != (uint *)0x0) {
          local_8 = (uint *)0x0;
          (**(code **)(*puVar3 + 4))();
        }
        uVar6 = FUN_0079b560(DAT_011d853c,uVar2,&local_8,'\0');
        if ((char)uVar6 == '\0') goto LAB_006ca8a8;
        this_00 = local_8;
        goto LAB_006ca996;
      }
      goto LAB_006ca938;
    }
    piVar5 = piVar5 + 2;
  } while( true );
}

