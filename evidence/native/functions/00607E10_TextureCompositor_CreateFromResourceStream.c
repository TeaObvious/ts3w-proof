/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Creates and loads only resource types 0x033A1435 or 0x0341ACC9. Assigns the output only after
   successful inner load; releases the temporary object on failure. Inner decoder semantics remain
   separate. */

uint __cdecl
TextureCompositor_CreateFromResourceStream
          (int *param_1,void *param_2,int param_3,int param_4,undefined4 *param_5)

{
  int *piVar1;
  undefined4 *puVar2;
  uint in_EAX;
  undefined4 *puVar3;
  int *piVar4;
  void *pvVar5;
  undefined4 uVar6;
  undefined **local_8;
  int local_4;
  
  puVar2 = param_5;
  piVar1 = param_1;
  if ((param_1 == (int *)0x0) || (param_5 == (undefined4 *)0x0)) {
    return in_EAX & 0xffffff00;
  }
  param_1 = (int *)0x0;
  if (param_3 == 0x33a1435) {
    puVar3 = (undefined4 *)FUN_004e4500(0x68,"CAS/TextureCompositorResource/CreateFromStream",0);
    if (puVar3 == (undefined4 *)0x0) {
LAB_00607e94:
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = (int *)FUN_00600a30(puVar3);
    }
  }
  else {
    pvVar5 = (void *)param_3;
    if (param_3 != 0x341acc9) goto LAB_00607ee5;
    puVar3 = (undefined4 *)FUN_004e4500(0x68,"CAS/TextureCompositorResource/CreateFromStream",0);
    if (puVar3 == (undefined4 *)0x0) goto LAB_00607e94;
    piVar4 = FUN_00600ad0(puVar3);
  }
  pvVar5 = FUN_008c8d00(&param_1,piVar4);
  piVar4 = param_1;
  if (param_1 != (int *)0x0) {
    local_4 = param_4;
    local_8 = &PTR_LAB_00fe7748;
    uVar6 = FUN_00607610(param_1,piVar1,(int *)(-(uint)(param_4 != 0) & (uint)&local_8),param_2);
    if ((char)uVar6 != '\0') {
      *puVar2 = piVar4;
      return CONCAT31((int3)((uint)uVar6 >> 8),1);
    }
    local_8 = &PTR_LAB_00fd8b5c;
    pvVar5 = (void *)(**(code **)(*piVar4 + 4))();
  }
LAB_00607ee5:
  return (uint)pvVar5 & 0xffffff00;
}

