/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 0054bc6d: Immediate start-element raw lexical name is compared exactly to prop; unknown child reports2FC50001.
 * 0054bcb8: Delegate selected prop body to54B600 with caller property context and output descriptor; subordinate grammar is a separate contract.
 * 0054bcd0: Link nonnull returned pending descriptor into supplied list; already-applied descriptor writes are not rolled back.
 * 0054bd75: Immediate end-element completes with AL1; RET8 confirms both physical input words.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role
   LayoutXml_ReadObjectProperties. Physical ABI: ECX reader; stack+4 property context pointer,+8
   pending-reference list pointer; AL success only; RET8. */

bool __thiscall
LayoutXml_ReadObjectProperties(void *this,void *propertyContext,void *pendingReferences)

{
  int *this_00;
  ushort uVar1;
  int *piVar2;
  bool bVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  ushort *puVar7;
  undefined4 *puVar8;
  ushort *puVar9;
  undefined4 uVar10;
  undefined4 *local_4;
  
  this_00 = (int *)((int)this + 0x98);
  local_4 = this;
  bVar3 = XmlCursor_AdvanceToken(this_00);
  if (!bVar3) {
    *(undefined4 *)((int)this + 0x5c) = *(undefined4 *)((int)this + 0xa0);
    if (*(int *)((int)this + 0x50) != 0) {
      uVar10 = *(undefined4 *)((int)this + 0x54);
      uVar4 = FUN_00470ef0(this_00);
      iVar5 = FUN_00470ed0(this_00);
      uVar6 = UInt32Field5C_Get(this_00);
      (**(code **)((int)this + 0x50))(*(undefined4 *)((int)this + 0x5c),uVar6,iVar5,uVar4,uVar10);
    }
    return false;
  }
  do {
    while (iVar5 = FUN_00470f30((int)this_00), iVar5 != 1) {
      iVar5 = FUN_00470f30((int)this_00);
      if (iVar5 == 2) {
        return true;
      }
      bVar3 = XmlCursor_AdvanceToken(this_00);
      if (!bVar3) {
        FUN_0054aa30(this,*(undefined4 *)((int)this + 0xa0));
        return false;
      }
    }
    puVar9 = &DAT_00fc20b4;
    puVar7 = XmlCursor_GetRawElementName(this_00);
    do {
      uVar1 = *puVar7;
      bVar3 = uVar1 < *puVar9;
      if (uVar1 != *puVar9) {
LAB_0054bc98:
        puVar8 = (undefined4 *)((1 - (uint)bVar3) - (uint)(bVar3 != 0));
        goto LAB_0054bc9d;
      }
      if (uVar1 == 0) break;
      uVar1 = puVar7[1];
      bVar3 = uVar1 < puVar9[1];
      if (uVar1 != puVar9[1]) goto LAB_0054bc98;
      puVar7 = puVar7 + 2;
      puVar9 = puVar9 + 2;
    } while (uVar1 != 0);
    puVar8 = (undefined4 *)0x0;
LAB_0054bc9d:
    if (puVar8 != (undefined4 *)0x0) {
      FUN_0054aa30(this,0x2fc50001);
      return false;
    }
    piVar2 = *(int **)((int)this + 0x38);
    local_4 = puVar8;
    bVar3 = LayoutXml_ApplyAuthoredProperty(this,propertyContext,&local_4);
    if (!bVar3) {
      if ((*(int **)((int)this + 0x30) < piVar2) && (piVar2 < *(int **)((int)this + 0x34))) {
        *(int **)((int)this + 0x38) = piVar2;
        *(int **)((int)this + 0x3c) = piVar2;
        return false;
      }
      FUN_004e8c20((void *)((int)this + 0x2c),piVar2);
      return false;
    }
    if (local_4 == (undefined4 *)0x0) {
      if ((*(int **)((int)this + 0x30) < piVar2) && (piVar2 < *(int **)((int)this + 0x34))) {
        *(int **)((int)this + 0x38) = piVar2;
        *(int **)((int)this + 0x3c) = piVar2;
      }
      else {
        FUN_004e8c20((void *)((int)this + 0x2c),piVar2);
      }
    }
    else {
      local_4[1] = *(undefined4 *)((int)pendingReferences + 4);
      *local_4 = pendingReferences;
      *(undefined4 **)((int)pendingReferences + 4) = local_4;
      *(undefined4 **)local_4[1] = local_4;
    }
  } while( true );
}

