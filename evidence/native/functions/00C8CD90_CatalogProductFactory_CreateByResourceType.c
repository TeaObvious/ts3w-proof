/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note, original PC1.67 static; analyst-assigned name. Physical thiscall ECX factory and
   four stack words, RET10hex; AL is Boolean status. Second physical word is output-resource pointer
   and is cleared before dispatch; fourth is UInt32 resource type. First/third pointer roles remain
   analyst inference, not recovered signatures. Exact branches: CFEN0418FE2A allocates180hex and
   callsC948D0; CSTR049CA4CD allocates108hex and callsC96E10; CRAL04C58103 allocatesF0hex and
   callsC962C0. Full other product dispatch is preserved. Unsupported or allocation failure
   returnsAL0; successful product retained through virtual0. Optional source/context delegates to
   factory virtual+24; failure releases product through virtual+4 and clears output. First-argument
   virtual+20 on failure has a cleanup-like role but is not proven Release. Caller resource policy
   outside this body is not established. */

bool __thiscall
CatalogProductFactory_CreateByResourceType
          (void *this,void *source,void **outResource,void *context,uint resourceType)

{
  char cVar1;
  void *pvVar2;
  undefined4 *puVar3;
  
  *outResource = (void *)0x0;
  if (resourceType < 0x60b390d) {
    if (resourceType == 0x60b390c) {
      puVar3 = (undefined4 *)FUN_004e4500(0xc0,"Lot/CatalogProductFactory/ProductWaterBrush",0);
      if (puVar3 == (undefined4 *)0x0) goto LAB_00c8d0e2;
      puVar3 = FUN_00c9b420(puVar3);
    }
    else if (resourceType < 0x4b3066a) {
      if (resourceType == 0x4b30669) {
        puVar3 = (undefined4 *)
                 FUN_004e4500(0xc0,"Lot/CatalogProductFactory/ProductTerrainSculptBrush",0);
        if (puVar3 == (undefined4 *)0x0) goto LAB_00c8d0e2;
        puVar3 = TerrainSculptProduct_Construct(puVar3);
      }
      else if (resourceType == 0x418fe2a) {
        pvVar2 = (void *)FUN_004e4500(0x180,"Lot/CatalogProductFactory/ProductFence",0);
        if (pvVar2 == (void *)0x0) goto LAB_00c8d0e2;
        puVar3 = FenceProduct_Construct(pvVar2);
      }
      else if (resourceType == 0x49ca4cd) {
        pvVar2 = (void *)FUN_004e4500(0x108,"Lot/CatalogProductFactory/ProductModularStairs",0);
        if (pvVar2 == (void *)0x0) goto LAB_00c8d0e2;
        puVar3 = StairsProduct_Construct(pvVar2);
      }
      else {
        if (resourceType != 0x4ac5d93) goto LAB_00c8d0ec;
        pvVar2 = (void *)FUN_004e4500(0x90,"Lot/CatalogProductFactory/ProductUserToolProxy",0);
        if (pvVar2 == (void *)0x0) goto LAB_00c8d0e2;
        puVar3 = (undefined4 *)ToolProxyProduct_Construct(pvVar2);
      }
    }
    else if (resourceType == 0x4c58103) {
      pvVar2 = (void *)FUN_004e4500(0xf0,"Lot/CatalogProductFactory/ProductModularRailings",0);
      if (pvVar2 == (void *)0x0) goto LAB_00c8d0e2;
      puVar3 = RailingProduct_Construct(pvVar2);
    }
    else if (resourceType == 0x4ed4bb2) {
      pvVar2 = (void *)FUN_004e4500(0xd8,"Lot/CatalogProductFactory/ProductTerrainPaintBrush",0);
      if (pvVar2 == (void *)0x0) goto LAB_00c8d0e2;
      puVar3 = TerrainPaintProduct_Construct(pvVar2);
    }
    else {
      if (resourceType != 0x4f3cc01) goto LAB_00c8d0ec;
      pvVar2 = (void *)FUN_004e4500(0x100,"Lot/CatalogProductFactor/Fireplace",0);
      if (pvVar2 == (void *)0x0) goto LAB_00c8d0e2;
      puVar3 = FireplaceProduct_Construct(pvVar2);
    }
  }
  else if (resourceType < 0x515ca4ce) {
    if (resourceType == 0x515ca4cd) {
      pvVar2 = (void *)FUN_004e4500(0xd0,"Lot/CatalogProductFactory/ProductPattern",0);
      if (pvVar2 == (void *)0x0) {
LAB_00c8d0e2:
        puVar3 = (undefined4 *)0x0;
      }
      else {
        puVar3 = CatalogPattern_Construct(pvVar2);
      }
    }
    else if (resourceType == 0xa36f07a) {
      pvVar2 = (void *)FUN_004e4500(0xe8,"Lot/CatalogProductFactory/CurvedPool",0);
      if (pvVar2 == (void *)0x0) goto LAB_00c8d0e2;
      puVar3 = CurvedPoolProduct_Construct(pvVar2);
    }
    else if (resourceType == 0x316c78f2) {
      pvVar2 = (void *)FUN_004e4500(0x100,"Lot/CatalogProductFactory/ProductDeckFoundation",0);
      if (pvVar2 == (void *)0x0) goto LAB_00c8d0e2;
      puVar3 = FoundationProduct_Construct(pvVar2);
    }
    else {
      if (resourceType != 0x319e4f1d) goto LAB_00c8d0ec;
      puVar3 = (undefined4 *)FUN_004e4500(0x240,"Lot/CatalogProductFactory/ProductObject",0);
      if (puVar3 == (undefined4 *)0x0) goto LAB_00c8d0e2;
      puVar3 = ObjectProduct_Construct(puVar3);
    }
  }
  else if (resourceType == 0x9151e6bc) {
    pvVar2 = (void *)FUN_004e4500(0xc0,"Lot/CatalogProductFactory/ProductWall",0);
    if (pvVar2 == (void *)0x0) goto LAB_00c8d0e2;
    puVar3 = WallStyleProduct_Construct(pvVar2);
  }
  else if (resourceType == 0x91edbd3e) {
    pvVar2 = (void *)FUN_004e4500(0xb8,"Lot/CatalogProductFactory/ProductRoof",0);
    if (pvVar2 == (void *)0x0) goto LAB_00c8d0e2;
    puVar3 = RoofStyleProduct_Construct(pvVar2);
  }
  else {
    if (resourceType != 0xf1edbd86) goto LAB_00c8d0ec;
    puVar3 = (undefined4 *)FUN_004e4500(200,"Lot/CatalogProductFactory/ProductRoofPattern",0);
    if (puVar3 == (undefined4 *)0x0) goto LAB_00c8d0e2;
    puVar3 = RoofPatternProduct_Construct(puVar3);
  }
  *outResource = puVar3;
  if (puVar3 != (undefined4 *)0x0) {
    (**(code **)*puVar3)();
    if (source != (void *)0x0) {
      cVar1 = (**(code **)(*(int *)this + 0x24))(source,*outResource,context,resourceType);
      if (cVar1 == '\0') {
        (**(code **)(*(int *)*outResource + 4))();
        *outResource = (void *)0x0;
        return false;
      }
    }
    return true;
  }
LAB_00c8d0ec:
  if (source != (void *)0x0) {
    (**(code **)(*(int *)source + 0x20))();
  }
  return false;
}

