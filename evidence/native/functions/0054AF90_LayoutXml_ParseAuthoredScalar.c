/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX actual loader,3 stackwords/RET0C, AL success.
   Full19target switch: bool compares _wcsicmp to original UTF16 true and writes1 only on equality;
   integer lanes use actual wcstol/wcstoul or native64 helpers then narrow/store selected widths;
   float/double use wcstod then FSTP single/double; point/rect scanf paths check2/4conversions and
   set error2FC50006 on mismatch. Bool non-true input writes0 without lexical-error gate.
   Unsupported/object/struct cases and referenced resource conversion remain selected explicit
   boundaries; no rewrite to current permissive CLR aliases or decoder rules. */

bool __thiscall
LayoutXml_ParseAuthoredScalar(void *this,void *outPayload,uint authoredType,ushort *text)

{
  long lVar1;
  ulong uVar2;
  undefined4 uVar3;
  int iVar4;
  bool bVar5;
  longlong lVar6;
  double dVar7;
  wchar_t *pwVar8;
  
  switch(authoredType) {
  case 2:
    iVar4 = _wcsicmp((wchar_t *)text,L"true");
    *(bool *)outPayload = iVar4 == 0;
    return true;
  case 3:
    lVar1 = wcstol((wchar_t *)text,(wchar_t **)0x0,0);
    *(char *)outPayload = (char)lVar1;
    return true;
  case 4:
    lVar1 = wcstol((wchar_t *)text,(wchar_t **)0x0,0);
    *(short *)outPayload = (short)lVar1;
    return true;
  case 5:
    lVar1 = wcstol((wchar_t *)text,(wchar_t **)0x0,0);
    *(long *)outPayload = lVar1;
    return true;
  case 6:
    lVar6 = FUN_004fef20(text,(int *)0x0,0);
    *(longlong *)outPayload = lVar6;
    return true;
  case 7:
    uVar2 = wcstoul((wchar_t *)text,(wchar_t **)0x0,0);
    *(char *)outPayload = (char)uVar2;
    return true;
  case 8:
    uVar2 = wcstoul((wchar_t *)text,(wchar_t **)0x0,0);
    *(short *)outPayload = (short)uVar2;
    return true;
  case 9:
    uVar2 = wcstoul((wchar_t *)text,(wchar_t **)0x0,0);
    *(ulong *)outPayload = uVar2;
    return true;
  case 10:
    lVar6 = FUN_004fef40(text,(int *)0x0,0);
    *(longlong *)outPayload = lVar6;
    return true;
  case 0xb:
    dVar7 = wcstod((wchar_t *)text,(wchar_t **)0x0);
    *(float *)outPayload = (float)dVar7;
    return true;
  case 0xc:
    dVar7 = wcstod((wchar_t *)text,(wchar_t **)0x0);
    *(double *)outPayload = dVar7;
    return true;
  case 0xd:
    goto switchD_0054afa3_caseD_d;
  case 0xe:
    pwVar8 = L"%d,%d,%d,%d";
    break;
  case 0xf:
    pwVar8 = L"%d,%d";
    goto LAB_0054b184;
  case 0x10:
    pwVar8 = L"%g,%g,%g,%g";
    break;
  case 0x11:
    pwVar8 = L"%g,%g";
LAB_0054b184:
    iVar4 = swscanf((wchar_t *)text,pwVar8,outPayload,(int)outPayload + 4);
    bVar5 = iVar4 == 2;
    goto LAB_0054b13b;
  case 0x12:
    uVar3 = FUN_0054af20(this,(short *)text);
    *(undefined4 *)outPayload = uVar3;
    return true;
  case 0x13:
  case 0x14:
    goto switchD_0054afa3_caseD_13;
  default:
    return false;
  }
  iVar4 = swscanf((wchar_t *)text,pwVar8,outPayload,(int)outPayload + 4,(int)outPayload + 8,
                  (int)outPayload + 0xc);
  bVar5 = iVar4 == 4;
LAB_0054b13b:
  if (!bVar5) {
switchD_0054afa3_caseD_13:
    *(undefined4 *)((int)this + 0x5c) = 0x2fc50006;
    return false;
  }
switchD_0054afa3_caseD_d:
  return true;
}

