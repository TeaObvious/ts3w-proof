/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static. Analyst-assigned role, not a recovered symbol. ECX thumbnail owner
   is preserved in EBX and forwarded to D4B370; two stack inputs cacheKind and mutable wide-string
   output, AL Boolean, RET8. Kind5A2DD454 asks thumbnailAltCache and6283AE8A asks
   CASThumbnailAltCache; nonnull configured pointer is assigned and succeeds without the
   root/directory branch. Otherwise read current root through72F140 provider vtable24, reject
   null/empty, assign root and append Thumbnails, then require4DD040's directory result. Owner
   predicate D4B370 selects ObjectThumbnails.package; otherwise kind6283AE8A selects
   CASThumbnails.package and B7254173 selects DownloadsThumbnails.package, other kinds fail. Config
   thumbnailDefaultCacheName can replace that default;4EE400 appends it and its AL result
   propagates. Early false may leave partially updated output; no rollback or out-string clearing.
   The configuration lookup's inferred LPCWSTR parameter is a decompiler artifact: key literals are
   ASCII, returned/default path names are wide. This path selector establishes neither OpenTS3
   schema2 cache format nor Resource.cfg precedence, decoding or render readiness. */

bool __thiscall ThumbnailCache_SelectPath(void *this,uint cacheKind,void *outPath)

{
  char cVar1;
  undefined1 uVar2;
  ushort *puVar3;
  int *piVar4;
  short *psVar5;
  undefined4 uVar6;
  char *pcVar7;
  wchar_t *pwVar8;
  
  if (cacheKind == 0x5a2dd454) {
    pcVar7 = "thumbnailAltCache";
  }
  else {
    if (cacheKind != 0x6283ae8a) goto LAB_00d4baf5;
    pcVar7 = "CASThumbnailAltCache";
  }
  puVar3 = (ushort *)FUN_0058b5b0((LPCWSTR)pcVar7,0);
  if (puVar3 != (ushort *)0x0) {
    FUN_004edf60(outPath,puVar3);
    return true;
  }
LAB_00d4baf5:
  piVar4 = (int *)FUN_0072f140();
  puVar3 = (ushort *)(**(code **)(*piVar4 + 0x24))();
  if ((puVar3 != (ushort *)0x0) && (*puVar3 != 0)) {
    FUN_004edf60(outPath,puVar3);
    FUN_004ee250(outPath,L"Thumbnails");
    psVar5 = (short *)FUN_007e51a0(outPath);
    cVar1 = FUN_004dd040(psVar5);
    uVar2 = 0;
    if (cVar1 != '\0') {
      uVar6 = FUN_00d4b370(cacheKind);
      if ((char)uVar6 == '\0') {
        if (cacheKind == 0x6283ae8a) {
          pwVar8 = L"CASThumbnails.package";
        }
        else {
          if (cacheKind != 0xb7254173) {
            return false;
          }
          pwVar8 = L"DownloadsThumbnails.package";
        }
      }
      else {
        pwVar8 = L"ObjectThumbnails.package";
      }
      psVar5 = (short *)FUN_0058b5b0((LPCWSTR)"thumbnailDefaultCacheName",(int)pwVar8);
      uVar2 = FUN_004ee400(outPath,psVar5,0);
    }
    return (bool)uVar2;
  }
  return false;
}

