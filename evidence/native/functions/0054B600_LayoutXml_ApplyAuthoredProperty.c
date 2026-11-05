/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX actual XML layout loader,2stackwords/RET8; status is
   AL, not full undefined4. Reads propid/type/value/count/key; full type lookup, descriptor
   resolution, ECX/EAX compatibility, count checks, buffer preparation, scalar/array/object/struct
   branches and generic commit/error/advance are retained. Unknown property can advance without
   write. Scalar uint32 flags/count1 can parse directly into the constructor field then commit same
   pointer, proving authored0 overrides constructor1. Actual direct caller0054BCB8 in0054BC00 tests
   AL immediately; array parser and object/structured child helpers are bounded leaves, not guessed
   full resource decoder parity. Generic C names/register aliases around unresolved child calls
   remain annotated, no foreign helper prototypes changed. */

bool __thiscall LayoutXml_ApplyAuthoredProperty(void *this,void *context,void *outPendingObject)

{
  int *this_00;
  bool bVar1;
  char cVar2;
  wchar_t *_Str;
  ushort *typeName;
  wchar_t *_Str_00;
  wchar_t *pwVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  ulong uVar7;
  void *this_01;
  undefined4 *puVar8;
  undefined4 uVar9;
  ushort *****local_28;
  ushort *****local_24;
  undefined4 local_20;
  undefined4 local_1c;
  int local_18;
  void *local_14;
  undefined4 local_c [3];
  
  this_00 = (int *)((int)this + 0x98);
  _Str = (wchar_t *)FUN_00470f60(this_00,(ushort *)L"propid");
  typeName = (ushort *)FUN_00470f60(this_00,(ushort *)L"type");
  local_28 = (ushort *****)FUN_00470f60(this_00,(ushort *)L"value");
  _Str_00 = (wchar_t *)FUN_00470f60(this_00,(ushort *)L"count");
  pwVar3 = (wchar_t *)FUN_00470f60(this_00,(ushort *)&DAT_00fc200c);
  if (_Str == (wchar_t *)0x0) {
    *(undefined4 *)((int)this + 0x5c) = 0x2fc50003;
    if (*(int *)((int)this + 0x50) == 0) {
      return false;
    }
    uVar9 = *(undefined4 *)((int)this + 0x54);
    uVar4 = FUN_00470ef0(this_00);
    iVar5 = FUN_00470ed0(this_00);
    uVar6 = UInt32Field5C_Get(this_00);
    (**(code **)((int)this + 0x50))(*(undefined4 *)((int)this + 0x5c),uVar6,iVar5,uVar4,uVar9);
    return false;
  }
  if ((typeName == (ushort *)0x0) || (uVar6 = LayoutXml_FindExactPropertyType(typeName), uVar6 == 0)
     ) {
    FUN_0054aa30(this,0x2fc50004);
    return false;
  }
  uVar7 = wcstoul(_Str,(wchar_t **)0x0,0);
  this_01 = NativePropertyContext_FindDescriptor(context,local_c,uVar7,this);
  if (this_01 == (void *)0x0) goto LAB_0054b90a;
  bVar1 = LayoutXml_ArePropertyTypesCompatible(uVar6,*(ushort *)((int)this_01 + 0xc) & 0xfff);
  if (bVar1) {
    if (_Str_00 == (wchar_t *)0x0) {
      uVar7 = 1;
    }
    else {
      uVar7 = wcstoul(_Str_00,(wchar_t **)0x0,0);
    }
    if ((*(short *)((int)this_01 + 0xc) < 0) || (uVar7 == *(uint *)((int)this_01 + 0x10))) {
      bVar1 = NativePropertyDescriptor_PrepareValueBuffer(this_01,&local_18,local_c,uVar7,this,0);
      if (!bVar1) {
        FUN_0054aa30(this,3);
        return false;
      }
      if (uVar6 == 0x13) {
        iVar5 = FUN_0054b520(this,local_c,this_01,&local_18,uVar7);
        *(int *)outPendingObject = iVar5;
        uVar9 = FUN_0054ac90(this,iVar5);
        if ((char)uVar9 == '\0') {
          return false;
        }
        goto LAB_0054b90a;
      }
      if (uVar6 == 0x14) {
        local_28 = (ushort *****)&local_28;
        local_24 = local_28;
        uVar6 = FUN_0054aa80(this,&local_18,(int)local_28);
        if ((char)uVar6 == '\0') {
          return false;
        }
        if ((ushort ******)local_24 != &local_28) {
          iVar5 = FUN_0054b520(this,context,this_01,&local_18,0);
          *(int *)outPendingObject = iVar5;
          FUN_0054ac40(&local_28,(int *)(iVar5 + 8));
          FUN_004711b0(this_00);
          return true;
        }
      }
      else if (_Str_00 == (wchar_t *)0x0) {
        if (pwVar3 == (wchar_t *)0x0) {
          if (((ushort ******)local_28 != (ushort ******)0x0) &&
             (bVar1 = LayoutXml_ParseAuthoredScalar(this,local_14,uVar6,(ushort *)local_28), !bVar1)
             ) {
            return false;
          }
        }
        else {
          local_28 = (ushort *****)0x0;
          local_24 = (ushort *****)0x0;
          local_20 = 0;
          local_1c = 0;
          uVar9 = FUN_004af360(pwVar3,(longlong *)&local_28);
          if ((char)uVar9 != '\0') {
            puVar8 = (undefined4 *)**(int **)((int)this + 0x8c);
            if (puVar8 != (undefined4 *)(*(int **)((int)this + 0x8c))[1]) {
              do {
                cVar2 = (**(code **)(*(int *)*puVar8 + 0x10))(&local_18,uVar6,&local_28);
                if (cVar2 != '\0') goto LAB_0054b8f3;
                puVar8 = puVar8 + 1;
              } while (puVar8 != *(undefined4 **)(*(int *)((int)this + 0x8c) + 4));
            }
            FUN_0054aa30(this,0x2fc50009);
          }
        }
      }
      else {
        bVar1 = LayoutXml_ReadAuthoredArray(this,&local_18);
        if (!bVar1) {
          return false;
        }
      }
LAB_0054b8f3:
      bVar1 = NativePropertyDescriptor_Write(this_01,local_c,&local_18,this);
      if (bVar1) goto LAB_0054b90a;
      uVar9 = 0x2fc5000a;
    }
    else {
      uVar9 = 0x2fc50007;
    }
  }
  else {
    uVar9 = 0x2fc50005;
  }
  FUN_0054aa30(this,uVar9);
LAB_0054b90a:
  FUN_004711b0(this_00);
  return true;
}

