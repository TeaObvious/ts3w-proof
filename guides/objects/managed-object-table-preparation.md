# Original managed object-table preparation

## Scope

These are complete selected PC1.67 ScriptCore method bodies. The
[central original identity](../../evidence/managed/README.md#matching-original-assembly-identities)
applies. The [member index](../../evidence/managed/selected/object-table-preparation/method-index.tsv)
retains15 new bodies/4629CIL bytes. Existing
[Item and BindLoadedObject](managed-loaded-proxy-binding.md) are reused, not
exported again. C# is actual annotated ILSpy11.1 selected output; accessor fragments
and constructor base..ctor() rendering remain as emitted. CIL controls types,
branches, constants, signedness and exception regions. All selected instruction
offsets/opcodes and direct branches match independent raw decoding; three switch
tables have53 matching signed-relative target entries. No original code was run.

## Begin, table production and preparation passes

[LoadSaveManager CIL](../../evidence/managed/selected/object-table-preparation/LoadSaveManager.il.txt)
([annotated actual C#](../../evidence/managed/types/ScriptCore.LoadSaveManager.cs))
retains BeginLoadObjects06000209. It constructs NativePersistReader and
PersistReader, then synchronously invokes Load(reader,null) inside a stream
using/finally before retrieving task-state objects. This is table reconstruction,
not original ScriptProxy target Init.

[PersistReader CIL](../../evidence/managed/selected/object-table-preparation/PersistReader.il.txt)
([annotated actual C#](../../evidence/managed/types/ScriptCore.PersistReader.Preparation.cs))
retains Load06000D24, Count/set_Item, ReadObjectTable06000D2D, ReadObjects06000D2F,
indexed/typed LoadObject06000D30/31 and constructor06000D34. Original ObjectLoadMode
has signed Int32 storage: Precreate0,Reference1,Create2,Skip3.

Load rejects version>=1536; version>=512 requires signature1397375567. Signed
class/object counts control tables. Page count is unchecked(count+256-1) signed
shift8; every allocated object page has256slots. Positive Count stores the
supplied base object in slot0. Version>=512 uses class/object stream offsets,
and>=1280 adds the resource-key-table offset. Old versions read class then
object offsets sequentially. ReadObjectTable allocates256-entry Int32 pages,
reads min256/remaining signed offsets and leaves unused tails at default0.
Negative/overflow domains are not explicitly admitted by those instructions.

ReadObjects traverses Count-1 through0 in TWO complete descending passes:
Precreate then Create. EACH indexed call catches Exception independently. The
selected bodies contain no class-name rejection-set update; this is a bounded
negative finding, not proof that no original failure cache exists elsewhere.

## Actual table-slot lifetime and failure

Indexed LoadObject returns an existing nonnull target outside Create mode and
returns the current slot for negative storedoffset. Otherwise it saves stream
position, seeks the object offset, maps Reference to Precreate, and stores
the offset sentinel -1 for nonPrecreate BEFORE typed decode. Typed decode receives
a ref to the actual table slot. Only normal return restores streamposition;
there is no finally/atomic rollback. A failure can retain partial object state,
changed offset and changed streamposition even though outer per-object catches
continue. A nonnull target alone does not prove all fields/hooks completed.

## Constructor and formatter producers

[PersistedClass CIL](../../evidence/managed/selected/object-table-preparation/PersistedClass.il.txt)
([annotated actual C#](../../evidence/managed/types/ScriptCore.PersistedClass.Preparation.cs))
retains Read06000CD6 and its IPersistable Precreate/Read callbacks06000CDD/0CDE.
The table's ReadClassTable runs each class Read before storing that class entry.
Actual parameterless constructor lookup uses binding flags52 and EmptyTypes,
but type resolution/classification, PersistableAttribute, IPersistable, explicit
formatters, abstractness and BCL/delegate policy govern admission separately.
These real methods remain the managed owner; native helpers/custom formatters
are distinct callees in the [call index](../../evidence/managed/selected/object-table-preparation/call-edges.tsv).

Typed LoadObject's ObjectInst path first uses custom Precreate/Read when supplied.
Ordinary construction runs only for null target, no custom formatter and admitted
persistability. Typeflag4 creates typedArray1/GetValue0; otherwise a nonnull
selectedctor invokes Invoke(null). This ordinary block catches construction
Exceptions locally. Precreate then returns before fields. Original fast fields,
ordinary fields/load-field methods and group registration are separate operations.

The original IPersistable Precreate uses retained type/flags; bit4 selects the
array value, otherwise it DIRECTLY invokes retainedctor with no null guard or
local catch. Its Read dispatches to original IPersistable.Read only fornonnullobj.
Arbitrary other formatter bodies and every native serializer are not expanded.
The full typed dispatch is retained, including primitive/reference/array/enum/
protected/external/method/resource-key branches; this guide does not claim to
specify all called compression, reflection, coercion or native formats.

## Completion is a separate stage

EndLoadObjects06000216 invokes ExecutePostLoads06000D25 BEFORE task/reader disposal
and field clearing. The completion body has no encompassing finally. The reader
captures the rename-enabled flag once and visits captured outer/page arrays in
ascending order, including all allocated page slots. IPersistPostLoad then
eligible IRenamePostLoad each have separate local Exception handlers. Reference
arrays are retained, not deep copied; callbacks remain shared-state dependencies.
There is no reference deduplication: the same object occupying two slots receives
two sets of eligible callbacks. RenamePostLoad is still attempted after a caught
PersistPostLoad failure. Outer/page references are captured but slot contents are
read at each iteration; this is not a deep snapshot or callback transaction.
These are persistence callbacks, distinct from ScriptProxy.PostLoad/GameObject.Init.

## Limits

The [field-access lookup](../../evidence/managed/selected/object-table-preparation/field-access.tsv)
is selected local writer/reader evidence, not a whole-runtime ownership census.
Native caller scheduling, exact stream/native failure behavior, table writers,
all custom formatter/hook bodies, runtime static-constructor caching, prepared
assembly transforms and successful complete world loading remain separate.
No missing-staging performance issue follows from these original methods alone;
current caller comparison must first establish whether the service already runs.
