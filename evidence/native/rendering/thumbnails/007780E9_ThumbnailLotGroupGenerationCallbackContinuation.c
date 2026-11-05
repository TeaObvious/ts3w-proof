/* Actual Ghidra decompilation for DB entry 007780E9.
   Owned body inclusive: 007780E9..0077820F.
   Branch continuation with inherited frontend stack and EDI; inferred
   standalone parameters/calling convention are not an independent ABI.
   EOL comments are reinserted from verified DB comment readbacks at matching
   decompiled operations: the C tool transports function comments but omits EOLs.
   Reference and contract: ../../../../guides/rendering/thumbnail-generation-callbacks.md
*/

/* Analyst-assigned continuation role; static PC 1.67. Conditional branch 007780B3 from registered
   frontend 007780A0 enters with prebuilt frontend stack and live EDI manager (captured from
   011EEC30). This is not an independently callable API: inferred standalone C parameters/calling
   convention are artifacts. 00769390 supplies scripting interface; slot +118 returns the two-word
   EDX:EAX token. With nonnull manager allocate 0x38 notifier, construct 00777C70(token,delegate),
   optionally call notifier +4, and forward nullable notifier to 00D613C0; only AL at 0077816F
   controls the branch. Nonzero AL: host +120(token,-1,delegate,0), then +11C, then optional
   notifier +8. Zero AL: optional notifier +8 then immediate host +130(delegate,token,temporary,0).
   Missing manager skips allocation/request and reaches the same immediate callback. Temporary has
   vtable 00FBA6F4, UInt16 fields 0/1 and zero payload byte; actual stack-byte mask 0x04 gates
   004F5760 cleanup (unaff_EBX in decompiled C is not the physical flag source). Host
   token/scheduler/thread contract and notifier retain/release/final callback lifetime are not
   established here. Shared epilogue is also reached directly by the null-callback/null-manager
   frontend path. Original bytes and function boundaries unchanged. */

void __cdecl
ThumbnailLotGroupGenerationCallbackContinuation
          (void *param_1,undefined **param_2,undefined4 param_3,undefined2 param_4,
          undefined4 param_5,undefined1 param_6)

{
  int *piVar1;
  void *this;
  int *piVar2;
  uint uVar3;
  uint unaff_EBX;
  int unaff_EDI;
  undefined8 uVar4;
  undefined2 uStack00000012;
  undefined4 in_stack_0000002c;
  undefined4 in_stack_00000030;
  undefined4 in_stack_00000034;
  undefined4 in_stack_00000038;
  uint in_stack_0000003c;
  undefined4 in_stack_00000040;
  undefined4 in_stack_00000044;
  undefined1 auStackY_a8 [128];

  /* DB EOL 007780E9: Branch continuation from 007780A0: inherits its existing stack and EDI manager; standalone decompiler arguments are artifacts. */
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar4 = (**(code **)(*piVar1 + 0x118))();
  /* DB EOL 00778105: Captured manager absent: skip allocation/request and issue immediate host +130 callback below. */
  if (unaff_EDI != 0) {
    this = (void *)FUN_004e4500(0x38,"Scripting/ScriptThumbnailNotifier",0);
    if (this == (void *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = FUN_00777c70(this,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),in_stack_00000044);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
    }
    uVar3 = FUN_00d613c0(param_1,in_stack_0000002c,in_stack_00000030,in_stack_00000034,
                         in_stack_00000038,in_stack_0000003c,in_stack_00000040,piVar2);
    /* DB EOL 0077816F: Only AL selects admission branch; zero reaches immediate callback, nonzero reaches host +120 then +11C. No image-completion proof. */
    if ((char)uVar3 != '\0') {
      /* DB EOL 00778188: Host +120(token low/high, -1, delegate, 0), only after nonzero request AL; host scheduling semantics unresolved. */
      (**(code **)(*piVar1 + 0x120))(uVar4,0xffffffff,in_stack_00000044,0);
      /* DB EOL 00778194: Host +11C follows +120 before optional notifier +8; ownership/thread semantics require host proof. */
      (**(code **)(*piVar1 + 0x11c))();
      if (piVar2 == (int *)0x0) {
        return;
      }
      (**(code **)(*piVar2 + 8))();
      return;
    }
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 8))();
    }
  }
  param_2 = &PTR_FUN_00fba6f4;
  param_6 = 0;
  /* DB EOL 007781D6: First UInt16 temporary store: higher-address word = 1; separate zero payload byte was stored earlier. */
  uStack00000012 = 1;
  /* DB EOL 007781DD: Second UInt16 temporary store: lower-address word = 0 (physical order is 1 then 0). Variant semantics remain qualified. */
  param_4 = 0;
  /* DB EOL 007781F0: Immediate host +130(delegate, token low/high, typed zero temporary, 0), reached on absent manager or zero request AL. */
  (**(code **)(*piVar1 + 0x130))(in_stack_00000044,uVar4,&param_2,0);
  /* DB EOL 007781F2: Physical source is temporary stack flag BYTE & 0x04; conditionally call 4F5760 cleanup. Decompiler unaff_EBX is not the source. */
  if ((unaff_EBX & 4) != 0) {
    FUN_004f5760(auStackY_a8 + 0x9c,'\0');
  }
  return;
}
