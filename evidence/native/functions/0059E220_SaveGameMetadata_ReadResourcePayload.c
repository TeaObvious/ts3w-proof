/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Factory callback: resource context and
   metadata object are distinct stack arguments. Read UInt32 version, UTF16 world/name/bio strings,
   UInt64 household and lot IDs. Unsigned version<2 initializes first three version strings
   OldVersionUnknown and game1.0.0.0; otherwise reads four strings. Unsigned version>=3 reads
   homeworld directly. There is no ErrorFlags DWORD between game version and homeworld. Sticky
   stream status controls early cleanup; no-stream case succeeds. */

bool SaveGameMetadata_ReadResourcePayload
               (void *resourceContext,void *metadata,uint unused3,uint unused4)

{
  void *pvVar1;
  void *this;
  bool readSucceeded;
  undefined4 *puVar2;
  void *stream;
  uint uStack_30;
  undefined4 uStack_2c;
  short *psStack_28;
  undefined1 *puStack_24;
  undefined2 *puStack_20;
  char *pcStack_1c;
  undefined1 auStack_18 [8];
  void *pvStack_10;
  uint uStack_8;
  char cStack_4;
  
  pvVar1 = resourceContext;
  puVar2 = (undefined4 *)(**(code **)(*(int *)resourceContext + 0x10))();
  this = metadata;
  *(undefined4 *)((int)metadata + 8) = *puVar2;
  *(undefined4 *)((int)metadata + 0xc) = puVar2[1];
  *(undefined4 *)((int)metadata + 0x10) = puVar2[2];
  *(undefined4 *)((int)metadata + 0x14) = puVar2[3];
  stream = (void *)(**(code **)(*(int *)pvVar1 + 0x18))();
  if (stream == (void *)0x0) {
LAB_0059e519:
    (**(code **)(*(int *)pvVar1 + 0x20))();
    return true;
  }
  StreamReader_Construct(auStack_18,stream,1);
  readSucceeded = Stream_ReadUInt32(pvStack_10,(uint *)&resourceContext,uStack_8);
  StreamReader_AccumulateStatus(auStack_18,readSucceeded);
  if (cStack_4 == '\0') {
    (**(code **)(*(int *)pvVar1 + 0x20))();
    StreamReader_ReleaseAuxiliary(auStack_18);
    return false;
  }
  *(void **)((int)this + 0x28) = resourceContext;
  pcStack_1c = "UI/SaveGameMetadata/Text";
  psStack_28 = (short *)&DAT_011c8e54;
  puStack_24 = &DAT_011c8e54;
  puStack_20 = &DAT_011c8e56;
  StreamContext_ReadUtf16String(auStack_18,&psStack_28);
  if (cStack_4 != '\0') {
    FUN_0059e0a0(this,psStack_28);
    StreamContext_ReadUtf16String(auStack_18,&psStack_28);
    if (cStack_4 != '\0') {
      SaveGameMetadata_SetHouseholdName(this,psStack_28);
      StreamContext_ReadUtf16String(auStack_18,&psStack_28);
      if (cStack_4 == '\0') goto LAB_0059e364;
      SaveGameMetadata_SetHouseholdBiography(this,psStack_28);
      FUN_005fe990(auStack_18,&uStack_30);
      if (cStack_4 != '\0') {
        *(undefined4 *)((int)this + 0x34) = uStack_2c;
        *(uint *)((int)this + 0x30) = uStack_30;
        FUN_005fe990(auStack_18,&uStack_30);
        if (cStack_4 != '\0') {
          *(uint *)((int)this + 0x38) = uStack_30;
          *(undefined4 *)((int)this + 0x3c) = uStack_2c;
          if (resourceContext < (void *)0x2) {
            FUN_0059e160(this,L"OldVersionUnknown");
            FUN_0059e190(this,L"OldVersionUnknown");
            FUN_0059e1c0(this,L"OldVersionUnknown");
            FUN_0059e1f0(this,L"1.0.0.0");
          }
          else {
            StreamContext_ReadUtf16String(auStack_18,&psStack_28);
            if (cStack_4 == '\0') goto LAB_0059e3aa;
            FUN_0059e160(this,psStack_28);
            StreamContext_ReadUtf16String(auStack_18,&psStack_28);
            if (cStack_4 == '\0') {
LAB_0059e364:
              (**(code **)(*(int *)pvVar1 + 0x20))();
              FUN_004ef8f0((int *)&psStack_28);
              StreamReader_ReleaseAuxiliary(auStack_18);
              return false;
            }
            FUN_0059e190(this,psStack_28);
            StreamContext_ReadUtf16String(auStack_18,&psStack_28);
            if (cStack_4 == '\0') goto LAB_0059e3aa;
            FUN_0059e1c0(this,psStack_28);
            StreamContext_ReadUtf16String(auStack_18,&psStack_28);
            if (cStack_4 == '\0') goto LAB_0059e364;
            FUN_0059e1f0(this,psStack_28);
            if (resourceContext < (void *)0x3) {
              SaveGameMetadata_SetHomeWorld(this,&DAT_00fba6c4);
            }
            else {
              StreamContext_ReadUtf16String(auStack_18,&psStack_28);
              if (cStack_4 == '\0') goto LAB_0059e3aa;
              SaveGameMetadata_SetHomeWorld(this,psStack_28);
            }
          }
          FUN_004ef8f0((int *)&psStack_28);
          StreamReader_ReleaseAuxiliary(auStack_18);
          goto LAB_0059e519;
        }
      }
LAB_0059e3aa:
      (**(code **)(*(int *)pvVar1 + 0x20))();
      FUN_004ef8f0((int *)&psStack_28);
      StreamReader_ReleaseAuxiliary(auStack_18);
      return false;
    }
  }
  (**(code **)(*(int *)pvVar1 + 0x20))();
  if ((2 < (int)((int)puStack_20 - (int)psStack_28 & 0xfffffffeU)) && (psStack_28 != (short *)0x0))
  {
    Memory_FreeIfNonNull(psStack_28);
  }
  StreamReader_ReleaseAuxiliary(auStack_18);
  return false;
}

