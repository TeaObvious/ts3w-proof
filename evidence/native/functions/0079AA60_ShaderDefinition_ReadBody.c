/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: shader-definition body reader. Reads flags; conditionally reads linked definition/set
   IDs for bits 0x400 and 0x800; resizes its stage array and reads each stage's TECH/pass data. The
   0x400/0x800 meanings beyond these links are inferred from consumers, not original symbols. */

void __thiscall ShaderDefinition_ReadBody(void *this,void *param_1,void *param_2)

{
  uint *outUInt32;
  void *this_00;
  bool bVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  
  this_00 = param_1;
  outUInt32 = (uint *)((int)this + 0x18);
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),outUInt32,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  if ((*outUInt32 & 0x400) != 0) {
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x20),
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar1);
  }
  if ((*outUInt32 & 0x800) != 0) {
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x24),
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar1);
  }
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_1,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  if (*(char *)((int)this_00 + 0x14) != '\0') {
    bVar1 = StreamReader_CheckArrayBytes(this_00,*(uint *)((int)this + 0xc),4);
    if (bVar1) {
      uVar2 = ShaderDefinition_ResizeStageSlots(this,(int)param_1);
      if ((char)uVar2 == '\0') {
        StreamReader_AccumulateStatus(this_00,0);
        *(undefined1 *)((int)this_00 + 0x14) = 0;
        return;
      }
      uVar3 = 0;
      if (*(int *)((int)this + 0xc) != 0) {
        iVar4 = 0;
        while( true ) {
          uVar2 = ShaderTechnique_ReadTECH
                            ((void *)(*(int *)((int)this + 8) + iVar4),this_00,param_2);
          if ((char)uVar2 == '\0') break;
          uVar3 = uVar3 + 1;
          iVar4 = iVar4 + 0x10;
          if (*(uint *)((int)this + 0xc) <= uVar3) {
            return;
          }
        }
        StreamReader_AccumulateStatus(this_00,0);
        *(undefined1 *)((int)this_00 + 0x14) = 0;
      }
    }
  }
  return;
}

