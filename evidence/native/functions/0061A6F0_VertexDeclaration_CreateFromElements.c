/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  int iVar9;
  undefined1 *puVar10;
  int aiStackY_22c [128];
  undefined2 uStack_6;
  
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
    if (0 < signedCount) {
      puVar7 = (undefined1 *)((int)aiStackY_22c + iVar3 + 0x21c);
      elements = (NativeVertexElement8 *)signedCount;
      do {
        iVar5 = *(int *)((int)this + 0x18) + (-4 - ((int)aiStackY_22c + iVar3 + 0x218));
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
    iVar9 = (int)aiStackY_22c + iVar3 + 0x218;
    *(undefined4 *)(_Size + iVar9) = 0;
    *(undefined4 *)(_Size + 4 + iVar9) = 0;
    *(undefined2 *)(_Size + iVar9) = 0xff;
    *(undefined1 *)(_Size + 4 + iVar9) = 0x11;
    *(undefined4 *)((int)aiStackY_22c + iVar3 + 0x214) = 0x61a827;
    iVar5 = Graphics_GetManagerSingleton();
    piVar1 = *(int **)(iVar5 + 0xc);
    pcVar2 = *(code **)(*piVar1 + 0x158);
    piVar4 = (int *)((int)this + 0x14);
    *(int **)((int)aiStackY_22c + iVar3 + 0x214) = piVar4;
    *(int *)((int)aiStackY_22c + iVar3 + 0x210) = iVar9;
    *(int **)((int)aiStackY_22c + iVar3 + 0x20c) = piVar1;
    *(undefined4 *)((int)aiStackY_22c + iVar3 + 0x208) = 0x61a83a;
    iVar5 = (*pcVar2)(*(void **)((int)aiStackY_22c + iVar3 + 0x20c),
                      *(void **)((int)aiStackY_22c + iVar3 + 0x210),
                      *(void **)((int)aiStackY_22c + iVar3 + 0x214));
    if (-1 < iVar5) {
      *(undefined4 *)((int)aiStackY_22c + iVar3 + 0x214) = 0x61a890;
      FUN_006146e0((int)this + 8);
      return true;
    }
    *(undefined4 *)((int)aiStackY_22c + iVar3 + 0x214) = 0x61a846;
    FUN_00614700((int)this + 8);
    puVar10 = (undefined1 *)((int)aiStackY_22c + iVar3 + 0x218);
    if (*piVar4 != 0) {
      *(void **)((int)aiStackY_22c + iVar3 + 0x214) = this;
      *(undefined4 *)((int)aiStackY_22c + iVar3 + 0x210) = 0x61a858;
      FUN_0060f620(DAT_011cfcc8,*(int *)((int)aiStackY_22c + iVar3 + 0x214));
      pcVar2 = *(code **)(*(int *)*piVar4 + 8);
      *(int **)((int)aiStackY_22c + iVar3 + 0x214) = (int *)*piVar4;
      puVar10 = (undefined1 *)((int)aiStackY_22c + iVar3 + 0x210);
      *(undefined4 *)((int)aiStackY_22c + iVar3 + 0x210) = 0x61a862;
      (*pcVar2)();
      *piVar4 = 0;
    }
    if (*(int *)((int)this + 0x18) != 0) {
      *(int *)(puVar10 + -4) = *(int *)((int)this + 0x18);
      *(undefined4 *)(puVar10 + -8) = 0x61a877;
      FUN_004e5e70(DAT_011cc864,*(int *)(puVar10 + -4));
      *(undefined4 *)((int)this + 0x18) = 0;
      *(undefined4 *)((int)this + 0x20) = 0;
    }
  }
  return false;
}

