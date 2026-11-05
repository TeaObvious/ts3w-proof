/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. PC1.67 static instruction review. ECX wall renderer. Posts04A06E68 message
   of0x18 bytes through message service vtable+1C: lot GUID+8/+C, six signed locator bytes+10..15,
   raw state lowbytes+16/+17. Allocation-null branch decompiles to later dereference; no graceful
   allocation-failure guarantee. Dispatch transport ownership is outside this review. */

void __thiscall
WallRender_PostEndpointVisibility(void *this,char *wallLocator6,byte firstUp,byte secondUp)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  
  piVar2 = (int *)FUN_007693a0();
  if (piVar2 != (int *)0x0) {
    puVar3 = FloorMessagePool_AcquireStorage();
    if (puVar3 == (undefined4 *)0x0) {
      puVar3 = (undefined4 *)0x0;
    }
    else {
      *puVar3 = &PTR_DestroyPooledFloorMessage_01065f8c;
      LOCK();
      puVar3[1] = 0;
      UNLOCK();
      *puVar3 = &PTR_DestroyPooledFloorMessage_01065f8c;
      *(undefined1 *)(puVar3 + 4) = 0xff;
      *(undefined1 *)((int)puVar3 + 0x11) = 0xff;
      *(undefined1 *)((int)puVar3 + 0x12) = 0;
      *(undefined1 *)((int)puVar3 + 0x13) = 0xff;
      *(undefined1 *)(puVar3 + 5) = 0xff;
      *(undefined1 *)((int)puVar3 + 0x15) = 0;
    }
    iVar1 = *(int *)((int)this + 4);
    puVar3[2] = *(undefined4 *)(iVar1 + 0x10);
    puVar3[3] = *(undefined4 *)(iVar1 + 0x14);
    puVar3[4] = *(undefined4 *)wallLocator6;
    *(undefined2 *)(puVar3 + 5) = *(undefined2 *)(wallLocator6 + 4);
    *(byte *)((int)puVar3 + 0x17) = secondUp;
    *(byte *)((int)puVar3 + 0x16) = firstUp;
    (**(code **)(*piVar2 + 0x1c))(0x4a06e68,puVar3,0,0);
  }
  return;
}

