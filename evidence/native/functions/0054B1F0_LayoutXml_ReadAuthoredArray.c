/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* Analyst role, original PC1.67. Existing authored value-array reader, physical ECX loader plus one
   stack DWORD pointing at the prepared value-buffer descriptor; all five exits RET4.
   Success/failure defines AL only, not full EAX. Descriptor words are native type metadata, current
   payload address and declared count; metadata supplies element stride. Exact UTF16 child name
   value is required. Child index must be below count before parsing and must equal count at the
   closing node. Every completed value advances payload by native stride and index by one, including
   a key parse/provider miss; no slot compaction or later-image promotion. Optional child type uses
   exact type lookup/compatibility; key and scalar branches are exclusive. Type/selected scalar
   errors may report, skip the child and return AL1, so AL1 alone does not prove every declared
   element was written. Other count/cursor/type-name paths return AL0. Key provider virtual+10
   receives this value buffer, authored child type (zero when omitted) and parsed key; failed
   providers report2FC50009 and continue. Resource resolution/retention and complete XML cursor
   behavior remain their actual callees. No generalized rollback or image fallback is inferred. */

bool __thiscall LayoutXml_ReadAuthoredArray(void *this,undefined4 *param_1)

{
  int *this_00;
  wchar_t wVar1;
  char cVar2;
  undefined4 uVar3;
  int iVar4;
  wchar_t *pwVar5;
  ushort *puVar6;
  ushort *typeName;
  undefined4 uVar7;
  int iVar8;
  uint uVar9;
  uint authoredType;
  wchar_t *pwVar10;
  undefined4 *puVar11;
  bool bVar12;
  uint local_30;
  ushort *local_1c;
  void *local_18;
  undefined4 local_14;
  undefined8 local_10;
  undefined4 local_8;
  undefined4 local_4;
  
  local_1c = (ushort *)*param_1;
  uVar9 = (uint)*local_1c;
  local_18 = (void *)param_1[1];
  iVar8 = *(int *)(local_1c + 4);
  this_00 = (int *)((int)this + 0x98);
  local_30 = 0;
  local_14 = 1;
  uVar3 = FUN_00471150(this_00);
  cVar2 = (char)uVar3;
  do {
    if (cVar2 == '\0') {
      *(undefined4 *)((int)this + 0x5c) = *(undefined4 *)((int)this + 0xa0);
LAB_0054b406:
      if (*(int *)((int)this + 0x50) != 0) {
        uVar3 = *(undefined4 *)((int)this + 0x54);
        uVar7 = FUN_00470ef0(this_00);
        iVar8 = FUN_00470ed0(this_00);
        uVar9 = UInt32Field5C_Get(this_00);
        (**(code **)((int)this + 0x50))(*(undefined4 *)((int)this + 0x5c),uVar9,iVar8,uVar7,uVar3);
      }
      return false;
    }
    iVar4 = FUN_00470f30((int)this_00);
    if (iVar4 == 1) {
      pwVar10 = L"value";
      pwVar5 = (wchar_t *)FUN_00470f50((int)this_00);
      do {
        wVar1 = *pwVar5;
        bVar12 = (ushort)wVar1 < (ushort)*pwVar10;
        if (wVar1 != *pwVar10) {
LAB_0054b286:
          iVar4 = (1 - (uint)bVar12) - (uint)(bVar12 != 0);
          goto LAB_0054b28b;
        }
        if (wVar1 == L'\0') break;
        wVar1 = pwVar5[1];
        bVar12 = (ushort)wVar1 < (ushort)pwVar10[1];
        if (wVar1 != pwVar10[1]) goto LAB_0054b286;
        pwVar5 = pwVar5 + 2;
        pwVar10 = pwVar10 + 2;
      } while (wVar1 != L'\0');
      iVar4 = 0;
LAB_0054b28b:
      if (iVar4 != 0) {
        *(undefined4 *)((int)this + 0x5c) = 0x2fc50001;
        goto LAB_0054b406;
      }
      puVar6 = (ushort *)FUN_00470f60(this_00,(ushort *)L"value");
      typeName = (ushort *)FUN_00470f60(this_00,(ushort *)L"type");
      pwVar5 = (wchar_t *)FUN_00470f60(this_00,(ushort *)&DAT_00fc200c);
      authoredType = 0;
      if ((uint)param_1[2] <= local_30) {
        *(undefined4 *)((int)this + 0x5c) = 0x2fc50007;
        if (*(int *)((int)this + 0x50) == 0) {
          return false;
        }
        uVar3 = *(undefined4 *)((int)this + 0x54);
        uVar7 = FUN_00470ef0(this_00);
        iVar8 = FUN_00470ed0(this_00);
        uVar9 = UInt32Field5C_Get(this_00);
        (**(code **)((int)this + 0x50))(*(undefined4 *)((int)this + 0x5c),uVar9,iVar8,uVar7,uVar3);
        return false;
      }
      if (typeName != (ushort *)0x0) {
        authoredType = LayoutXml_FindExactPropertyType(typeName);
        if (authoredType == 0) {
          FUN_0054aa30(this,0x2fc50004);
          return false;
        }
        bVar12 = LayoutXml_ArePropertyTypesCompatible(authoredType,uVar9);
        if (!bVar12) {
          uVar3 = 0x2fc50005;
          goto LAB_0054b49e;
        }
      }
      if (pwVar5 == (wchar_t *)0x0) {
        if (puVar6 == (ushort *)0x0) {
          puVar6 = (ushort *)FUN_00471360(this_00);
          if (puVar6 == (ushort *)0x0) {
            puVar6 = &DAT_00fba6c4;
          }
          bVar12 = LayoutXml_ParseAuthoredScalar(this,local_18,uVar9,puVar6);
          if (!bVar12) {
            uVar3 = *(undefined4 *)((int)this + 0x5c);
            goto LAB_0054b49e;
          }
        }
        else {
          bVar12 = LayoutXml_ParseAuthoredScalar(this,local_18,uVar9,puVar6);
          if (!bVar12) {
            uVar3 = *(undefined4 *)((int)this + 0x5c);
LAB_0054b49e:
            FUN_0054aa30(this,uVar3);
            FUN_004711b0(this_00);
            return true;
          }
        }
      }
      else {
        local_10._0_4_ = 0;
        local_10._4_4_ = 0;
        local_8 = 0;
        local_4 = 0;
        uVar3 = FUN_004af360(pwVar5,&local_10);
        if (((char)uVar3 != '\0') &&
           (puVar11 = (undefined4 *)**(int **)((int)this + 0x8c),
           puVar11 != (undefined4 *)(*(int **)((int)this + 0x8c))[1])) {
          do {
            cVar2 = (**(code **)(*(int *)*puVar11 + 0x10))(&local_1c,authoredType,&local_10);
            if (cVar2 != '\0') break;
            FUN_0054aa30(this,0x2fc50009);
            puVar11 = puVar11 + 1;
          } while (puVar11 != *(undefined4 **)(*(int *)((int)this + 0x8c) + 4));
        }
      }
      FUN_004711b0(this_00);
      local_18 = (void *)((int)local_18 + iVar8);
      local_30 = local_30 + 1;
    }
    else {
      iVar4 = FUN_00470f30((int)this_00);
      if (iVar4 == 2) {
        if (local_30 == param_1[2]) {
          return true;
        }
        *(undefined4 *)((int)this + 0x5c) = 0x2fc50007;
        if (*(int *)((int)this + 0x50) == 0) {
          return false;
        }
        uVar3 = *(undefined4 *)((int)this + 0x54);
        uVar7 = FUN_00470ef0(this_00);
        iVar8 = FUN_00470ed0(this_00);
        uVar9 = UInt32Field5C_Get(this_00);
        (**(code **)((int)this + 0x50))(*(undefined4 *)((int)this + 0x5c),uVar9,iVar8,uVar7,uVar3);
        return false;
      }
    }
    uVar3 = FUN_00471150(this_00);
    cVar2 = (char)uVar3;
  } while( true );
}

