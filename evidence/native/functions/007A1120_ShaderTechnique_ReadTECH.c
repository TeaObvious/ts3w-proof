/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: TECH reader. Requires TECH tag, reads the technique key and pass count, allocates the
   pass array, then calls ShaderPass_ReadPASS for each pass. For later passes, missing 0xffffffff
   stage indices inherit the preceding pass's indices. The comparison and inheritance are
   instruction-backed. */

uint __thiscall ShaderTechnique_ReadTECH(void *this,void *param_1,void *param_2)

{
  bool bVar1;
  char cVar2;
  uint extraout_EAX;
  uint uVar3;
  uint3 extraout_var;
  int iVar4;
  uint uVar5;
  void *this_00;
  uint local_c;
  uint local_8;
  uint local_4;
  
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_c,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  uVar3 = extraout_EAX;
  if (local_c == 0x48434554) {
    bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_4,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar1);
    bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_8,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar1);
    uVar3 = ShaderTechnique_ResizePasses(this,local_4,local_8);
    if ((char)uVar3 != '\0') {
      uVar5 = 0;
      if (*(int *)((int)this + 4) != 0) {
        iVar4 = 0;
        do {
          this_00 = (void *)(*(int *)this + iVar4);
          cVar2 = ShaderPass_ReadPASS(this_00,param_1,param_2);
          uVar3 = CONCAT31(extraout_var,cVar2);
          if (cVar2 == '\0') {
            return (uint)extraout_var << 8;
          }
          if (uVar5 != 0) {
            uVar3 = 0xffffffff;
            if (*(int *)((int)this_00 + 0x24) == -1) {
              *(undefined4 *)((int)this_00 + 0x24) = *(undefined4 *)(iVar4 + -0x168 + *(int *)this);
            }
            if (*(int *)((int)this_00 + 0x28) == -1) {
              uVar3 = *(uint *)this;
              *(undefined4 *)((int)this_00 + 0x28) = *(undefined4 *)(iVar4 + -0x164 + uVar3);
            }
          }
          uVar5 = uVar5 + 1;
          iVar4 = iVar4 + 0x18c;
        } while (uVar5 < *(uint *)((int)this + 4));
      }
      return CONCAT31((int3)(uVar3 >> 8),1);
    }
  }
  return uVar3 & 0xffffff00;
}

