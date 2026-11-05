/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 0054bfd3: Prepare target document before consuming input; later failure does not establish transactional rollback.
 * 0054c04d: First actual start element is compared to graph, then object; comparisons use lexical cursor name.
 * 0054c0de: Direct object arm passes UInt32 ID output pointer, then appends created object.
 * 0054c0ff: Invoke pending-reference resolution after successful grammar branch; complete resolver internals remain outside this body.
 * 0054c120: Perform notification virtual+14 calls; these are native callbacks, not a hosted thread-safety guarantee.
 * 0054c1f1: Failed parse returns stored full error code; successful path returns UInt32 zero at54C209.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role LayoutXml_ReadDocument.
   Physical ABI: ECX reader; no stack words; full UInt32 EAX status:0 success, reader+5C on failure;
   plain RET. This is NOT AL-bool. Limits: Actual sole caller reference54C24B lies in an
   undefined/previously bounded wrapper; no fabricated whole wrapper export or complete
   factory/refqueue claim. */

uint __thiscall LayoutXml_ReadDocument(void *this)

{
  uint *puVar1;
  wchar_t wVar2;
  bool bVar3;
  bool bVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  wchar_t *pwVar8;
  undefined4 *puVar9;
  uint *puVar10;
  int *piVar11;
  wchar_t *pwVar12;
  undefined4 uVar13;
  uint local_18 [2];
  int iStack_10;
  undefined4 uStack_c;
  
  bVar3 = true;
  FUN_00549d50(*(int *)((int)this + 0x88));
  piVar11 = (int *)((int)this + 0x98);
  bVar4 = XmlCursor_AdvanceToken(piVar11);
  if (bVar4) {
    do {
      iVar5 = FUN_00470f30((int)piVar11);
      if (iVar5 == 1) {
        pwVar12 = L"graph";
        pwVar8 = (wchar_t *)XmlCursor_GetRawElementName(piVar11);
        goto LAB_0054c052;
      }
      bVar4 = XmlCursor_AdvanceToken(piVar11);
    } while (bVar4);
  }
  *(undefined4 *)((int)this + 0x5c) = *(undefined4 *)((int)this + 0xa0);
  if (*(int *)((int)this + 0x50) != 0) {
    uVar13 = *(undefined4 *)((int)this + 0x54);
    uVar6 = FUN_00470ef0(piVar11);
    iVar5 = FUN_00470ed0(piVar11);
    uVar7 = UInt32Field5C_Get(piVar11);
    (**(code **)((int)this + 0x50))(*(undefined4 *)((int)this + 0x5c),uVar7,iVar5,uVar6,uVar13);
  }
  bVar3 = false;
  goto LAB_0054c104;
  while( true ) {
    wVar2 = pwVar8[1];
    bVar4 = (ushort)wVar2 < (ushort)pwVar12[1];
    if (wVar2 != pwVar12[1]) goto LAB_0054c078;
    pwVar8 = pwVar8 + 2;
    pwVar12 = pwVar12 + 2;
    if (wVar2 == L'\0') break;
LAB_0054c052:
    wVar2 = *pwVar8;
    bVar4 = (ushort)wVar2 < (ushort)*pwVar12;
    if (wVar2 != *pwVar12) {
LAB_0054c078:
      iVar5 = (1 - (uint)bVar4) - (uint)(bVar4 != 0);
      goto LAB_0054c07d;
    }
    if (wVar2 == L'\0') break;
  }
  iVar5 = 0;
LAB_0054c07d:
  if (iVar5 == 0) {
    bVar4 = LayoutXml_ReadGraph(this);
    if (!bVar4) {
      bVar3 = false;
      goto LAB_0054c104;
    }
  }
  else {
    pwVar12 = L"object";
    pwVar8 = (wchar_t *)XmlCursor_GetRawElementName(piVar11);
    do {
      wVar2 = *pwVar8;
      bVar4 = (ushort)wVar2 < (ushort)*pwVar12;
      if (wVar2 != *pwVar12) {
LAB_0054c0c6:
        local_18[0] = (1 - (uint)bVar4) - (uint)(bVar4 != 0);
        goto LAB_0054c0cb;
      }
      if (wVar2 == L'\0') break;
      wVar2 = pwVar8[1];
      bVar4 = (ushort)wVar2 < (ushort)pwVar12[1];
      if (wVar2 != pwVar12[1]) goto LAB_0054c0c6;
      pwVar8 = pwVar8 + 2;
      pwVar12 = pwVar12 + 2;
    } while (wVar2 != L'\0');
    local_18[0] = 0;
LAB_0054c0cb:
    if (local_18[0] != 0) {
      FUN_0054aa30(this,0x2fc50001);
      return 0;
    }
    puVar9 = LayoutXml_ReadObject(this,local_18);
    if (puVar9 == (undefined4 *)0x0) {
      bVar3 = false;
      goto LAB_0054c104;
    }
    FUN_00549fc0(*(void **)((int)this + 0x88),puVar9);
  }
  FUN_0054b920(this,(undefined4 *)((int)this + 0x60));
LAB_0054c104:
  iVar5 = (int)this + 0x60;
  *(int *)((int)this + 100) = iVar5;
  *(int *)iVar5 = iVar5;
  puVar9 = (undefined4 *)**(int **)((int)this + 0x8c);
  if (puVar9 != (undefined4 *)(*(int **)((int)this + 0x8c))[1]) {
    do {
      (**(code **)(*(int *)*puVar9 + 0x14))();
      puVar9 = puVar9 + 1;
    } while (puVar9 != *(undefined4 **)(*(int *)((int)this + 0x8c) + 4));
  }
  puVar10 = *(uint **)((int)this + 0x6c);
  uVar7 = *puVar10;
  local_18[0] = *(uint *)(*(int *)((int)this + 0x6c) + *(int *)((int)this + 0x70) * 4);
  if (uVar7 == 0) {
    puVar10 = puVar10 + 1;
    uVar7 = *puVar10;
    while (uVar7 == 0) {
      puVar10 = puVar10 + 1;
      uVar7 = *puVar10;
    }
    uVar7 = *puVar10;
  }
  if (uVar7 != local_18[0]) {
    do {
      if ((*(int **)(uVar7 + 4) != (int *)0x0) &&
         (piVar11 = (int *)(**(code **)(**(int **)(uVar7 + 4) + 0xc))(0xeec58382),
         piVar11 != (int *)0x0)) {
        (**(code **)(*piVar11 + 0x10))(&iStack_10);
        if (*(code **)(iStack_10 + 0x1c) != (code *)0x0) {
          (**(code **)(iStack_10 + 0x1c))(uStack_c);
        }
      }
      (**(code **)(**(int **)(uVar7 + 4) + 4))();
      uVar7 = *(uint *)(uVar7 + 8);
      while (uVar7 == 0) {
        puVar1 = puVar10 + 1;
        puVar10 = puVar10 + 1;
        uVar7 = *puVar1;
      }
    } while (uVar7 != local_18[0]);
  }
  FUN_0073ebe0(*(int *)((int)this + 0x6c),*(uint *)((int)this + 0x70));
  *(undefined4 *)((int)this + 0x74) = 0;
  FUN_004e8da0((void *)((int)this + 8));
  FUN_004e8da0((void *)((int)this + 0x2c));
  if (bVar3) {
    return 0;
  }
  return *(uint *)((int)this + 0x5c);
}

