/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical cdecl ten stackDWORDs:
   sourcekeypointer,sizeword,cameraword,indexword,outkeypointer,techniqueword,geometryword,materialword,templateIDlow/high;
   all plainRET, output is16-byte key, no defined return. Native keymemory
   instanceLow/high,type,group. Selected object/pattern/wall/fence/stairs/railing/fireplace keys use
   group&FF000000 for productlookup, other selected styles/brush types use fullsourcekey. C8F330
   resolves actualproduct; nonzero completeUInt64 atproduct68/6C becomes outputinstance,
   type2E75C764+rawsize, group originalsourcegroup&FF000000. No iconresource-existence check on this
   common-icon branch and no uniformsize0..3 check. CFND04F88964 is NOT in this common-icon
   selector. Actual current Foundation type316C78F2 IS selected here with the full source key and is
   the CLR registry entry; the old additional-CFND attribution was stale. Source01661233 separately
   tests actual candidate iconresource with group0/57FA5EA interface then releases it,
   selected0CC0EC90/DC0FB990 passthroughkeys unchanged; other/missing/zeroicon delegates D4AA70 with
   same ten words. Broader fallback/hash/rendering remains separate. C93100 common68 producer and
   C93020 defaults reused; no full cache/CLRnegativecache/hostlookup equivalence. */

void __cdecl
UIThumbnail_SelectCatalogIconOrDeriveKey
          (void *sourceKey,int sizeWord,uint cameraWord,int indexWord,void *outKey,
          uint techniqueWord,uint geometryWord,uint materialWord,uint templateLow,uint templateHigh)

{
  uint uVar1;
  int iVar2;
  void *pvVar3;
  char cVar4;
  undefined4 *puVar5;
  int *piVar6;
  void *pvVar7;
  bool bVar8;
  undefined4 local_10;
  undefined4 local_c;
  uint local_8;
  uint local_4;
  
  pvVar3 = sourceKey;
  uVar1 = *(uint *)((int)sourceKey + 8);
  puVar5 = sourceKey;
  if (uVar1 < 0xcc0ec91) {
    if (uVar1 == 0xcc0ec90) {
LAB_00d4bd9a:
      *(undefined4 *)outKey = *(undefined4 *)sourceKey;
      *(undefined4 *)((int)outKey + 4) = *(undefined4 *)((int)sourceKey + 4);
      *(undefined4 *)((int)outKey + 8) = *(undefined4 *)((int)sourceKey + 8);
      *(undefined4 *)((int)outKey + 0xc) = *(undefined4 *)((int)sourceKey + 0xc);
      return;
    }
    if (uVar1 < 0x4b3066a) {
      if (uVar1 == 0x4b30669) goto LAB_00d4bd56;
      if (uVar1 == 0x1661233) {
        local_c = *(undefined4 *)((int)sourceKey + 4);
        local_10 = *(undefined4 *)sourceKey;
        local_8 = sizeWord + 0x2e75c764;
        local_4 = 0;
        puVar5 = (undefined4 *)FUN_0072f140();
        sourceKey = (void *)0x0;
        puVar5 = (undefined4 *)*puVar5;
        piVar6 = FUN_0074efa0((int *)&sourceKey);
        cVar4 = (*(code *)*puVar5)(&local_10,0x57fa5ea,piVar6);
        if (cVar4 != '\0') {
          *(undefined4 *)outKey = local_10;
          *(undefined4 *)((int)outKey + 4) = local_c;
          *(uint *)((int)outKey + 8) = local_8;
          *(uint *)((int)outKey + 0xc) = local_4;
          if (sourceKey == (void *)0x0) {
            return;
          }
          (**(code **)(*(int *)sourceKey + 4))();
          return;
        }
        if (sourceKey != (void *)0x0) {
          (**(code **)(*(int *)sourceKey + 4))();
        }
        goto LAB_00d4bbf0;
      }
      if (uVar1 != 0x418fe2a) {
        bVar8 = uVar1 == 0x49ca4cd;
        goto LAB_00d4bbea;
      }
    }
    else if (uVar1 != 0x4c58103) {
      if (uVar1 == 0x4ed4bb2) goto LAB_00d4bd56;
      bVar8 = uVar1 == 0x4f3cc01;
LAB_00d4bbea:
      if (!bVar8) goto LAB_00d4bbf0;
    }
LAB_00d4bd18:
    local_10 = *(undefined4 *)sourceKey;
    local_c = *(undefined4 *)((int)sourceKey + 4);
    local_4 = *(uint *)((int)sourceKey + 0xc) & 0xff000000;
    puVar5 = &local_10;
    local_8 = uVar1;
  }
  else {
    if (uVar1 < 0x9151e6bd) {
      if (uVar1 != 0x9151e6bc) {
        if (uVar1 == 0x316c78f2) goto LAB_00d4bd56;
        if ((uVar1 != 0x319e4f1d) && (uVar1 != 0x515ca4cd)) goto LAB_00d4bbf0;
      }
      goto LAB_00d4bd18;
    }
    if (uVar1 != 0x91edbd3e) {
      if (uVar1 == 0xdc0fb990) goto LAB_00d4bd9a;
      if (uVar1 != 0xf1edbd86) goto LAB_00d4bbf0;
    }
  }
LAB_00d4bd56:
  pvVar7 = ProductCatalog_LookupDescriptionProduct(DAT_011ee034,puVar5);
  if (pvVar7 != (void *)0x0) {
    iVar2 = *(int *)((int)pvVar7 + 0x68);
    if (iVar2 != 0 || *(int *)((int)pvVar7 + 0x6c) != 0) {
      *(int *)((int)outKey + 4) = *(int *)((int)pvVar7 + 0x6c);
      *(int *)outKey = iVar2;
      *(uint *)((int)outKey + 0xc) = *(uint *)((int)pvVar3 + 0xc) & 0xff000000;
      *(int *)((int)outKey + 8) = sizeWord + 0x2e75c764;
      return;
    }
  }
LAB_00d4bbf0:
  UIThumbnail_DeriveResourceKey
            (pvVar3,sizeWord,cameraWord,indexWord,outKey,(byte)techniqueWord,geometryWord,
             materialWord,templateLow,templateHigh);
  return;
}

