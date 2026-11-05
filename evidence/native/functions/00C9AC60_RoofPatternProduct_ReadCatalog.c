/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 roof-pattern product prefix and physical contract): Factory typeF1EDBD86
   constructsC9ABE0, installing107D300 whose+18 slot resolves this exact544-byte body. Physical ECX
   product plus one opaque reader pointer stack word, RET4; AL is local reader status on success or0
   on explicit failure. Reads UInt32 outer version. Unsigned version>=3 reads relative reference-key
   table via99D570 before Common C93100; lower versions have NO reference header. The
   pointer-looking reused version slot in C is an inference artifact, not pointer semantics. Then
   three complete keys: inline TGI16 below3, dense UInt32 ordinals from3 with immediateAL-false
   cleanup. All three keys must resolve typed resource01D0E75D via93B730 into product+88/+98/+A8;
   any failure rejects. Temporary key table/context are released. Current structural prefix/Common
   projection deliberately stops before these ordinal/typed-resource admissions and does not certify
   full product load. Preserve inferred prototype/body/bytes. */

undefined1 __thiscall RoofPatternProduct_ReadCatalog(void *this,int *param_1)

{
  int *reader;
  bool bVar1;
  char cVar2;
  uint uVar3;
  char *local_5c;
  void *local_58 [4];
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  char local_18 [8];
  void *local_10;
  uint local_8;
  undefined1 local_4;
  
  reader = param_1;
  StreamReader_Construct(local_18,param_1,1);
  bVar1 = Stream_ReadUInt32(local_10,(uint *)&param_1,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  local_5c = "World/Catalog/RoofPattern/KeyTable";
  FUN_007d9500(local_58,&local_5c);
  if ((param_1 < (int *)0x3) ||
     (cVar2 = ReferenceTable_ReadResourceKeys(local_18,local_58), cVar2 != '\0')) {
    CatalogProduct_ReadCommonFields(this,reader);
    local_48 = 0;
    local_44 = 0;
    local_40 = 0;
    local_3c = 0;
    local_38 = 0;
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    local_28 = 0;
    local_24 = 0;
    local_20 = 0;
    local_1c = 0;
    if (param_1 < (int *)0x3) {
      bVar1 = Stream_ReadResourceKeyTGI(local_10,&local_48,local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
      bVar1 = Stream_ReadResourceKeyTGI(local_10,&local_38,local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
      bVar1 = Stream_ReadResourceKeyTGI(local_10,&local_28,local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
    }
    else {
      uVar3 = ReferenceTable_ReadKeyByOrdinal(local_18,(int *)local_58,&local_48);
      if ((((char)uVar3 == '\0') ||
          (uVar3 = ReferenceTable_ReadKeyByOrdinal(local_18,(int *)local_58,&local_38),
          (char)uVar3 == '\0')) ||
         (uVar3 = ReferenceTable_ReadKeyByOrdinal(local_18,(int *)local_58,&local_28),
         (char)uVar3 == '\0')) goto LAB_00c9acd6;
    }
    bVar1 = VisualProxy_ResolveTypedResource(&local_48,0x1d0e75d,(void *)((int)this + 0x88));
    if (((bVar1) &&
        (bVar1 = VisualProxy_ResolveTypedResource(&local_38,0x1d0e75d,(void *)((int)this + 0x98)),
        bVar1)) &&
       (bVar1 = VisualProxy_ResolveTypedResource(&local_28,0x1d0e75d,(void *)((int)this + 0xa8)),
       bVar1)) {
      if (local_58[0] != (void *)0x0) {
        Memory_FreeIfNonNull(local_58[0]);
      }
      StreamReader_ReleaseAuxiliary(local_18);
      return local_4;
    }
  }
LAB_00c9acd6:
  if (local_58[0] != (void *)0x0) {
    Memory_FreeIfNonNull(local_58[0]);
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return 0;
}

