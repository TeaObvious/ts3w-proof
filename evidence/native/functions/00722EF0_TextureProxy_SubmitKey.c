/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. ECX proxy, FOUR stack words RET10hex, AL only.
   Missing global11D4C84 ->false. Service virtual34 gets key, literalB3D7A7, &proxy+10, third
   callerword,0, callbackD4B3A0, fourthcallerword,1. Second callerword unused. If service AL false
   returnsfalse. If lowBYTE thirdword0 returns true immediately after service. Otherwise
   service+40(&slot) then nonzero/low2bits0 predicate.714/7154F0 selected calls use all zero extra
   words and ignore AL. Service may return resident resource immediately OR pending record; no
   universal async/nonblocking or GPU-ready claim. Extra word semantic names are analyst
   descriptions, not recovered API names. */

bool __thiscall
TextureProxy_SubmitKey(void *this,uint *key,uint unusedWord,uint settleWord,uint replaceWord)

{
  uint *puVar1;
  char cVar2;
  
  if (DAT_011d4c84 != (int *)0x0) {
    puVar1 = (uint *)((int)this + 0x10);
    cVar2 = (**(code **)(*DAT_011d4c84 + 0x34))
                      (key,0xb3d7a7,puVar1,settleWord,0,ResourceCallback_InvokeVirtual04,replaceWord
                       ,1);
    if (cVar2 != '\0') {
      if ((char)settleWord != '\0') {
        if (DAT_011d4c84 != (int *)0x0) {
          (**(code **)(*DAT_011d4c84 + 0x40))(puVar1);
        }
        if (*puVar1 == 0) {
          return false;
        }
        if ((*puVar1 & 3) != 0) {
          return false;
        }
      }
      return true;
    }
  }
  return false;
}

