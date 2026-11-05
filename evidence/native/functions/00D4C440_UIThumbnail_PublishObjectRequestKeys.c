/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical stdcall three stackDWORDs
   objectIDlow/high,descriptorpointer, RET0C; only AL is Boolean success, not wholeEAX. Missing
   globalobjectregistry or object returnsAL0; otherwise component-by-mask selects actual
   object/key/template/agegender producer, fallsback objectkey/zero template when componentabsent.
   Iterates descriptorbegin/end at24-byte strides. Actual D4BBA0cdecl ten pushes: key
   descriptor78,entrysize+10,cameraFC,index100,outentry,zeroextendedtechniquebyte114,geometry10C,material110,template88/8C;
   caller ADDESP28. Agegender108 is not forwarded there. D4BBA0writes key and has no result, so
   former decompiler assignment of its apparent EAX was an artifact. Descriptor/model/registry
   lifetime/queue/drain/rendering outside this bounded producer. Every exit physicalRET0C/AL0or1; no
   script/UIAPI renamed. */

bool UIThumbnail_PublishObjectRequestKeys(uint objectIdLow,uint objectIdHigh,void *descriptor)

{
  undefined4 *sourceKey;
  void *pvVar1;
  void *pvVar2;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 == (void *)0x0) {
    return false;
  }
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(objectIdHigh,objectIdLow));
  if (pvVar1 == (void *)0x0) {
    return false;
  }
  pvVar2 = Object_GetComponentByMask(pvVar1,DAT_011ea0fc);
  sourceKey = (undefined4 *)((int)descriptor + 0x78);
  if (pvVar2 == (void *)0x0) {
    *sourceKey = *(undefined4 *)((int)pvVar1 + 0x18);
    *(undefined4 *)((int)descriptor + 0x7c) = *(undefined4 *)((int)pvVar1 + 0x1c);
    *(undefined4 *)((int)descriptor + 0x80) = *(undefined4 *)((int)pvVar1 + 0x20);
    *(undefined4 *)((int)descriptor + 0x84) = *(undefined4 *)((int)pvVar1 + 0x24);
    *(undefined4 *)((int)descriptor + 0x88) = 0;
    *(undefined4 *)((int)descriptor + 0x8c) = 0;
  }
  else {
    *sourceKey = *(undefined4 *)((int)pvVar2 + 0x10);
    *(undefined4 *)((int)descriptor + 0x7c) = *(undefined4 *)((int)pvVar2 + 0x14);
    *(undefined4 *)((int)descriptor + 0x80) = *(undefined4 *)((int)pvVar2 + 0x18);
    *(undefined4 *)((int)descriptor + 0x84) = *(undefined4 *)((int)pvVar2 + 0x1c);
    *(uint *)((int)descriptor + 0x88) = objectIdLow;
    *(uint *)((int)descriptor + 0x8c) = objectIdHigh;
    if (((*(uint *)((int)pvVar2 + 0x30) & 3) == 0) && (*(int *)((int)pvVar2 + 0x30) != 0)) {
      *(uint *)((int)descriptor + 0x108) = *(uint *)(*(int *)((int)pvVar2 + 0x30) + 0x38) & 0xff7f;
    }
  }
  pvVar2 = *(void **)((int)descriptor + 4);
  for (pvVar1 = *(void **)descriptor; pvVar1 != pvVar2; pvVar1 = (void *)((int)pvVar1 + 0x18)) {
    UIThumbnail_SelectCatalogIconOrDeriveKey
              (sourceKey,*(int *)((int)pvVar1 + 0x10),*(uint *)((int)descriptor + 0xfc),
               *(int *)((int)descriptor + 0x100),pvVar1,(uint)*(byte *)((int)descriptor + 0x114),
               *(uint *)((int)descriptor + 0x10c),*(uint *)((int)descriptor + 0x110),
               *(uint *)((int)descriptor + 0x88),*(uint *)((int)descriptor + 0x8c));
  }
  return true;
}

