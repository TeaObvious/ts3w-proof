/* Queues one 24-byte message record into dispatcher list +0C through 44CC20; this is not immediate
   listener delivery. ECX dispatcher plus ID, payload, ordering word, optional target listener; RET
   10h. Analyst-assigned name. */

void __thiscall
QueueMessage(void *this,undefined4 param_1,int *param_2,undefined4 param_3,int *param_4)

{
  undefined4 uStack_18;
  int *piStack_14;
  int *piStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;

  if (*(char *)((int)this + 0xb4) != '\0') {
    /* 0044CF49: When +B4 is enabled, retain nonnull payload via its virtual +4 before enqueue. A913D0 passes its pooled floor message; its table 01065F8C resolves this slot to EC1C10. */
    if (param_2 != (int *)0x0) {
      (**(code **)(*param_2 + 4))();
    }
    if (param_4 != (int *)0x0) {
      (**(code **)(*param_4 + 8))();
    }
  }
  if (*(char *)((int)this + 0xb0) != '\0') {
    FUN_004e1c00((void *)((int)this + 0x20),(uint *)&DAT_00fa2ac8);
  }
  /* 0044CF82: A913D0 supplies event 0431BFC9, payload, 0, 0. The queue record stores ID/payload/target/ordering word and two zero callback fields. Queue growth/failure is a separate child boundary. */
  uStack_c = param_3;
  uStack_18 = param_1;
  piStack_14 = param_2;
  piStack_10 = param_4;
  uStack_8 = 0;
  uStack_4 = 0;
  /* 0044CFAA: Insert into the priority-ordered queue while optional dispatcher queue lock +20 is held. Delivery requires the later pump; no receiver callback occurs in this body. */
  InsertQueuedMessageByPriority((void *)((int)this + 0xc),(int)&uStack_18);
  if (*(char *)((int)this + 0xb0) != '\0') {
    FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 0x20));
  }
  return;
}
