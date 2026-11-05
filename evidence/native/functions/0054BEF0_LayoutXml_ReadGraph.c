/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 0054bf1a: Every immediate graph start element must have lexical name object.
 * 0054bf59: Pass address of local UInt32 object-ID output to54BD80; do not discard this physical argument.
 * 0054bf6a: Append each successfully created object in encounter order.
 * 0054bf79: Immediate end-element is accepted even before a child object; native empty graph acceptance is separate from hosted empty-publication guard.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role LayoutXml_ReadGraph. Physical
   ABI: ECX reader; no stack words; AL success only; plain RET. Current uint return includes
   meaningless high bytes. */

bool __thiscall LayoutXml_ReadGraph(void *this)

{
  void *this_00;
  wchar_t wVar1;
  bool bVar2;
  int iVar3;
  wchar_t *pwVar4;
  void *pvVar5;
  undefined4 *puVar6;
  wchar_t *pwVar7;
  void *local_4;
  
  this_00 = (void *)((int)this + 0x98);
  local_4 = this;
  bVar2 = XmlCursor_AdvanceToken(this_00);
  if (bVar2) {
    do {
      iVar3 = FUN_00470f30((int)this_00);
      if (iVar3 == 1) {
        pwVar7 = L"object";
        pwVar4 = (wchar_t *)XmlCursor_GetRawElementName(this_00);
        do {
          wVar1 = *pwVar4;
          bVar2 = (ushort)wVar1 < (ushort)*pwVar7;
          if (wVar1 != *pwVar7) {
LAB_0054bf46:
            pvVar5 = (void *)((1 - (uint)bVar2) - (uint)(bVar2 != 0));
            goto LAB_0054bf4b;
          }
          if (wVar1 == L'\0') break;
          wVar1 = pwVar4[1];
          bVar2 = (ushort)wVar1 < (ushort)pwVar7[1];
          if (wVar1 != pwVar7[1]) goto LAB_0054bf46;
          pwVar4 = pwVar4 + 2;
          pwVar7 = pwVar7 + 2;
        } while (wVar1 != L'\0');
        pvVar5 = (void *)0x0;
LAB_0054bf4b:
        if (pvVar5 != (void *)0x0) {
          FUN_0054aa30(this,0x2fc50001);
          return false;
        }
        local_4 = pvVar5;
        puVar6 = LayoutXml_ReadObject(this,(uint *)&local_4);
        if (puVar6 == (undefined4 *)0x0) {
          return false;
        }
        FUN_00549fc0(*(void **)((int)this + 0x88),puVar6);
      }
      else {
        iVar3 = FUN_00470f30((int)this_00);
        if (iVar3 == 2) {
          return true;
        }
      }
      bVar2 = XmlCursor_AdvanceToken(this_00);
    } while (bVar2);
  }
  FUN_0054aa30(this,*(undefined4 *)((int)this + 0xa0));
  return false;
}

