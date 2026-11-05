/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162de8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_LoadUIImageImpl [assembly=ScriptCore token=0x06000DF8; instance:
   System.UInt64, group: System.UInt32, type: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Complete420byte original loader77F630..77F7D3, four
   caller-clean physical DWORDs represent UInt64instance plus UInt32group/type; fullEAX handle/zero.
   Preserve exact resource-type test, selected resource/interface release, embedded type0CC0EC90
   branch and fallback7E8BA0 acquisition. Successful EDI image primary0 retain at77F7A0 precedes
   serviceC8(image,30hex) publication. Temporary intermediate resource/image releases are distinct
   from returned script reference. Current host only publishes a resource-key placeholder; this does
   not certify pixel loading/codec/resource-error equivalence. Foreign factory/helper prototypes are
   not guessed from decompiler artifacts.
   
   Analyst clarification, PC1.67 instructions versus actual decompiler: Decompiler defects remain in
   actual exported C: the successful resource path shows an unaff_ESI release, while physical77F6B0
   reloads the captured resource from ESP+10 and77F6BE calls that object's+4. Fallback7E8BA0 is
   printed with no parameters but77F789/78B physically push literal1 and key address, followed by
   ADDESP8. Allocator77F712 receives six physical DWORDs/ADDESP18 although C prints three. Do not
   infer uninitialized original object use or zero-argument factories from those expressions;
   foreign helper ABIs remain outside this scope. */

uint __cdecl
ScriptCore.UIManager::UIManager_LoadUIImageImpl(ulonglong instance,uint group,uint type)

{
  char cVar1;
  int *piVar2;
  uint uVar3;
  int iVar4;
  undefined4 *puVar5;
  int *unaff_ESI;
  undefined4 *puVar6;
  int *local_24;
  wchar_t *local_20;
  undefined1 *local_1c;
  undefined2 *local_18;
  char *local_14;
  ulonglong local_10;
  uint local_8;
  uint local_4;
  
  piVar2 = (int *)FUN_004afe80();
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  local_8 = type;
  local_4 = group;
  puVar6 = (undefined4 *)0x0;
  local_10 = instance;
  uVar3 = FUN_00d63ac0(type);
  if ((char)uVar3 == '\0') {
    if (type == 0xcc0ec90) {
      local_14 = "Scratch/ThumbnailManager/filePathForThumbnail";
      local_20 = (wchar_t *)&DAT_011c8e54;
      local_1c = &DAT_011c8e54;
      local_18 = &DAT_011c8e56;
      FUN_00c8ef90(DAT_011ee034,(uint *)&local_10,&local_20);
      puVar5 = (undefined4 *)FUN_004e4500(0x58,"UIHost/sLoadUIImage",0);
      if (puVar5 == (undefined4 *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = FUN_00d64170(puVar5);
        if (piVar2 != (int *)0x0) {
          (**(code **)*piVar2)();
        }
      }
      cVar1 = FUN_00d63e00(piVar2,local_20);
      if (cVar1 != '\0') {
        puVar6 = (undefined4 *)FUN_007e8740(piVar2 + 10);
      }
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
      if ((2 < (int)((int)local_18 - (int)local_20 & 0xfffffffeU)) && (local_20 != (wchar_t *)0x0))
      {
        Memory_FreeIfNonNull(local_20);
      }
      goto LAB_0077f781;
    }
  }
  else {
    local_24 = (int *)0x0;
    (**(code **)(*piVar2 + 0xc))(&local_10,&local_24,0,0,0,0);
    if (local_24 != (int *)0x0) {
      iVar4 = (**(code **)(*local_24 + 0xc))(0x57fa5ea);
      puVar6 = (undefined4 *)FUN_007e8740((int *)(iVar4 + 0x28));
      (**(code **)(*unaff_ESI + 4))();
LAB_0077f781:
      if (puVar6 != (undefined4 *)0x0) goto LAB_0077f79a;
    }
  }
  puVar6 = FUN_007e8ba0();
  if (puVar6 == (undefined4 *)0x0) {
    return 0;
  }
LAB_0077f79a:
  (**(code **)*puVar6)();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar3 = (**(code **)(*piVar2 + 200))(puVar6,0x30);
  return uVar3;
}

