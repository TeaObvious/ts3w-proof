# EventQueue and SimSaved: original managed chains and native evidence frontier

The original ScriptCore IL proves two retained managed delegate chains. Original registration and table bytes connect them to native targets. The [native word/counter follow-up](callback-word-and-reference-counts.md) supplies three complete current canonical bodies and eight qualified reference projections; the selected slot+8 target remains an unowned instruction context. This is a bounded static partial contract; native ownership, callback delivery, marshaling and runtime behavior remain open.

The [central original-resource manifest](../../evidence/managed/reference-inputs.json) identifies ScriptCore resource `073faa07-00000000-78cf6cf5304d0c4f`, including its package, resource hash, decoded assembly hash, version and MVID. The native identity is the [PC 1.67 reference](../../references/pc-167.md). All three original packages, ten resource slices and ten retained decoded assembly identities were freshly checked for this evidence. The original resource-decoding provenance is reused; no new decode or target execution is claimed. No reconstructed managed source tree was used.

The [bounded evidence index](../../evidence/managed/callback-frontier/evidence.json) supplies exact signatures, tokens, descriptor/name bytes, address/file-offset joins, a three-word table prefix and selected original instruction witnesses. Existing declarations and registrations are reused; these are downstream evidence gaps rather than newly discovered MethodDefs or registered API names. Registration-name candidates do not independently establish the runtime resolver's binding or ABI.

## Six selected original methods

There are four complete CIL method bodies and two original PInvoke declarations. C# files preserve the renderer's unresolved-reference warnings, projections and constructor artifacts. They are annotated selected-method presentations, not standalone reconstructed product source. Tokenized IL controls exact branches, operands, calls and signatures.

| ScriptCore MethodDef | Responsibility | Original IL / annotated rendering |
| --- | --- | --- |
| `060005F2` | `EventQueue..ctor` | [IL](../../evidence/managed/callback-frontier/ScriptCore.EventQueue.Constructor.il.txt) / [C#](../../evidence/managed/callback-frontier/ScriptCore.EventQueue.Constructor.cs) |
| `060005F1` | `EventQueue.OnNativeEvent` | [IL](../../evidence/managed/callback-frontier/ScriptCore.EventQueue.OnNativeEvent.il.txt) / [C#](../../evidence/managed/callback-frontier/ScriptCore.EventQueue.OnNativeEvent.cs) |
| `060005EE` | `EventQueue_CreateEventQueueImpl` declaration | [IL](../../evidence/managed/callback-frontier/ScriptCore.EventQueue.EventQueue_CreateEventQueueImpl.il.txt) / [C#](../../evidence/managed/callback-frontier/ScriptCore.EventQueue.EventQueue_CreateEventQueueImpl.cs) |
| `060000B8` | `DownloadContent..ctor` | [IL](../../evidence/managed/callback-frontier/ScriptCore.DownloadContent.Constructor.il.txt) / [C#](../../evidence/managed/callback-frontier/ScriptCore.DownloadContent.Constructor.cs) |
| `06000114` | `DownloadContent_OnSimSaved` | [IL](../../evidence/managed/callback-frontier/ScriptCore.DownloadContent.DownloadContent_OnSimSaved.il.txt) / [C#](../../evidence/managed/callback-frontier/ScriptCore.DownloadContent.DownloadContent_OnSimSaved.cs) |
| `060000B3` | `DownloadContent_SetSimSavedCallbackImpl` declaration | [IL](../../evidence/managed/callback-frontier/ScriptCore.DownloadContent.DownloadContent_SetSimSavedCallbackImpl.il.txt) / [C#](../../evidence/managed/callback-frontier/ScriptCore.DownloadContent.DownloadContent_SetSimSavedCallbackImpl.cs) |

## EventQueue delegate and native wrapper

Constructor `060005F2` takes the address of `OnNativeEvent` (`060005F1`) at IL_001E, constructs the delegate through `060005FA`, stores field `04000079`, and passes that field to `060005EE` at IL_0035. The returned uint32 constructs `EventQueueHandle` (`060005EC`). The import declares Winapi and `marshal(interface)`; it does not describe the implementation of the runtime's native callback bridge.

The registration descriptor at `011611C0` contains target `00742890` and the exact import name. Native instruction `007428C5` installs table pointer `010022D0`; adjacent instructions initialize receiver field `+4` to zero and store the incoming callback word at `+8`. The creator invokes table slot zero at `007428D6`, then passes the wrapper and word `22h` to host virtual slot `+C8h`. Host slot `+118h` was invoked earlier. These are physical dataflow edges; the host implementations, ownership transfer and eventual event delivery remain unresolved here.

Exactly twelve original bytes at file offset `00C022D0` establish this table prefix:

| Table offset | Target VA | Evidence boundary |
| --- | --- | --- |
| `+0` | `00B31790` | Current IncrementReferenceCount [ASM](../../evidence/native/bridge/callback-reference-words/00B31790_IncrementReferenceCount.asm) ([C](../../evidence/native/bridge/callback-reference-words/00B31790_IncrementReferenceCount.c)); shared non-atomic helper, not event dispatch. |
| `+4` | `00EC7190` | Current DecrementReferenceCountAndDispatchAtZero [ASM](../../evidence/native/bridge/callback-reference-words/00EC7190_DecrementReferenceCountAndDispatchAtZero.asm) ([C](../../evidence/native/bridge/callback-reference-words/00EC7190_DecrementReferenceCountAndDispatchAtZero.c)); reset1 precedes slot+8 call. |
| `+8` | `0051A720` | Retained NoFunction and no selected baseline owner; [qualified 31-byte original context](../../inventory/remaining-instruction-context-evidence.md), not a new function/C pair. |

This prefix does not establish the entire table extent. None of these slot targets is labeled an event-dispatch implementation here. The retained query at `0051A720` reports Function not found. Its independently checked context establishes a conditional selected target/RET4 relation, not a definition, complete lifetime or installed runtime table; a table word does not authorize a database definition.

Managed `OnNativeEvent` creates an event, invokes an optional permissive handler, then either invokes the main handler and returns, or enqueues the event and conditionally calls `Simulator.Wake` with false. This describes the original IL when invoked. It does not establish when, where, or how often the native host invokes it.

## SimSaved delegate, native sink and existing callback consumer

Constructor `060000B8` takes the address of `DownloadContent_OnSimSaved` (`06000114`) at IL_0018, constructs delegate `06000115`, stores field `04000008`, and passes it to `060000B3` at IL_002E. The handler checks event field `04000007`, constructs a `ResourceKey` from its uint64/uint32/uint32 arguments and invokes the subscribed delegate when non-null. Keeping the managed delegate in a field is not proof of native retention or release behavior.

The registration descriptor at `011817D0` contains target `009956F0` and the exact import name. A direct call at `00995708` reaches `009C8AD0`, whose selected original instructions load an incoming stack word and store it to global `011EA958` at `009C8AD4`. The actual saved StoreSimSavedCallbackWord [ASM](../../evidence/native/bridge/callback-reference-words/009C8AD0_StoreSimSavedCallbackWord.asm) ([C](../../evidence/native/bridge/callback-reference-words/009C8AD0_StoreSimSavedCallbackWord.c)) preserves that complete 12-byte body and opaque callbackWord formal. Its undefined/void return projection is not a proved API return-value contract.

The global has original comparison/load operands at `009CB5C4` and `009CB661`, inside the already exported `009CB0D0` (`SimStorage_WriteSimRecordAndDependencies`). The selected consumer instructions load host virtual slot `+134h`, pass count three, an argument-block address, the callback word and an output-block address, then invoke the slot at `009CB66F`. This is an original native forwarding edge. It does not settle tagged-argument decoding, callback marshaling, conversion of errors/results, lifetime or callback-side reentrancy. The existing owner should be reused when those questions are pursued; it is not a new function-body acquisition gap.

A raw scan found the writer operand and these two reader operands as literal DWORD occurrences of `011EA958` in the file-backed mapped sections. Computed addresses, aliases and runtime mutations are outside that scan's completeness claim.

## Remaining evidence

The [native follow-up](callback-word-and-reference-counts.md) closes the three specific current-body/pair gaps with 52 original bytes/18 starts, actual names/heads/variables and eight qualified current caller projections. It keeps the two frontend singletons unchanged. The selected slot+8 context has an explicit NoFunction boundary and remains outside canonical function ownership. Earlier frontier records in the managed evidence JSON remain a historical acquisition snapshot; its successor links identify the current native evidence.

Host implementations behind `+118h`, `+C8h` and `+134h`, the wrapper's event-delivery consumer, callback/string/handle ownership, replacement/release behavior, error propagation and runtime order remain open. The selected managed witnesses, three native canonical bodies and unowned context retain those separate limits; they do not close complete indirect behavior, all callers or runtime observation.
