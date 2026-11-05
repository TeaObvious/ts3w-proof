/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name, original PC 1.67 TS3W.exe. Writes LDES type D063545B, group 0, supplied
   owner identity. Hardcodes current UInt16 version 0x45. Header emits three localization UInt64s,
   UTF-16 name, supplied identity, transform, dimensions, signed floor levels, float floor extrema,
   two words and three localized strings. Tail emits type, shared subtype, +418, float +420,
   valuation word, Build/Buy bool, footprint hash UInt64, then later-version fields. Complements
   reader 00AC5A40; supports mapped prefix widths but is not an old-version writer. Structure roles
   and incomplete prototype recovery are analyst inference.
   
   Analyst note (PC1.67 construction persistence contract): LDES D063545B/group0 writer
   hardcodesUInt16version45hex, full current header and later fields. Signed floor range+17C/+180
   follows the name-dependent prefix. Current native output uses the complete45hex layout.
   
   Analyst note (PC1.67 construction persistence contract): ECX lot, resource writer, resource owner
   identity, exportflag, supplied stored identity. Emit full currentUInt16version45hex, localization
   triples/text, pose/dimensions/signed levels/cached extrema, all later-version tail. Ordinary
   ACAA10 supplies exportflag0/storedidentity0: valuation0; export may calculate valuation and
   strips localization keys on retail. Footprint hash is refreshed from live owner+2E8 into+310
   before write; absence emits0. Current boundary flag determines sea float or exact negativeFLT_MAX
   sentinel, then restricted flag, flagsBC and disable. Original state beyond levels must survive
   save.
   
   Analyst note (PC1.67 construction persistence contract): LDES UInt64 atlot+310 is the
   attached-object FOOTPRINT RESOURCE HASH, not a household ID. Before writing, reset+310/+314
   tozero; ifobject+2E8 exists callB03360 and storeitsUInt64hash. B03360 obtains footprint
   component;946890serializes its selected polygons and7CFF10hashesbytes. Ordinarysave still emits
   current45hex/storedidentity0/valuation0. Complete original tail and ownership/export behavior
   remain in actual instructions. */

undefined1 __thiscall
Lot_WriteDescriptionResource
          (void *this,void *resourceWriter,undefined4 param_2,undefined4 param_3,char param_4,
          uint param_5,uint param_6)

{
  float fVar1;
  undefined1 uVar2;
  bool bVar3;
  char cVar4;
  byte bVar5;
  int iVar6;
  uint extraout_EDX;
  undefined4 uVar7;
  undefined4 uVar8;
  uint uVar9;
  float10 fVar10;
  undefined8 uVar11;
  int *piVar12;
  undefined4 local_48;
  undefined4 local_44;
  void *local_40;
  undefined4 local_3c;
  int local_38;
  char *local_34;
  void *local_30;
  undefined4 local_2c;
  int local_28;
  char *local_24;
  void *local_20;
  undefined4 local_1c;
  int local_18;
  char *local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_c = param_3;
  local_10 = param_2;
  local_8 = 0xd063545b;
  local_4 = 0;
  bVar3 = ResourceStreamContext_OpenWrite(resourceWriter,&local_10,1);
  if (!bVar3) {
    return 0;
  }
  param_2 = *(undefined4 *)((int)this + 1000);
  param_3 = *(undefined4 *)((int)this + 0x3ec);
  local_48 = *(undefined4 *)((int)this + 0x400);
  uVar7 = *(undefined4 *)((int)this + 0x3d4);
  local_44 = *(undefined4 *)((int)this + 0x404);
  uVar8 = *(undefined4 *)((int)this + 0x3d0);
  local_20 = (void *)0x0;
  local_1c = 0;
  local_18 = 0;
  local_14 = "Lot/LotHeader/locName";
  FUN_0040b590(&local_20,*(short **)((int)this + 0x3c0));
  local_30 = (void *)0x0;
  local_2c = 0;
  local_28 = 0;
  local_24 = "Lot/LotHeader/locDesc";
  FUN_0040b590(&local_30,*(short **)((int)this + 0x3d8));
  local_40 = (void *)0x0;
  local_3c = 0;
  local_38 = 0;
  local_34 = "Lot/LotHeader/locAddress";
  FUN_0040b590(&local_40,*(short **)((int)this + 0x3f0));
  cVar4 = DirectTargetOf_DownloadContent_DownloadContent_IsDevBuild();
  if ((cVar4 == '\0') && (param_4 != '\0')) {
    uVar7 = 0;
    uVar8 = 0;
    param_2 = 0;
    param_3 = 0;
    local_48 = 0;
    local_44 = 0;
    FUN_00abd140(this,(int *)&local_20);
    FUN_00abd320(this,(int *)&local_30);
    FUN_00abd230(this,(int *)&local_40);
  }
                    /* The LDES writer serializes UInt16 0x45, the maximum accepted by
                       reader00AC5A40. Imported original world records can have older versions
                       without changing the writer's output version. */
  bVar5 = Stream_WriteUInt16(*(void **)((int)resourceWriter + 8),0x45,
                             *(uint *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = FUN_004de0c0(*(int **)((int)resourceWriter + 8),
                       CONCAT26((short)((uint)uVar7 >> 0x10),CONCAT24((short)uVar7,uVar8)),
                       *(int *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = FUN_004de0c0(*(int **)((int)resourceWriter + 8),
                       CONCAT26((short)((uint)param_3 >> 0x10),CONCAT24((short)param_3,param_2)),
                       *(int *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = FUN_004de0c0(*(int **)((int)resourceWriter + 8),
                       CONCAT26((short)((uint)local_44 >> 0x10),CONCAT24((short)local_44,local_48)),
                       *(int *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  StreamContext_WriteUtf16String(resourceWriter,(undefined4 *)((int)this + 0x50));
  bVar5 = FUN_004de190(*(int **)((int)resourceWriter + 8),param_5,param_6,
                       *(int *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  FUN_007d7b90(resourceWriter,(uint *)((int)this + 400));
  bVar5 = FUN_004de390(*(int **)((int)resourceWriter + 8),*(undefined4 *)((int)this + 0x1a0),
                       *(uint *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = Stream_WriteUInt32(*(void **)((int)resourceWriter + 8),*(uint *)((int)this + 0x174),
                             *(uint *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = Stream_WriteUInt32(*(void **)((int)resourceWriter + 8),*(uint *)((int)this + 0x178),
                             *(uint *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = FUN_004de060(*(int **)((int)resourceWriter + 8),*(uint *)((int)this + 0x17c),
                       *(int *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = FUN_004de060(*(int **)((int)resourceWriter + 8),*(uint *)((int)this + 0x180),
                       *(int *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
                    /* Write cached local floor-height extrema +188/+18C as float32, at the same
                       modern-header positions consumed by reader00AC5A40. */
  bVar5 = FUN_004de390(*(int **)((int)resourceWriter + 8),*(undefined4 *)((int)this + 0x188),
                       *(uint *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = FUN_004de390(*(int **)((int)resourceWriter + 8),*(undefined4 *)((int)this + 0x18c),
                       *(uint *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = FUN_004de060(*(int **)((int)resourceWriter + 8),*(uint *)((int)this + 0x39c),
                       *(int *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = Stream_WriteUInt32(*(void **)((int)resourceWriter + 8),*(uint *)((int)this + 0x130),
                             *(uint *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  StreamContext_WriteUtf16String(resourceWriter,&local_20);
  StreamContext_WriteUtf16String(resourceWriter,&local_30);
  StreamContext_WriteUtf16String(resourceWriter,&local_40);
                    /* Tail write order: type+408 Int32, shared subtype+40C UInt32, +418 float32
                       bits, +420 float32. Subsequent valuation word precedes +41C bool, then +310
                       footprint hash UInt64. Field roles are inferred from native consumers; byte
                       order/widths are instruction checked. */
  bVar5 = FUN_004de060(*(int **)((int)resourceWriter + 8),*(uint *)((int)this + 0x408),
                       *(int *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = Stream_WriteUInt32(*(void **)((int)resourceWriter + 8),*(uint *)((int)this + 0x40c),
                             *(uint *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = FUN_004de390(*(int **)((int)resourceWriter + 8),*(undefined4 *)((int)this + 0x418),
                       *(uint *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = FUN_004de390(*(int **)((int)resourceWriter + 8),*(undefined4 *)((int)this + 0x420),
                       *(uint *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  uVar9 = 0;
  if (param_4 != '\0') {
    uVar9 = FUN_00acae80(this,extraout_EDX);
    if ((*(int *)((int)this + 0x2e8) == 0) &&
       ((iVar6 = *(int *)((int)this + 0x298), iVar6 == 0 ||
        (*(int *)(iVar6 + 0x120) == *(int *)(iVar6 + 0x124))))) {
      iVar6 = Lot_ComputeEmptyLandWorth((int)this);
      uVar9 = uVar9 - (iVar6 + (int)*(float *)((int)this + 0x420));
      if ((int)uVar9 < 0) {
        uVar9 = 0;
      }
    }
  }
  bVar5 = FUN_004de060(*(int **)((int)resourceWriter + 8),uVar9,*(int *)((int)resourceWriter + 0x10)
                      );
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar5 = Stream_WriteByte(*(undefined **)((int)resourceWriter + 8),
                           *(char *)((int)this + 0x41c) != '\0');
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  *(undefined4 *)((int)this + 0x310) = 0;
  *(undefined4 *)((int)this + 0x314) = 0;
  if (*(void **)((int)this + 0x2e8) != (void *)0x0) {
    uVar11 = Object_ComputeFootprintResourceHash(*(void **)((int)this + 0x2e8));
    *(undefined8 *)((int)this + 0x310) = uVar11;
  }
  bVar5 = FUN_004de0c0(*(int **)((int)resourceWriter + 8),
                       CONCAT26((short)((uint)*(undefined4 *)((int)this + 0x314) >> 0x10),
                                *(undefined6 *)((int)this + 0x310)),
                       *(int *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar3 = Stream_WriteBoolean(*(void **)((int)resourceWriter + 8),*(byte *)((int)this + 0x4b0));
  StreamReader_AccumulateStatus(resourceWriter,bVar3);
  if (*(char *)((int)this + 0x4b0) == '\0') {
    uVar9 = *(uint *)((int)resourceWriter + 0x10);
    piVar12 = *(int **)((int)resourceWriter + 8);
    fVar1 = -3.4028235e+38;
  }
  else {
    fVar10 = Lot_GetLocalSeaLevel(this);
    uVar9 = *(uint *)((int)resourceWriter + 0x10);
    piVar12 = *(int **)((int)resourceWriter + 8);
    fVar1 = (float)fVar10;
  }
  bVar5 = FUN_004de390(piVar12,fVar1,uVar9);
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar3 = Stream_WriteBoolean(*(void **)((int)resourceWriter + 8),*(byte *)((int)this + 0x4bc));
  StreamReader_AccumulateStatus(resourceWriter,bVar3);
  uVar9 = *(uint *)((int)this + 0xbc);
  if ((param_4 == '\0') && (*(char *)((int)this + 0xba) != '\0')) {
    uVar9 = 1;
  }
  bVar5 = Stream_WriteUInt32(*(void **)((int)resourceWriter + 8),uVar9,
                             *(uint *)((int)resourceWriter + 0x10));
  StreamReader_AccumulateStatus(resourceWriter,bVar5);
  bVar3 = Stream_WriteBoolean(*(void **)((int)resourceWriter + 8),*(byte *)((int)this + 0x4bd));
  StreamReader_AccumulateStatus(resourceWriter,bVar3);
  ResourceStreamContext_Close(resourceWriter);
  uVar2 = *(undefined1 *)((int)resourceWriter + 0x14);
  if ((2 < (int)(local_38 - (int)local_40 & 0xfffffffeU)) && (local_40 != (void *)0x0)) {
    Memory_FreeIfNonNull(local_40);
  }
  if ((2 < (int)(local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (void *)0x0)) {
    Memory_FreeIfNonNull(local_30);
  }
  if ((2 < (int)(local_18 - (int)local_20 & 0xfffffffeU)) && (local_20 != (void *)0x0)) {
    Memory_FreeIfNonNull(local_20);
  }
  return uVar2;
}

