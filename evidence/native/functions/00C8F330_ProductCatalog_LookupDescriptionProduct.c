/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical thiscall ECXcatalog plus
   one sourcekeypointer stackDWORD/RET4/EAXproductpointeror0; descriptor typeatkey8 dispatches
   concrete actual lookup helpers. Some branches passdefaulttrue, others own separate acquisition
   choices; not uniformly exact-only or retain semantics. Wallstyle9151E6BC calls existing
   sorted24-byte keyarray C8DB20; missingexact row falls backfirstrow whennonempty, else0. Complete
   key and actual product pointer consumed byD4BBA0 at68/6C. No CFND04F88964 case; unsupportedtype0.
   Current exactFindResource+parser does not prove this native default/catalog lifetime policy. No
   global pointer struct/whole interface pointee model inferred. */

void * __thiscall ProductCatalog_LookupDescriptionProduct(void *this,void *sourceKey)

{
  uint uVar1;
  int iVar2;
  void *pvVar3;
  int local_8;
  int local_4;
  
  uVar1 = *(uint *)((int)sourceKey + 8);
  pvVar3 = (void *)0x0;
  if (uVar1 < 0x60b390d) {
    if (uVar1 == 0x60b390c) {
      pvVar3 = (void *)FUN_00c8ef40(this,sourceKey);
      return pvVar3;
    }
    if (uVar1 < 0x4c58104) {
      if (uVar1 != 0x4c58103) {
        if (uVar1 == 0x418fe2a) {
          pvVar3 = ProductCatalog_LookupFenceProduct(this,sourceKey,1);
          return pvVar3;
        }
        if (uVar1 != 0x49ca4cd) {
          if (uVar1 != 0x4b30669) {
            return (void *)0x0;
          }
          pvVar3 = (void *)FUN_00c8ee30(this,sourceKey);
          return pvVar3;
        }
      }
      pvVar3 = (void *)FUN_00c8e7d0(this,sourceKey,'\x01');
      return pvVar3;
    }
    if (uVar1 == 0x4ed4bb2) {
      pvVar3 = (void *)FUN_00c8ee80(this,sourceKey,'\x01');
      return pvVar3;
    }
    if (uVar1 == 0x4f3cc01) {
      pvVar3 = (void *)FUN_00c8e890(this,sourceKey,'\x01');
      return pvVar3;
    }
  }
  else if (uVar1 < 0x9151e6bd) {
    if (uVar1 == 0x9151e6bc) {
      ProductCatalogKeyArray_FindExact((int *)((int)this + 0x1c),&local_8,sourceKey);
      if (local_8 == local_4) {
        local_8 = *(int *)((int)this + 0x20);
      }
      if (local_8 == *(int *)((int)this + 0x20)) {
        iVar2 = *(int *)((int)this + 0x1c);
        if (iVar2 == *(int *)((int)this + 0x20)) {
          return (void *)0x0;
        }
        return *(void **)(iVar2 + 0x10);
      }
      return *(void **)(local_8 + 0x10);
    }
    if (uVar1 == 0x316c78f2) {
      pvVar3 = (void *)FUN_00c8eb60(this,sourceKey);
      return pvVar3;
    }
    if (uVar1 == 0x319e4f1d) {
      pvVar3 = (void *)ObjectCatalog_FindByTypedKey(this,sourceKey);
      return pvVar3;
    }
    if (uVar1 == 0x515ca4cd) {
      pvVar3 = (void *)ProductCatalog_FindExactKeyInFourBanks(this,sourceKey);
      return pvVar3;
    }
  }
  else if (uVar1 == 0x91edbd3e) {
    pvVar3 = ProductCatalog_LookupRoofStyle(this,sourceKey,1);
  }
  else if (uVar1 == 0xf1edbd86) {
    pvVar3 = ProductCatalog_LookupRoofPattern(this,sourceKey,1);
    return pvVar3;
  }
  return pvVar3;
}

