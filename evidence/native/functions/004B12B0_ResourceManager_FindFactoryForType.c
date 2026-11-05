/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC 1.67 bounded physical function. Registered factory lookup: ECX manager and two
   physical DWORD arguments, type and selector, RET8. Selector FFFFFFFF selects first ordered
   factory in the type bucket; otherwise capability dispatch chooses a matching factory. EAX
   pointer/zero. Registry and lock remain actual owners. The stored decompiler signature is inferred
   and is not an independently established foreign prototype. Full owned range 004b12b0..004b134c;
   instruction bytes unchanged. */

int * ResourceManager_FindFactoryForType(uint param_1,int param_2)

{
  LPCRITICAL_SECTION this;
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  char cVar4;
  int *piVar5;
  int in_ECX;
  undefined4 *puVar6;
  undefined4 auStack_8 [2];
  
  this = (LPCRITICAL_SECTION)(in_ECX + 0x1a0);
  FUN_004e1c00(this,(uint *)&DAT_00fb3ce0);
  piVar5 = (int *)FUN_00577090((void *)(in_ECX + 0x78),auStack_8,&param_1);
  iVar3 = param_2;
  iVar1 = *piVar5;
  if (iVar1 != *(int *)(*(int *)(in_ECX + 0x7c) + *(int *)(in_ECX + 0x80) * 4)) {
    puVar2 = *(undefined4 **)(iVar1 + 8);
    for (puVar6 = *(undefined4 **)(iVar1 + 4); puVar6 != puVar2; puVar6 = puVar6 + 2) {
      piVar5 = (int *)*puVar6;
      if ((iVar3 == -1) || (cVar4 = (**(code **)(*piVar5 + 0x30))(param_1,iVar3), cVar4 != '\0')) {
        FUN_004e1cc0(this);
        return piVar5;
      }
    }
  }
  FUN_004e1cc0(this);
  return (int *)0x0;
}

