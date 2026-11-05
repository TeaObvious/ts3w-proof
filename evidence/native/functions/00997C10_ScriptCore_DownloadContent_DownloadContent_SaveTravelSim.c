/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original PC 1.67 registered ScriptCore.DownloadContent::DownloadContent_SaveTravelSim;
   analyst-reviewed ABI. cdecl three managed array handles, 16-byte managed outfit key, and in/out
   managed key pointer; Boolean result AL. Native key order is instance64/type/group; managed order
   is type/group/instance64. Payload producer00997a10 returns status/host/SimStorage/content fields;
   failure returns AL0. Writer009cb700 receives converted outfit/export keys; only success converts
   and stores all16 output bytes back to the caller. Missing provider/storage and writer failure do
   not update that output key. Original managed MiniSimDescription.PackOutfitToDisk ignores this
   Boolean, so its true return is not native-write acceptance. */

bool __cdecl
ScriptCore.DownloadContent::DownloadContent_SaveTravelSim
          (void *keyTable,void *objectIds,void *scriptData,TravelManagedResourceKey outfitKey,
          TravelManagedResourceKey *exportKey)

{
  void *this;
  void *simContent;
  bool bVar1;
  undefined4 *puVar2;
  uint *puVar3;
  TravelNativeResourceKey local_40;
  TravelNativeResourceKey local_30;
  undefined1 local_20 [16];
  undefined4 local_10;
  undefined4 local_c;
  
  puVar2 = DownloadContent_MarshalSimContentPayload(local_20,keyTable,objectIds,scriptData);
  local_c = puVar2[1];
  this = (void *)puVar2[2];
  simContent = (void *)puVar2[3];
  if ((char)*puVar2 == '\0') {
    return false;
  }
  UIResourceKey_CopyManagedToNative(&outfitKey,(undefined4 *)&local_30);
  UIResourceKey_CopyManagedToNative(exportKey,(undefined4 *)&local_40);
  bVar1 = SimStorage_SaveTravelSim(this,simContent,&local_30,&local_40);
  if (bVar1) {
    puVar3 = (uint *)FUN_0076bfd0(&local_10,(undefined4 *)&local_40);
    exportKey->TypeId = *puVar3;
    exportKey->GroupId = puVar3[1];
    *(uint *)&exportKey->InstanceId = puVar3[2];
    *(uint *)((int)&exportKey->InstanceId + 4) = puVar3[3];
    return true;
  }
  return false;
}

