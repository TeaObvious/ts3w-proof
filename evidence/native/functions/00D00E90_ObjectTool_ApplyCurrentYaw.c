/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX tool, byte argument in one stack word, RET4. Existing attachment/wall403F path delegates
   separately; ordinary path invokes current tool virtual80(current raw yaw,1). Object
   vtable01084370+80 resolvesCFF160. No virtual-target guess from method name. */

void __thiscall ObjectTool_ApplyCurrentYaw(void *this,char param_1)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  void *pvVar5;
  int iVar6;
  
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar1 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar1 = *(int *)((int)this + 0x60);
  }
  if (iVar1 == 0) {
    pvVar5 = (void *)0x0;
  }
  else {
    pvVar5 = *(void **)(iVar1 + 0x58);
  }
  iVar1 = FUN_00b01f30(pvVar5,(undefined4 *)0x0);
  if ((iVar1 == 0) && (*(void **)((int)this + 0x1b8) != (void *)0x0)) {
    uVar2 = Catalog_TestPlacementMask403F(*(void **)((int)this + 0x1b8));
    if ((char)uVar2 != '\0') {
      iVar1 = 1;
      if (*(char *)((int)this + 0x2f7) == '\0') {
        iVar4 = *(int *)((int)this + 0x5c);
      }
      else {
        iVar4 = *(int *)((int)this + 0x60);
      }
      if (iVar4 == 0) {
        pvVar5 = (void *)0x0;
      }
      else {
        pvVar5 = *(void **)(iVar4 + 0x58);
      }
      uVar3 = FUN_00affcb0(pvVar5);
      iVar4 = *(int *)((int)this + 0x1b8);
      if ((iVar4 == 0) ||
         (iVar6 = *(int *)(iVar4 + 0xd8) - *(int *)(iVar4 + 0xd4), iVar4 = iVar6 >> 0x1f,
         iVar6 / 0x28 + iVar4 == iVar4)) {
        if (*(char *)((int)this + 0x2f7) == '\0') {
          iVar4 = *(int *)((int)this + 0x5c);
        }
        else {
          iVar4 = *(int *)((int)this + 0x60);
        }
        if (iVar4 == 0) {
          pvVar5 = (void *)0x0;
        }
        else {
          pvVar5 = *(void **)(iVar4 + 0x58);
        }
        FUN_00affc80(pvVar5,1);
      }
      else {
        iVar1 = 2;
      }
      FUN_00cff610(this,iVar1,(float *)((int)this + 0xb8),*(float *)((int)this + 0xe0),param_1);
      if (*(char *)((int)this + 0x2f7) == '\0') {
        iVar1 = *(int *)((int)this + 0x5c);
      }
      else {
        iVar1 = *(int *)((int)this + 0x60);
      }
      if (iVar1 != 0) {
        FUN_00affc80(*(void **)(iVar1 + 0x58),(byte)uVar3);
        return;
      }
      FUN_00affc80((void *)0x0,(byte)uVar3);
      return;
    }
  }
  (**(code **)(*(int *)this + 0x80))(*(undefined4 *)((int)this + 0xe0),1);
  return;
}

