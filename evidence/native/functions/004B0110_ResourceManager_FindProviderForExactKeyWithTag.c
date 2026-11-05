/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX manager,
   key and out-tag pointers,RET8. Iterate8-byte provider/tag entries from+30..+34, releasing
   manager+48 lock around each provider virtual34(key,null,1,6,1,null). First success returns
   provider and stores tag; missing returnszero. DPF vtableFB3610+34 points4A97E0. Thus this path
   tests exact index presence using null stream output; it does not decode payload or invoke
   alternate7D77B0. Provider order is preserved, not inferred from filesystem sorting. */

void * __thiscall
ResourceManager_FindProviderForExactKeyWithTag(void *this,void *resourceKey,void *outProviderTag)

{
  LPCRITICAL_SECTION this_00;
  undefined4 *puVar1;
  char cVar2;
  undefined4 *puVar3;
  int *piStack_4;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x48);
  FUN_004e1c00(this_00,(uint *)&DAT_00fb3ce0);
  puVar3 = *(undefined4 **)((int)this + 0x30);
  puVar1 = *(undefined4 **)((int)this + 0x34);
  piStack_4 = (int *)0x0;
  if (puVar3 != puVar1) {
    while( true ) {
      piStack_4 = (int *)*puVar3;
      FUN_004e1cc0(this_00);
                    /* Analyst: Provider exact presence query with outStream=null,
                       access1,mode6,flags1,outRecord=null. */
      cVar2 = (**(code **)(*piStack_4 + 0x34))(resourceKey,0,1,6,1,0);
      if (cVar2 != '\0') break;
      FUN_004e1c00(this_00,(uint *)&DAT_00fb3ce0);
      puVar3 = puVar3 + 2;
      if (puVar3 == puVar1) {
        FUN_004e1cc0(this_00);
        return (void *)0x0;
      }
    }
    *(undefined4 *)outProviderTag = puVar3[1];
    FUN_004e1c00(this_00,(uint *)&DAT_00fb3ce0);
  }
  FUN_004e1cc0(this_00);
  return piStack_4;
}

