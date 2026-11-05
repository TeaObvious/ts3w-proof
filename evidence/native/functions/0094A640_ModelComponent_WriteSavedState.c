/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 saved Model writer. ECX component, stack4 writer, stack8 descriptor; RET8, status
   in AL. Descriptor+10 supplies the narrow resource context. Registers/writes Model+8,+18,+28 as
   UInt16 handles, ordered compositors/preset, effective flags (+50==-1 selects+54 else OR),
   material+4C, byte+80, bounds and separate +81 bits1/2/0/3. Bit0 is emitted from stored state, not
   inferred from key/prototype equality. Full owned Listing379instructions1091bytes; child
   resource/compositor/preset service semantics remain separately bounded. Names/types are
   analyst-assigned, original instructions/bytes unchanged. */

byte __thiscall ModelComponent_WriteSavedState(void *this,void *writer,void *descriptor)

{
  void *this_00;
  int *piVar1;
  byte bVar2;
  char cVar3;
  bool bVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  void *this_01;
  int *piVar8;
  undefined4 unaff_EBP;
  uint local_138;
  undefined4 uStack_134;
  int iStack_130;
  undefined4 uStack_12c;
  uint uStack_128;
  undefined4 uStack_124;
  int iStack_120;
  undefined4 uStack_11c;
  uint uStack_114;
  void *pvStack_110;
  undefined1 auStack_10c [8];
  undefined4 *puStack_104;
  undefined4 *puStack_100;
  uint uStack_f8;
  
  if (*(uint *)((int)this + 0x50) == 0xffffffff) {
    local_138 = *(uint *)((int)this + 0x54);
  }
  else {
    local_138 = *(uint *)((int)this + 0x50) | *(uint *)((int)this + 0x54);
  }
  this_00 = *(void **)((int)descriptor + 0x10);
  uVar5 = ResourceReferences_RegisterKey(this_00,(uint *)((int)this + 8),0);
  bVar2 = Stream_WriteUInt16(*(void **)((int)writer + 8),(ushort)uVar5,*(uint *)((int)writer + 0x10)
                            );
  StreamReader_AccumulateStatus(writer,bVar2);
  uVar5 = ResourceReferences_RegisterKey(this_00,(uint *)((int)this + 0x18),0);
  bVar2 = Stream_WriteUInt16(*(void **)((int)writer + 8),(ushort)uVar5,*(uint *)((int)writer + 0x10)
                            );
  StreamReader_AccumulateStatus(writer,bVar2);
  uVar5 = ResourceReferences_RegisterKey(this_00,(uint *)((int)this + 0x28),0);
  bVar2 = Stream_WriteUInt16(*(void **)((int)writer + 8),(ushort)uVar5,*(uint *)((int)writer + 0x10)
                            );
  StreamReader_AccumulateStatus(writer,bVar2);
  FUN_004afe80();
  uVar6 = (**(code **)(**(int **)((int)writer + 8) + 0x24))(0);
  bVar2 = Stream_WriteUInt32(*(void **)((int)writer + 8),0,*(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar2);
  FUN_00949900(auStack_10c);
  piVar1 = *(int **)((int)this + 0x3c);
  uVar5 = uStack_f8;
  for (piVar8 = *(int **)((int)this + 0x38); piVar8 != piVar1; piVar8 = piVar8 + 1) {
    pvStack_110 = (void *)*piVar8;
    uStack_f8 = uVar5;
    local_138 = ResourceReferences_RegisterKey(this_00,(uint *)((int)pvStack_110 + 8),0);
    local_138 = local_138 & 0xffff;
    uStack_114 = uStack_114 & 0xffffff00;
    FUN_00949ba0(auStack_10c,&uStack_124,(ushort *)&local_138);
    if ((char)iStack_120 != '\0') {
      bVar2 = Stream_WriteUInt16(*(void **)((int)writer + 8),(ushort)local_138,
                                 *(uint *)((int)writer + 0x10));
      StreamReader_AccumulateStatus(writer,bVar2);
      uVar5 = TextureCompositor_WriteObjectEnvelope
                        (*(int **)((int)writer + 8),pvStack_110,(int)writer + 0x18,(int)this_00);
      if ((char)uVar5 == '\0') {
        FUN_00541ed0(auStack_10c,puStack_100);
        return 0;
      }
    }
    uVar5 = uStack_f8;
  }
  iVar7 = (**(code **)(**(int **)((int)writer + 8) + 0x24))(0);
  if ((iVar7 != -1) &&
     (cVar3 = (**(code **)(**(int **)((int)writer + 8) + 0x28))(unaff_EBP,0), cVar3 != '\0')) {
    bVar2 = Stream_WriteUInt32(*(void **)((int)writer + 8),uVar6,*(uint *)((int)writer + 0x10));
    StreamReader_AccumulateStatus(writer,bVar2);
    cVar3 = (**(code **)(**(int **)((int)writer + 8) + 0x28))(iVar7,0);
    if (cVar3 != '\0') goto LAB_0094a825;
  }
  *(undefined1 *)((int)writer + 0x14) = 0;
LAB_0094a825:
  iVar7 = *(int *)((int)this + 0x48);
  if (iVar7 == 0) {
    local_138 = 0;
    uStack_134 = 0;
    iStack_130 = 0;
    uStack_12c = 0;
    uVar6 = ResourceReferences_RegisterKey(this_00,&local_138,0);
    bVar2 = Stream_WriteUInt16(*(void **)((int)writer + 8),(ushort)uVar6,
                               *(uint *)((int)writer + 0x10));
    StreamReader_AccumulateStatus(writer,bVar2);
  }
  else {
    uStack_128 = *(uint *)(iVar7 + 8);
    uStack_124 = *(undefined4 *)(iVar7 + 0xc);
    iStack_120 = *(int *)(iVar7 + 0x10);
    uStack_11c = *(undefined4 *)(iVar7 + 0x14);
    if (iStack_120 == 0) {
      this_01 = (void *)ProductPresets_GetGlobalOwner();
      CompositorKeys_ChooseUnusedRandomInstance(this_01,&local_138,0x44ae110);
      uStack_11c = uStack_12c;
      iVar7 = *(int *)((int)this + 0x48);
      uStack_128 = local_138;
      uStack_124 = uStack_134;
      iStack_120 = iStack_130;
      *(uint *)(iVar7 + 8) = local_138;
      *(undefined4 *)(iVar7 + 0xc) = uStack_134;
      *(int *)(iVar7 + 0x10) = iStack_130;
      *(undefined4 *)(iVar7 + 0x14) = uStack_12c;
    }
    uVar6 = ResourceReferences_RegisterKey(this_00,&uStack_128,0);
    bVar2 = Stream_WriteUInt16(*(void **)((int)writer + 8),(ushort)uVar6,
                               *(uint *)((int)writer + 0x10));
    StreamReader_AccumulateStatus(writer,bVar2);
    cVar3 = Preset_WriteContextEnvelope(writer,*(void **)((int)this + 0x48),this_00);
    if (cVar3 == '\0') {
      FUN_00541ed0(&pvStack_110,puStack_104);
      return 0;
    }
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)writer + 8),uVar5,*(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)writer + 8),*(uint *)((int)this + 0x4c),
                             *(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar2);
  bVar2 = Stream_WriteByte(*(undefined **)((int)writer + 8),*(byte *)((int)this + 0x80));
  StreamReader_AccumulateStatus(writer,bVar2);
  FUN_007d7b90(writer,(uint *)((int)this + 0x60));
  FUN_007d7b90(writer,(uint *)((int)this + 0x70));
  bVar4 = Stream_WriteBoolean(*(void **)((int)writer + 8),*(byte *)((int)this + 0x81) >> 1 & 1);
  StreamReader_AccumulateStatus(writer,bVar4);
  bVar2 = Stream_WriteByte(*(undefined **)((int)writer + 8),*(byte *)((int)this + 0x81) >> 2 & 1);
  StreamReader_AccumulateStatus(writer,bVar2);
  bVar4 = Stream_WriteBoolean(*(void **)((int)writer + 8),*(byte *)((int)this + 0x81) & 1);
  StreamReader_AccumulateStatus(writer,bVar4);
  bVar4 = Stream_WriteBoolean(*(void **)((int)writer + 8),*(byte *)((int)this + 0x81) >> 3 & 1);
  StreamReader_AccumulateStatus(writer,bVar4);
  bVar2 = *(byte *)((int)writer + 0x14);
  FUN_00541ed0(&pvStack_110,puStack_104);
  return bVar2;
}

