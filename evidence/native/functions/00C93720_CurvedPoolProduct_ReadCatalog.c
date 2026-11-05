/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical thiscall ECX product plus
   reader pointer/RET4, AL local accumulated status; early table/ordinal failure returnsAL0.
   UInt32outerversion>=1 reads reference table before shared Common C93100; its return not
   directlytested. Reads UInt32 into88,5ordinalkeys90/A0/B0/C0/D0 thenUInt32E0/E4; fullzero keys
   valid, invalidordinal immediatefailure. Table/reader auxiliary released all exits. Current
   handwritten flat skip/inlinekey projection is NOT this original wire contract; no format repair
   implied. Native unsafe/ALstatus is distinct from CLR bounds/exceptions. */

bool __thiscall CurvedPoolProduct_ReadCatalog(void *this,void *reader)

{
  void *reader_00;
  bool bVar1;
  char cVar2;
  uint uVar3;
  uint local_30;
  uint local_2c;
  void *local_28 [4];
  char local_18 [8];
  void *local_10;
  uint local_8;
  undefined1 local_4;
  
  reader_00 = reader;
  StreamReader_Construct(local_18,reader,1);
  reader = s_World_Catalog_KeyTable_0107cadc;
  FUN_007d9500(local_28,&reader);
  bVar1 = Stream_ReadUInt32(local_10,&local_30,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
                    /* Unsigned outer version>=1 requires reference table; zero skips header but
                       ordinal keys still require valid tableentries. */
  if (local_30 != 0) {
    cVar2 = ReferenceTable_ReadResourceKeys(local_18,local_28);
    if (cVar2 == '\0') goto LAB_00c9378b;
  }
  CatalogProduct_ReadCommonFields(this,reader_00);
  bVar1 = Stream_ReadUInt32(local_10,&local_2c,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  *(uint *)((int)this + 0x88) = local_2c;
                    /* First of five table ordinals; complete16-byte keys including zero preserved
                       by shared helper. */
  uVar3 = ReferenceTable_ReadKeyByOrdinal(local_18,(int *)local_28,(undefined4 *)((int)this + 0x90))
  ;
  if ((char)uVar3 != '\0') {
    uVar3 = ReferenceTable_ReadKeyByOrdinal
                      (local_18,(int *)local_28,(undefined4 *)((int)this + 0xa0));
    if ((char)uVar3 != '\0') {
      uVar3 = ReferenceTable_ReadKeyByOrdinal
                        (local_18,(int *)local_28,(undefined4 *)((int)this + 0xb0));
      if ((char)uVar3 != '\0') {
        uVar3 = ReferenceTable_ReadKeyByOrdinal
                          (local_18,(int *)local_28,(undefined4 *)((int)this + 0xc0));
        if ((char)uVar3 != '\0') {
          uVar3 = ReferenceTable_ReadKeyByOrdinal
                            (local_18,(int *)local_28,(undefined4 *)((int)this + 0xd0));
          if ((char)uVar3 != '\0') {
            StreamReader_ReadUInt32Into(local_18,(uint *)((int)this + 0xe0));
            StreamReader_ReadUInt32Into(local_18,(uint *)((int)this + 0xe4));
            if (local_28[0] != (void *)0x0) {
              Memory_FreeIfNonNull(local_28[0]);
            }
            StreamReader_ReleaseAuxiliary(local_18);
            return (bool)local_4;
          }
        }
      }
    }
  }
LAB_00c9378b:
  if (local_28[0] != (void *)0x0) {
    Memory_FreeIfNonNull(local_28[0]);
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return false;
}

