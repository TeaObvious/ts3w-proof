/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */


/* Analyst PC1.67 static: ECX DesignSwap; hash,data,byteCount stack words, RET0x0C. Null/zero
   payload rejects; find+0x74 map resource, obtain0x03420F34 interface, wrap bytes and call607610,
   then invoke virtual+0x04 and4DEE00 cleanup. Child virtual effects and refcount semantics are not
   established here. Only AL reports success/failure; upper EAX unspecified. Missing interface can
   be dereferenced. This does not prove full material completion or GPU scheduling. Descriptive
   analyst role, not a recovered original symbol. */

uint __thiscall
DesignSwap_UploadPatternResource(void *this,undefined4 param_1,void *param_2,size_t param_3)

{
  void *pvVar1;
  size_t sVar2;
  uint in_EAX;
  int *this_00;
  undefined4 uVar3;
  int iVar4;
  uint local_34 [2];
  undefined **ppuStack_2c;
  undefined4 *puStack_28;
  
  sVar2 = param_3;
  pvVar1 = param_2;
  if ((param_3 == 0) || (param_2 == (void *)0x0)) {
    return in_EAX & 0xffffff00;
  }
  UInt32PairMap_Find((void *)((int)this + 0x74),local_34,&param_1);
  if (local_34[0] != *(uint *)(*(int *)((int)this + 0x78) + *(int *)((int)this + 0x7c) * 4)) {
    if (*(int **)(local_34[0] + 4) == (int *)0x0) {
      this_00 = (int *)0x0;
    }
    else {
      this_00 = (int *)(**(code **)(**(int **)(local_34[0] + 4) + 0xc))(0x3420f34);
    }
    (**(code **)*this_00)();
    FUN_004df4c0(&ppuStack_2c,pvVar1,sVar2,'\0',1,(int *)0x0,0);
    uVar3 = FUN_00607610(this_00,(int *)&ppuStack_2c,(int *)0x0,(void *)0x0);
    if ((char)uVar3 != '\0') {
      iVar4 = (**(code **)(*this_00 + 4))();
      ppuStack_2c = &PTR_FUN_00fb6c00;
      if (puStack_28 != (undefined4 *)0x0) {
        iVar4 = MemoryBacking_ReleaseReference(puStack_28);
      }
      return CONCAT31((int3)((uint)iVar4 >> 8),1);
    }
    local_34[0] = (**(code **)(*this_00 + 4))();
    ppuStack_2c = &PTR_FUN_00fb6c00;
    if (puStack_28 != (undefined4 *)0x0) {
      local_34[0] = MemoryBacking_ReleaseReference(puStack_28);
    }
  }
  return local_34[0] & 0xffffff00;
}

