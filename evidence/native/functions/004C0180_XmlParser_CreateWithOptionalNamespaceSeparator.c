/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 004c0184: Incoming EAX is optional allocator suite, copied before any allocation; null selects imported default allocation callbacks.
 * 004c0250: Third physical stack word selects shared context, with local default construction only when null.
 * 004c0296: Namespace mode initializes0 independently of encoding and allocation.
 * 004c0357: Second physical stack word is optional namespace separator; null uses non-namespace setup.
 * 004c035f: Only nonnull-separator branch enables namespace mode+EC and adopts the supplied UTF16 separator.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role
   XmlParser_CreateWithOptionalNamespaceSeparator. Physical ABI: CUSTOM: EAX optional
   allocator-suite pointer; stack+4 encoding,+8 optional UTF16 namespace-separator pointer,+C
   optional shared context; EAX parser/null; plain RET, caller clears C bytes. Current cdecl
   metadata omits EAX input. Limits: Shared parser internals beyond this complete owned body are not
   ported. Physical inputs are established; shared-context structural typedef is intentionally
   opaque. */

void * __cdecl
XmlParser_CreateWithOptionalNamespaceSeparator
          (void *allocatorSuite,ushort *encoding,ushort *namespaceSeparator,void *sharedContext)

{
  code *pcVar1;
  code *pcVar2;
  code *pcVar3;
  void *pvVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined **ppuVar7;
  undefined4 *puVar8;
  
  pcVar1 = malloc_exref;
  if (allocatorSuite == (void *)0x0) {
    pvVar4 = malloc(0x1f0);
    pcVar3 = free_exref;
    pcVar2 = realloc_exref;
    if (pvVar4 == (void *)0x0) {
      return (void *)0x0;
    }
    puVar8 = (undefined4 *)((int)pvVar4 + 0xc);
    *puVar8 = pcVar1;
    *(code **)((int)pvVar4 + 0x10) = pcVar2;
    *(code **)((int)pvVar4 + 0x14) = pcVar3;
  }
  else {
    pvVar4 = (void *)(**(code **)allocatorSuite)();
    if (pvVar4 == (void *)0x0) {
      return (void *)0x0;
    }
    puVar8 = (undefined4 *)((int)pvVar4 + 0xc);
    *puVar8 = *(undefined4 *)allocatorSuite;
    *(undefined4 *)((int)pvVar4 + 0x10) = *(undefined4 *)((int)allocatorSuite + 4);
    *(undefined4 *)((int)pvVar4 + 0x14) = *(undefined4 *)((int)allocatorSuite + 8);
  }
  pcVar1 = (code *)*puVar8;
  *(undefined4 *)((int)pvVar4 + 8) = 0;
  *(undefined4 *)((int)pvVar4 + 0x20) = 0;
  *(undefined4 *)((int)pvVar4 + 0x17c) = 0x10;
  iVar5 = (*pcVar1)(0x100);
  *(int *)((int)pvVar4 + 0x188) = iVar5;
  if (iVar5 == 0) {
    (**(code **)((int)pvVar4 + 0x14))(pvVar4);
    return (void *)0x0;
  }
  iVar5 = (*(code *)*puVar8)(0x800);
  *(int *)((int)pvVar4 + 0x2c) = iVar5;
  if (iVar5 == 0) {
    (**(code **)((int)pvVar4 + 0x14))(*(undefined4 *)((int)pvVar4 + 0x188));
    (**(code **)((int)pvVar4 + 0x14))(pvVar4);
    return (void *)0x0;
  }
  *(int *)((int)pvVar4 + 0x30) = iVar5 + 0x800;
  if (sharedContext == (void *)0x0) {
    puVar6 = FUN_004bb3f0();
    *(undefined4 **)((int)pvVar4 + 0x164) = puVar6;
    if (puVar6 == (undefined4 *)0x0) {
      (**(code **)((int)pvVar4 + 0x14))(*(undefined4 *)((int)pvVar4 + 0x2c));
      (**(code **)((int)pvVar4 + 0x14))(*(undefined4 *)((int)pvVar4 + 0x188));
      (**(code **)((int)pvVar4 + 0x14))(pvVar4);
      return (void *)0x0;
    }
  }
  else {
    *(void **)((int)pvVar4 + 0x164) = sharedContext;
  }
  *(undefined4 *)((int)pvVar4 + 0x178) = 0;
  *(undefined4 *)((int)pvVar4 + 0x170) = 0;
  *(undefined4 *)((int)pvVar4 + 0x130) = 0;
  *(undefined4 *)((int)pvVar4 + 0x1d4) = 0;
  *(undefined4 *)((int)pvVar4 + 0x1d0) = 0;
  *(undefined4 *)((int)pvVar4 + 0x7c) = 0;
  *(undefined4 *)((int)pvVar4 + 0xf8) = 0;
  *(undefined2 *)((int)pvVar4 + 0x1d8) = 0x21;
  *(undefined1 *)((int)pvVar4 + 0xec) = 0;
  *(undefined1 *)((int)pvVar4 + 0xed) = 0;
  *(undefined4 *)((int)pvVar4 + 0x18c) = 0;
  *(undefined4 *)((int)pvVar4 + 400) = 0;
  *(undefined1 *)((int)pvVar4 + 0x194) = 0;
  *(undefined4 **)((int)pvVar4 + 0x1b4) = puVar8;
  *(undefined4 *)((int)pvVar4 + 0x1a0) = 0;
  *(undefined4 *)((int)pvVar4 + 0x1a4) = 0;
  *(undefined4 *)((int)pvVar4 + 0x1b0) = 0;
  *(undefined4 *)((int)pvVar4 + 0x1ac) = 0;
  *(undefined4 *)((int)pvVar4 + 0x1a8) = 0;
  *(undefined4 **)((int)pvVar4 + 0x1cc) = puVar8;
  *(undefined4 *)((int)pvVar4 + 0x1b8) = 0;
  *(undefined4 *)((int)pvVar4 + 0x1bc) = 0;
  *(undefined4 *)((int)pvVar4 + 0x1c8) = 0;
  *(undefined4 *)((int)pvVar4 + 0x1c4) = 0;
  *(undefined4 *)((int)pvVar4 + 0x1c0) = 0;
  FUN_004c0000();
  if ((encoding != (ushort *)0x0) && (*(int *)((int)pvVar4 + 0xe8) == 0)) {
    FUN_004bb890((int)pvVar4);
    return (void *)0x0;
  }
  if (namespaceSeparator == (ushort *)0x0) {
    ppuVar7 = FUN_004cc570();
    *(undefined ***)((int)pvVar4 + 0xe4) = ppuVar7;
    return pvVar4;
  }
  *(undefined1 *)((int)pvVar4 + 0xec) = 1;
  ppuVar7 = FUN_004cc700();
  *(undefined ***)((int)pvVar4 + 0xe4) = ppuVar7;
  *(ushort *)((int)pvVar4 + 0x1d8) = *namespaceSeparator;
  return pvVar4;
}

