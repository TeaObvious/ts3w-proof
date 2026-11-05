/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC 1.67 bounded physical function. Resource request wrapper: ECX service interface,
   three stack words (key, interface identity, output pointer), RET0C and AL success. Loads an owner
   then queries its interface; false releases acquired owner. The lower six-word manager operation
   stays opaque. The stored decompiler signature is inferred and is not an independently established
   foreign prototype. Full owned range 00734930..0073498c; instruction bytes unchanged. */

undefined4 ResourceSystem_LoadAndQueryInterface(int *param_1)

{
  char cVar1;
  int iVar2;
  int in_ECX;
  undefined4 uVar3;
  int *piVar4;
  undefined4 uStack_4;
  
  piVar4 = (int *)0x0;
  uVar3 = 0;
  uStack_4 = 0;
  cVar1 = (**(code **)(*(int *)(in_ECX + 8) + 0xc))(param_1,&uStack_4,0,0,0,0);
  if (cVar1 != '\0') {
    iVar2 = (**(code **)(*param_1 + 0xc))(uVar3);
    *piVar4 = iVar2;
    if (iVar2 != 0) {
      return 1;
    }
  }
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return 0;
}

