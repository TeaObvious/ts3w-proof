/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  ushort *text;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  ulong uVar6;
  void *this_01;
  undefined4 *puVar7;
  undefined4 uVar8;
  ushort ******local_28;
  ushort ******local_24;
  undefined4 local_20;
  undefined4 local_1c;
  int local_18;
  void *local_14;
  undefined4 local_c [3];
  
  this_00 = (int *)((int)this + 0x98);
  _Str = (wchar_t *)FUN_00470f60(this_00,(ushort *)L"propid");
  typeName = (ushort *)FUN_00470f60(this_00,(ushort *)L"type");
  local_28 = (ushort ******)FUN_00470f60(this_00,(ushort *)L"value");
  _Str_00 = (wchar_t *)FUN_00470f60(this_00,(ushort *)L"count");
  text = (ushort *)FUN_00470f60(this_00,(ushort *)&DAT_00fc200c);
  if (_Str == (wchar_t *)0x0) {
    *(undefined4 *)((int)this + 0x5c) = 0x2fc50003;
    if (*(int *)((int)this + 0x50) == 0) {
      return false;
    }
    uVar8 = *(undefined4 *)((int)this + 0x54);
    uVar3 = FUN_00470ef0(this_00);
    iVar4 = FUN_00470ed0(this_00);
    uVar5 = UInt32Field5C_Get(this_00);
    (**(code **)((int)this + 0x50))(*(undefined4 *)((int)this + 0x5c),uVar5,iVar4,uVar3,uVar8);
    return false;
  }
  if ((typeName == (ushort *)0x0) || (uVar5 = LayoutXml_FindExactPropertyType(typeName), uVar5 == 0)
     ) {
    FUN_0054aa30(this,0x2fc50004);
    return false;
  }
  uVar6 = wcstoul(_Str,(wchar_t **)0x0,0);
  this_01 = NativePropertyContext_FindDescriptor(context,local_c,uVar6,this);
  if (this_01 == (void *)0x0) goto LAB_0054b90a;
  bVar1 = LayoutXml_ArePropertyTypesCompatible(uVar5,*(ushort *)((int)this_01 + 0xc) & 0xfff);
  if (bVar1) {
    if (_Str_00 == (wchar_t *)0x0) {
      uVar6 = 1;
    }
    else {
      uVar6 = wcstoul(_Str_00,(wchar_t **)0x0,0);
    }
    if ((*(short *)((int)this_01 + 0xc) < 0) || (uVar6 == *(uint *)((int)this_01 + 0x10))) {
      bVar1 = NativePropertyDescriptor_PrepareValueBuffer(this_01,&local_18,local_c,uVar6,this,0);
      if (!bVar1) {
        FUN_0054aa30(this,3);
        return false;
      }
      if (uVar5 == 0x13) {
        iVar4 = FUN_0054b520(this,local_c,this_01,&local_18,uVar6);
        *(int *)outPendingObject = iVar4;
        uVar8 = FUN_0054ac90(this,iVar4);
        if ((char)uVar8 == '\0') {
          return false;
        }
        goto LAB_0054b90a;
      }
      if (uVar5 == 0x14) {
        local_28 = (ushort ******)&local_28;
        local_24 = local_28;
        uVar5 = FUN_0054aa80(this,&local_18,(int)local_28);
        if ((char)uVar5 == '\0') {
          return false;
        }
        if ((ushort *******)local_24 != &local_28) {
          iVar4 = FUN_0054b520(this,context,this_01,&local_18,0);
          *(int *)outPendingObject = iVar4;
          FUN_0054ac40(&local_28,(int *)(iVar4 + 8));
          FUN_004711b0(this_00);
          return true;
        }
      }
      else if (_Str_00 == (wchar_t *)0x0) {
        if (text == (ushort *)0x0) {
          if ((local_28 != (ushort ******)0x0) &&
             (bVar1 = LayoutXml_ParseAuthoredScalar(this,local_14,uVar5,(ushort *)local_28), !bVar1)
             ) {
            return false;
          }
        }
        else {
          local_28 = (ushort ******)0x0;
          local_24 = (ushort ******)0x0;
          local_20 = 0;
          local_1c = 0;
          bVar1 = ResourceKey_ParseUtf16Text(text,&local_28);
          if (bVar1) {
            puVar7 = (undefined4 *)**(int **)((int)this + 0x8c);
            if (puVar7 != (undefined4 *)(*(int **)((int)this + 0x8c))[1]) {
              do {
                cVar2 = (**(code **)(*(int *)*puVar7 + 0x10))(&local_18,uVar5,&local_28);
                if (cVar2 != '\0') goto LAB_0054b8f3;
                puVar7 = puVar7 + 1;
              } while (puVar7 != *(undefined4 **)(*(int *)((int)this + 0x8c) + 4));
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
      uVar8 = 0x2fc5000a;
    }
    else {
      uVar8 = 0x2fc50007;
    }
  }
  else {
    uVar8 = 0x2fc50005;
  }
  FUN_0054aa30(this,uVar8);
LAB_0054b90a:
  FUN_004711b0(this_00);
  return true;
}

