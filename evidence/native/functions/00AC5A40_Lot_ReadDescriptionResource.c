/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst-assigned name, original PC 1.67 TS3W.exe. Reads exact LDES type D063545B, group 0, with
   supplied owner identity. UInt16 format versions 0x14 through 0x45 inclusive are accepted. Name is
   length-prefixed UTF-16; versions >=0x1F contain three leading localization UInt64s, and >=0x20
   contain the UInt64 identity after the name. Mapped modern header after name uses 56 fixed bytes
   before three strings. Floor extrema +188/+18C and tail type +408, shared subtype +40C, value +420
   and bool +41C are annotated below. Later versions append fields; native parsing is version gated
   rather than an enumerated release whitelist. Structure roles and stream/helper ABI are analyst
   inference.
   
   Analyst note (PC1.67 construction persistence contract): LDES D063545B/group0 original reader.
   UInt16version,localization/name/identity/pose/dimensions precede signed floor levels at+17C/+180.
   Complete selected original reader retained; current description-level patch operates on supported
   prefix and preserves unrelated bytes, unlike a complete native reconstruction.
   
   Analyst note (PC1.67 construction persistence contract): Read older layouts into live state
   before current writer. Modern20hex+ prefix has localization triples,
   internalname,storedidentity,pose/dimensions/levels/extrema/twowords/threetexts. Subtype
   from23hex, BuildBuy from22hex (defaulttrue),footprint hash from2Bhex. Boundary from3Ahex,sea
   from3Chex; before3E residential subtype>4 normalizes0 and restrictedtrue; from3E reads flag and
   does NOT repeat old migration. FlagsBC from3Fhex,disable from43hex. Sticky stream reads remain
   actual failure boundary.
   
   Analyst note (PC1.67 construction persistence contract): The UInt64 field atlot+310/+314
   fromversion2Bhex is the attached-object footprint resource hash. Initializezero forolder
   versions; writerACA430recomputes it viaB03360/946890. It must not be replaced with
   managedHousehold.HouseholdId or ScriptObject.ObjectId. All prior version/width/restricted-ground
   annotations retain their instruction-verified meaning. */

undefined1 __thiscall
Lot_ReadDescriptionResource
          (void *this,void *resourceReader,undefined4 param_2,undefined4 param_3,char param_4)

{
  ushort *outUInt16;
  uint *valueOut;
  ushort uVar1;
  bool bVar2;
  int iVar3;
  ulonglong uVar4;
  uchar buildBuyFlag;
  uint rawLotType;
  uint local_4c;
  uint local_48;
  uint local_44;
  uint local_40;
  int *local_3c;
  uint local_38 [2];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  uint local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  local_2c = param_3;
  local_30 = param_2;
  local_28 = 0xd063545b;
  local_24 = 0;
  bVar2 = ResourceStreamContext_OpenWrite(resourceReader,&local_30,0);
  if (bVar2) {
    outUInt16 = (ushort *)((int)this + 0x78);
    bVar2 = Stream_ReadUInt16(*(void **)((int)resourceReader + 8),outUInt16,
                              *(uint *)((int)resourceReader + 0x10));
    StreamReader_AccumulateStatus(resourceReader,bVar2);
    uVar1 = *outUInt16;
                    /* Unsigned version acceptance: reject below 0x14 at 00AC5AA8; reject above 0x45
                       at 00AC5AB2. This includes shipped 0x23/0x26 and current-writer 0x45, beyond
                       the currently admitted OpenTS3 header subset. */
    if ((0x13 < uVar1) && (uVar1 < 0x46)) {
      if (0x1d < uVar1) {
        if (0x1e < uVar1) {
          FUN_005fe990(resourceReader,(uint *)((int)this + 0x3d0));
          FUN_005fe990(resourceReader,(uint *)((int)this + 1000));
        }
        FUN_005fe990(resourceReader,(uint *)((int)this + 0x400));
      }
      StreamContext_ReadUtf16String(resourceReader,(undefined4 *)((int)this + 0x50));
      if (0x1f < *outUInt16) {
        FUN_005fe990(resourceReader,local_38);
      }
      FUN_007d7b60(resourceReader,&local_20);
      bVar2 = Stream_ReadUInt32(*(void **)((int)resourceReader + 8),&local_4c,
                                *(uint *)((int)resourceReader + 0x10));
      StreamReader_AccumulateStatus(resourceReader,bVar2);
      if (param_4 == '\0') {
        *(uint *)((int)this + 400) = local_20;
        *(undefined4 *)((int)this + 0x194) = uStack_1c;
        *(undefined4 *)((int)this + 0x198) = uStack_18;
        *(undefined4 *)((int)this + 0x19c) = uStack_14;
        *(uint *)((int)this + 0x1a0) = local_4c;
      }
      if (_DAT_01065d58 < *(float *)((int)this + 0x1a0)) {
        iVar3 = FUN_004067a0(*(float *)((int)this + 0x1a0) * _DAT_010660ec);
        *(float *)((int)this + 0x1a0) = *(float *)((int)this + 0x1a0) - (float)iVar3 * _DAT_01065d58
        ;
      }
      bVar2 = Stream_ReadUInt32(*(void **)((int)resourceReader + 8),(uint *)&local_3c,
                                *(uint *)((int)resourceReader + 0x10));
      StreamReader_AccumulateStatus(resourceReader,bVar2);
      bVar2 = Stream_ReadUInt32(*(void **)((int)resourceReader + 8),&local_40,
                                *(uint *)((int)resourceReader + 0x10));
      StreamReader_AccumulateStatus(resourceReader,bVar2);
      bVar2 = Stream_ReadUInt32(*(void **)((int)resourceReader + 8),&local_44,
                                *(uint *)((int)resourceReader + 0x10));
      StreamReader_AccumulateStatus(resourceReader,bVar2);
      bVar2 = Stream_ReadUInt32(*(void **)((int)resourceReader + 8),&local_48,
                                *(uint *)((int)resourceReader + 0x10));
      StreamReader_AccumulateStatus(resourceReader,bVar2);
                    /* Read the first cached local floor-height extremum into lot +188; second goes
                       to +18C at 00AC5C35. In modern layouts these two floats are 40 bytes after
                       the end of the length-prefixed name. Two further UInt32 words complete the 56
                       fixed bytes before the localized strings. */
      bVar2 = Stream_ReadUInt32(*(void **)((int)resourceReader + 8),(uint *)((int)this + 0x188),
                                *(uint *)((int)resourceReader + 0x10));
      StreamReader_AccumulateStatus(resourceReader,bVar2);
      bVar2 = Stream_ReadUInt32(*(void **)((int)resourceReader + 8),(uint *)((int)this + 0x18c),
                                *(uint *)((int)resourceReader + 0x10));
      StreamReader_AccumulateStatus(resourceReader,bVar2);
      bVar2 = Stream_ReadUInt32(*(void **)((int)resourceReader + 8),(uint *)((int)this + 0x39c),
                                *(uint *)((int)resourceReader + 0x10));
      StreamReader_AccumulateStatus(resourceReader,bVar2);
      *(uint *)((int)this + 0x3a0) = *(uint *)((int)this + 0x39c);
      bVar2 = Stream_ReadUInt32(*(void **)((int)resourceReader + 8),(uint *)((int)this + 0x130),
                                *(uint *)((int)resourceReader + 0x10));
      StreamReader_AccumulateStatus(resourceReader,bVar2);
      FUN_00ac4e00(this,local_3c,local_40,local_44,local_48);
      if (*(undefined2 **)((int)this + 0x3c0) != *(undefined2 **)((int)this + 0x3c4)) {
        **(undefined2 **)((int)this + 0x3c0) = 0;
        *(undefined4 *)((int)this + 0x3c4) = *(undefined4 *)((int)this + 0x3c0);
      }
      if (*(undefined2 **)((int)this + 0x3f0) != *(undefined2 **)((int)this + 0x3f4)) {
        **(undefined2 **)((int)this + 0x3f0) = 0;
        *(undefined4 *)((int)this + 0x3f4) = *(undefined4 *)((int)this + 0x3f0);
      }
      if (*(undefined2 **)((int)this + 0x3d8) != *(undefined2 **)((int)this + 0x3dc)) {
        **(undefined2 **)((int)this + 0x3d8) = 0;
        *(undefined4 *)((int)this + 0x3dc) = *(undefined4 *)((int)this + 0x3d8);
      }
      if (0x1e < *(ushort *)((int)this + 0x78)) {
        StreamContext_ReadUtf16String(resourceReader,(undefined4 *)((int)this + 0x3c0));
        StreamContext_ReadUtf16String(resourceReader,(undefined4 *)((int)this + 0x3d8));
      }
      StreamContext_ReadUtf16String(resourceReader,(undefined4 *)((int)this + 0x3f0));
      if (*(ushort *)((int)this + 0x78) < 0x1e) {
        uVar4 = NameHash64_Utf16Z(*(ushort **)((int)this + 0x3f0));
        *(ulonglong *)((int)this + 0x400) = uVar4;
      }
      rawLotType = 0;
      bVar2 = Stream_ReadUInt32(*(void **)((int)resourceReader + 8),&rawLotType,
                                *(uint *)((int)resourceReader + 0x10));
      StreamReader_AccumulateStatus(resourceReader,bVar2);
                    /* Tail begins with Int32 lot type (+408); subtype (+40C) defaults 0 and is read
                       for version >=0x23. Then +418 is present at >=0x1D, float +420 at >=0x1A, and
                       a discarded UInt32 at >=0x1B. For mapped >=0x20 versions all but subtype are
                       present. */
      valueOut = (uint *)((int)this + 0x40c);
      *(uint *)((int)this + 0x408) = rawLotType;
      *valueOut = 0;
      if (0x22 < *(ushort *)((int)this + 0x78)) {
        StreamReader_ReadUInt32Into(resourceReader,valueOut);
      }
      *(uint *)((int)this + 0x418) = 0;
      if (0x1c < *(ushort *)((int)this + 0x78)) {
        StreamReader_ReadUInt32Into(resourceReader,(uint *)((int)this + 0x418));
      }
      *(uint *)((int)this + 0x420) = 0;
      if (0x19 < *(ushort *)((int)this + 0x78)) {
        StreamReader_ReadUInt32Into(resourceReader,(uint *)((int)this + 0x420));
      }
      if (0x1a < *(ushort *)((int)this + 0x78)) {
        local_38[0] = 0;
        StreamReader_ReadUInt32Into(resourceReader,local_38);
      }
                    /* Build/Buy enabled (+41C) defaults true; one byte is read for version >=0x22
                       and normalized by !=0. Footprint hash UInt64 (+310) follows at version
                       >=0x2B. Minimum mapped tail prefix widths: 0x20=16, 0x27=21,
                       0x2B/0x2C/0x2D/0x39=29 bytes. */
      *(undefined1 *)((int)this + 0x41c) = 1;
      if (0x21 < *(ushort *)((int)this + 0x78)) {
        buildBuyFlag = '\x01';
        StreamReader_ReadByteInto(resourceReader,&buildBuyFlag);
        *(bool *)((int)this + 0x41c) = buildBuyFlag != '\0';
      }
      *(uint *)((int)this + 0x310) = 0;
      *(undefined4 *)((int)this + 0x314) = 0;
      if (0x2a < *(ushort *)((int)this + 0x78)) {
        FUN_005fe990(resourceReader,(uint *)((int)this + 0x310));
      }
      if (0x39 < *(ushort *)((int)this + 0x78)) {
        FUN_00565b10(resourceReader);
      }
      if (*(ushort *)((int)this + 0x78) < 0x3c) {
        *(undefined4 *)((int)this + 0x4b4) = DAT_00fccba4;
      }
      else {
        StreamReader_ReadUInt32Into(resourceReader,(uint *)((int)this + 0x4b4));
      }
      if (*(ushort *)((int)this + 0x78) < 0x3e) {
                    /* Before version 0x3E, residential type 0 with unsigned subtype >4 sets
                       restricted-ground +4BC=true and normalizes subtype to0. Versions >=0x3E read
                       the stored flag instead. Do not apply the obsolete-subtype migration to those
                       later formats. */
        if ((*(int *)((int)this + 0x408) == 0) && (4 < *valueOut)) {
          *(undefined1 *)((int)this + 0x4bc) = 1;
          *valueOut = 0;
        }
      }
      else {
        FUN_00565b10(resourceReader);
      }
      *(uint *)((int)this + 0xbc) = 0;
      if (0x3e < *(ushort *)((int)this + 0x78)) {
        StreamReader_ReadUInt32Into(resourceReader,(uint *)((int)this + 0xbc));
      }
      if (0x42 < *(ushort *)((int)this + 0x78)) {
        FUN_00565b10(resourceReader);
      }
      ResourceStreamContext_Close(resourceReader);
      return *(undefined1 *)((int)resourceReader + 0x14);
    }
  }
  return 0;
}

