/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe_16 replaced with injection: alloca_probe */
/* WARNING: Unable to track spacebase fully for stack */
/* Analyst PC1.67 mesh-state instruction contract. thiscall owner,elements,count; count is signed
   for loop admission. Source records8bytes: u16stream,u16offset,u8type/method/usage/usageIndex.
   Copies records, constructs translated native elements through original tables
   FEA570/FEA5B4/FEA5B8, usageIndex unchanged. Per-stream stride is MAX(offset +
   sizeTableFEA5D4[type]). Appends streamFF/type11 terminator; device virtual+158
   CreateVertexDeclaration receives3stdcall slots including device. BOOL onlyAL; failure releases
   declaration and copied input/stride storage. No vertex payload decode, scale/bias construction,
   weight synthesis or guessed index rebase occurs here. Dynamic alloca gives residual stack-space
   aliases in actual C; instructions take priority. Bounds for negative counts/enum IDs not
   established. */

bool __thiscall
VertexDeclaration_CreateFromElements(void *this,NativeVertexElement8 *elements,int signedCount)

{
  void *_Dst;
  int *piVar1;
  code *pcVar2;
  size_t _Size;
  int iVar3;
  int *piVar4;
  int iVar5;
  ushort *puVar6;
  undefined1 *puVar7;
  uint uVar8;
  undefined1 *puVar9;
  
  uVar8 = 0;
  iVar3 = 0;
  if (0 < signedCount) {
    do {
      if (uVar8 < elements[iVar3].stream) {
        uVar8 = (uint)elements[iVar3].stream;
      }
      iVar3 = iVar3 + 1;
    } while (iVar3 < signedCount);
  }
  *(int *)((int)this + 0x1c) = signedCount;
  piVar4 = FUN_004e6f20(DAT_011cc864,(uVar8 + 1 + signedCount * 2) * 4,0);
  *(int **)((int)this + 0x18) = piVar4;
  if (piVar4 != (int *)0x0) {
    _Size = signedCount * 8;
    memcpy(piVar4,elements,_Size);
    _Dst = (void *)(*(int *)((int)this + 0x18) + _Size);
    *(void **)((int)this + 0x20) = _Dst;
    memset(_Dst,0,(uVar8 + 1) * 4);
    iVar3 = -(_Size + 8);
    puVar9 = &stack0xffffffec + iVar3;
    if (0 < signedCount) {
      puVar7 = &stack0xfffffff0 + iVar3;
      elements = (NativeVertexElement8 *)signedCount;
      do {
        iVar5 = *(int *)((int)this + 0x18) + (-4 - (int)(&stack0xffffffec + iVar3));
        puVar6 = (ushort *)(puVar7 + iVar5);
        *(undefined2 *)(puVar7 + -4) = *(undefined2 *)(puVar7 + iVar5);
        *(ushort *)(puVar7 + -2) = puVar6[1];
        *puVar7 = (&DAT_00fea570)[(uint)(byte)puVar6[2] * 4];
        puVar7[1] = (&DAT_00fea5b4)[(uint)*(byte *)((int)puVar6 + 5) * 4];
        puVar7[2] = (&DAT_00fea5b8)[(uint)(byte)puVar6[3] * 4];
        puVar7[3] = *(undefined1 *)((int)puVar6 + 7);
        if (*(uint *)(*(int *)((int)this + 0x20) + (uint)*puVar6 * 4) <
            (uint)(byte)(&DAT_00fea5d4)[(byte)puVar6[2]] + (uint)puVar6[1]) {
          *(uint *)(*(int *)((int)this + 0x20) + (uint)*puVar6 * 4) =
               (uint)(byte)(&DAT_00fea5d4)[(byte)puVar6[2]] + (uint)puVar6[1];
        }
        puVar7 = puVar7 + 8;
        elements = (NativeVertexElement8 *)&elements[-1].usageIndex;
      } while (elements != (NativeVertexElement8 *)0x0);
    }
    puVar7 = &stack0xffffffec + iVar3;
    *(undefined4 *)(puVar7 + _Size) = 0;
    *(undefined4 *)(puVar7 + _Size + 4) = 0;
    *(undefined2 *)(puVar7 + _Size) = 0xff;
    puVar7[_Size + 4] = 0x11;
    *(undefined4 *)(&stack0xffffffe8 + iVar3) = 0x61a827;
    iVar5 = FUN_0060e910();
    piVar1 = *(int **)(iVar5 + 0xc);
    pcVar2 = *(code **)(*piVar1 + 0x158);
    piVar4 = (int *)((int)this + 0x14);
    *(int **)(&stack0xffffffe8 + iVar3) = piVar4;
    *(undefined1 **)(&stack0xffffffe4 + iVar3) = puVar7;
    *(int **)(&stack0xffffffe0 + iVar3) = piVar1;
    *(undefined4 *)(&stack0xffffffdc + iVar3) = 0x61a83a;
    iVar5 = (*pcVar2)(*(void **)(&stack0xffffffe0 + iVar3),*(void **)(&stack0xffffffe4 + iVar3),
                      *(void **)(&stack0xffffffe8 + iVar3));
    if (-1 < iVar5) {
      *(undefined4 *)(&stack0xffffffe8 + iVar3) = 0x61a890;
      FUN_006146e0((int)this + 8);
      return true;
    }
    *(undefined4 *)(&stack0xffffffe8 + iVar3) = 0x61a846;
    FUN_00614700((int)this + 8);
    if (*piVar4 != 0) {
      *(void **)(&stack0xffffffe8 + iVar3) = this;
      *(undefined4 *)(&stack0xffffffe4 + iVar3) = 0x61a858;
      FUN_0060f620(DAT_011cfcc8,*(int *)(&stack0xffffffe8 + iVar3));
      pcVar2 = *(code **)(*(int *)*piVar4 + 8);
      *(int **)(&stack0xffffffe8 + iVar3) = (int *)*piVar4;
      puVar9 = &stack0xffffffe4 + iVar3;
      *(undefined4 *)(&stack0xffffffe4 + iVar3) = 0x61a862;
      (*pcVar2)();
      *piVar4 = 0;
    }
    if (*(int *)((int)this + 0x18) != 0) {
      *(int *)(puVar9 + -4) = *(int *)((int)this + 0x18);
      *(undefined4 *)(puVar9 + -8) = 0x61a877;
      FUN_004e5e70(DAT_011cc864,*(int *)(puVar9 + -4));
      *(undefined4 *)((int)this + 0x18) = 0;
      *(undefined4 *)((int)this + 0x20) = 0;
    }
  }
  return false;
}

