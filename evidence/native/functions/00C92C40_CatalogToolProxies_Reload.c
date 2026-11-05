/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXcatalog no stack input/plainRET void. Clears retained pairs at188; enumerates resource
   type04AC5D93; each successfully loaded exact resource queries interface04AC5D9E, reads DWORD tool
   ID at88, obtains map slot then replaces old retained product (addref new before release old).
   Thus duplicate tool IDs are LAST successfully loaded entry wins in actual resource enumeration
   order. Failed loads/interfaces are skipped, each temporary resource released. Physical virtual20
   enumeration uses ECX manager+3 stackwords; virtual0C load uses ECX manager+6 stackwords and AL
   status; virtual0C product query consumes oneword. Saved local callsite overrides prevent bogus
   unreachable replacement blocks. */

void __thiscall CatalogToolProxies_Reload(void *this)

{
  int *this_00;
  bool bVar1;
  int *this_01;
  int iVar2;
  int *this_02;
  undefined4 *puVar3;
  void *this_03;
  int *piStack_2c;
  int iStack_28;
  int iStack_24;
  void *local_20;
  uint uStack_1c;
  undefined **local_18;
  undefined4 local_14;
  void *local_10;
  int local_c;
  undefined4 local_8;
  char *local_4;
  
  this_03 = (void *)((int)this + 0x188);
  local_20 = this_03;
  CatalogProductMap_ClearRetainedPairs(this_03);
  this_01 = (int *)FUN_004afe80();
  local_18 = &PTR_LAB_00fd92b0;
  local_14 = 0x4ac5d93;
  local_10 = (void *)0x0;
  local_c = 0;
  local_8 = 0;
  local_4 = "Lot/CTCatalog/UserToolProxyProductKeyList";
  (**(code **)(*this_01 + 0x20))((undefined *)this_01,(uint)&local_10,(uint)&local_18,0);
  FUN_004afe30((int *)&local_10);
  iVar2 = local_c - (int)local_10 >> 4;
  if (iVar2 != 0) {
    iStack_28 = 0;
    iStack_24 = iVar2;
    do {
      piStack_2c = (int *)0x0;
      bVar1 = (**(code **)(*this_01 + 0xc))
                        ((undefined *)this_01,iStack_28 + (int)local_10,(uint)&piStack_2c,0,0,0,0);
      if (bVar1) {
        if (piStack_2c != (int *)0x0) {
          this_02 = (int *)(**(code **)(*piStack_2c + 0xc))((undefined *)piStack_2c,0x4ac5d9e);
          if (this_02 != (int *)0x0) {
            uStack_1c = this_02[0x22];
            puVar3 = (undefined4 *)CatalogProductMap_GetOrInsertSlot(this_03,&uStack_1c);
            this_00 = (int *)*puVar3;
            if (this_02 != this_00) {
              (**(code **)*this_02)((undefined *)this_02);
              *puVar3 = this_02;
              if (this_00 != (int *)0x0) {
                (**(code **)(*this_00 + 4))((undefined *)this_00);
              }
            }
          }
          goto LAB_00c92d3c;
        }
      }
      else {
LAB_00c92d3c:
        if (piStack_2c != (int *)0x0) {
          (**(code **)(*piStack_2c + 4))((undefined *)piStack_2c);
        }
      }
      iStack_28 = iStack_28 + 0x10;
      iStack_24 = iStack_24 + -1;
      this_03 = local_20;
    } while (iStack_24 != 0);
    iStack_24 = 0;
  }
  if (local_10 != (void *)0x0) {
    Memory_FreeIfNonNull(local_10);
  }
  return;
}

