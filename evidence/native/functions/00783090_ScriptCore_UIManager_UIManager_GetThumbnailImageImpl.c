/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162e08 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetThumbnailImageImpl [assembly=ScriptCore token=0x06000DFC; key:
   Sims3.SimIFace.ResourceKey, templateObjectId: System.UInt64, index: System.Int32, ageGender:
   System.UInt32, size: Sims3.SimIFace.ThumbnailSize, liveUpdate: System.Boolean, camera:
   Sims3.SimIFace.ThumbnailCamera, technique: Sims3.SimIFace.ThumbnailTechnique, geoState:
   System.UInt32, matState: System.UInt32, placeholder: System.UInt32, doNotCache: System.Boolean,
   additionalSizesToCache: Sims3.SimIFace.ThumbnailSizeMask; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Independent catalog29 physical ABI review, original PC1.67: exact function body783090..783280
   inclusive,497 pristine bytes/184 Listing instructions. Both physical exits7831C4 and783280 are
   plainRET; incoming17 DWORDs are caller-clean. The17 named parameters describe physical storage,
   not17 original managed formals. Pristine ScriptCore token06000DFC has13 formals: ResourceKey
   occupies4 managed DWORDs (TypeId,GroupId,InstanceLow,InstanceHigh), UInt64 template ID2,
   remaining11 single DWORDs. EBP-relative input offsets08/0C/10/14 key,18/1C template,20 index,24
   ageGender,28 size,2C liveUpdate,30 camera,34 technique,38 geometry,3C material,40 placeholder,44
   doNotCache,48 additionalSizesMask. Key address at EBP8 is passed to existing76C0E0; 779200
   consumes15 descriptor-input DWORDs/RET3C. D4C440 receives template low/high and descriptor and
   returns onlyAL (physical TEST AL at783184). Registered frontend result is UInt32 EAX:0 on no
   manager/publication failure, otherwise host-vtable+C8 result retained inESI then returned inEAX.
   Vtable+CC placeholder conversion and release targets remain indirect. Ghidra may still display
   unaff_EBX/local aliases after indirect host calls; those expressions do not override physical MOV
   ESI,EAX at783239 and MOV EAX,ESI at783279 or the zeroed output lane at783220. Existing registered
   namespace/name and prior annotation preserved; no foreign helper/type/original-byte mutation.
   Native cache invalidation/scheduling and generated internal-call marshaller remain outside this
   function evidence.
   
   Managed-key producer closure: pristine SimIFace TypeDef02000204 is sequential, with instance
   fields TypeId,GroupId,InstanceId. The actual 76C0E0 helper reads input words at+8,+C,+0,+4 into
   native output+0,+4,+8,+C and retains output pointer inEAX throughRET4. Thus incoming
   EBP08/0C/10/14 are managedType/Group/InstanceLow/InstanceHigh, then the native descriptor key is
   instanceLow/high/type/group. Its ten complete instructions,29bytes, were read without modifying
   the helper. Parameter names here describe this verified managed input order; no marshaller
   implementation/foreign-helper signature is inferred. */

uint __cdecl
ScriptCore.UIManager::UIManager_GetThumbnailImageImpl
          (uint managedKeyType,uint managedKeyGroup,uint managedKeyInstanceLow,
          uint managedKeyInstanceHigh,uint templateIdLow,uint templateIdHigh,int indexWord,
          uint ageGenderWord,int sizeWord,uint liveUpdateWord,uint cameraWord,uint techniqueWord,
          uint geometryWord,uint materialWord,uint placeholderHandle,uint doNotCacheWord,
          uint additionalSizesMask)

{
  int iVar1;
  bool bVar2;
  int *piVar3;
  undefined4 *puVar4;
  int *piVar5;
  int *unaff_EBX;
  void *this;
  uint uVar6;
  int local_150;
  uint local_14c;
  int *local_148;
  void *local_144;
  undefined4 local_140 [2];
  void *pvStack_138;
  void *local_130 [2];
  void *pvStack_128;
  void *local_120;
  void *pvStack_a8;
  void *local_a0;
  void *pvStack_98;
  void *local_90;
  
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = DAT_011eec30;
  local_144 = DAT_011eec30;
  if (DAT_011eec30 != (void *)0x0) {
    local_148 = piVar3;
    puVar4 = UIResourceKey_CopyManagedToNative(&managedKeyType,local_140);
    UIThumbnail_InitializeRequestDescriptor
              (local_130,*puVar4,puVar4[1],puVar4[2],puVar4[3],templateIdLow,templateIdHigh,
               indexWord,sizeWord,ageGenderWord,(char)liveUpdateWord,cameraWord,(char)techniqueWord,
               geometryWord,materialWord,(char)doNotCacheWord);
    uVar6 = 0;
    local_14c = 1;
    do {
      if ((local_14c & additionalSizesMask) != 0) {
        FUN_005e6cb0(local_130,uVar6,0,0,0,0,0);
        this = local_144;
        piVar3 = local_148;
      }
      uVar6 = uVar6 + 1;
      local_14c = local_14c * 2;
    } while (uVar6 < 4);
    if ((templateIdLow == 0 && templateIdHigh == 0) ||
       (bVar2 = UIThumbnail_PublishObjectRequestKeys(templateIdLow,templateIdHigh,local_130), bVar2)
       ) {
      piVar5 = (int *)0x0;
      if (placeholderHandle != 0) {
        piVar5 = (int *)(**(code **)(*piVar3 + 0xcc))(placeholderHandle);
      }
      local_150 = 0;
      UIThumbnail_AllocateImageAndPublishCommand(this,(int *)local_130,&local_150,piVar5);
      iVar1 = local_150;
      if (local_150 != 0) {
        local_150 = 0;
        uVar6 = (**(code **)(*piVar3 + 200))(iVar1,0x30);
        if (unaff_EBX != (int *)0x0) {
          (**(code **)(*unaff_EBX + 4))();
        }
        if ((pvStack_a8 != (void *)0x0) && (pvStack_a8 != pvStack_98)) {
          Memory_FreeIfNonNull(pvStack_a8);
        }
        if ((pvStack_138 != (void *)0x0) && (pvStack_138 != pvStack_128)) {
          Memory_FreeIfNonNull(pvStack_138);
        }
        return uVar6;
      }
      if ((local_a0 != (void *)0x0) && (local_a0 != local_90)) {
        Memory_FreeIfNonNull(local_a0);
      }
    }
    else if ((local_a0 != (void *)0x0) && (local_a0 != local_90)) {
      Memory_FreeIfNonNull(local_a0);
    }
    if ((local_130[0] != (void *)0x0) && (local_130[0] != local_120)) {
      Memory_FreeIfNonNull(local_130[0]);
    }
  }
  return 0;
}

