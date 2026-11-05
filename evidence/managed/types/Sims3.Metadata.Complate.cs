/* Actual ILSpy 11.1.0 rendering of pristine PC1.67 Sims3Metadata.
 * Assembly identity: ../README.md. Analyst comments mark the selected complete
 * original CIL bodies in ../complate.il.txt. Unannotated members are retained
 * type context; their full contracts and native consumers are not implied.
 * Decompiler local names and C# syntax are not original source symbols.
 */
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;

namespace Sims3.Metadata;

public class Complate : ICloneable, IEquatable<Complate>
{
	public class Variable : ICloneable, IEquatable<Variable>
	{
		public class Types
		{
			public static readonly string String = "string";

			public static readonly string Color = "color";

			public static readonly string Texture = "texture";

			public static readonly string Float = "float";

			public static readonly string Pattern = "pattern";

			public static readonly string Vector2 = "vec2";

			public static readonly string Bool = "bool";
		}

		private Dictionary<string, string> mDetails = new Dictionary<string, string>();

		public string this[string index]
		{
			get
			{
				if (mDetails.TryGetValue(index, out var value))
				{
					return value;
				}
				return string.Empty;
			}
			set
			{
				mDetails[index] = value;
			}
		}

		public string[] Details
		{
			get
			{
				string[] array = new string[mDetails.Keys.Count];
				mDetails.Keys.CopyTo(array, 0);
				return array;
			}
		}

		public string Name => this[kNameAttribute];

		public string Value
		{
			get
			{
				if (mDetails.TryGetValue(kCurrentValueAttribute, out var value))
				{
					return value;
				}
				if (mDetails.TryGetValue(kDefaultAttribute, out value))
				{
					return value;
				}
				return string.Empty;
			}
			set
			{
				mDetails[kCurrentValueAttribute] = value;
			}
		}

		public string Type
		{
			get
			{
				if (mDetails.TryGetValue(kTypeAttribute, out var value))
				{
					return value;
				}
				return string.Empty;
			}
		}

		public bool IsDefaultValue
		{
			get
			{
				if (mDetails.TryGetValue(kCurrentValueAttribute, out var value))
				{
					if (value.Equals(this[kDefaultAttribute]))
					{
						return true;
					}
					return false;
				}
				return true;
			}
		}

		public bool IsReadOnly
		{
			get
			{
				if (mDetails.TryGetValue(kReadOnlyAttribute, out var value))
				{
					return bool.Parse(value);
				}
				return false;
			}
		}

		public bool IsVisible
		{
			get
			{
				if (mDetails.TryGetValue(kUIVisibleAttribute, out var value))
				{
					return bool.Parse(value);
				}
				return true;
			}
		}

		public string Editor => this[kUIEditorAttribute];

		public string Category => this[kUICategoryAttribute];

		public string Description => this[kUIDescriptionAttribute];

		public string MinValue => this[kMinValueAttribute];

		public string MaxValue => this[kMaxValueAttribute];

		public bool HasDetail(string name)
		{
			return mDetails.ContainsKey(name);
		}

		public void Reset()
		{
			mDetails.Remove(kCurrentValueAttribute);
		}

		public object Clone()
		{
			Variable variable = new Variable();
			variable.mDetails = new Dictionary<string, string>(mDetails);
			return variable;
		}

		public bool Equals(Variable other)
		{
			if (other == null || other.mDetails.Count != mDetails.Count)
			{
				return false;
			}
			foreach (KeyValuePair<string, string> mDetail in mDetails)
			{
				if (!other.mDetails.TryGetValue(mDetail.Key, out var value) || value != mDetail.Value)
				{
					return false;
				}
			}
			return true;
		}
	}

	public class TextureStep : ICloneable
	{
		private static Hashtable sTypeTable;

		private Hashtable mDetails = new Hashtable();

		public string this[string index]
		{
			get
			{
				string text = mDetails[index] as string;
				if (text == null)
				{
					text = string.Empty;
				}
				return text;
			}
			set
			{
				mDetails[index] = value;
			}
		}

		static TextureStep()
		{
			sTypeTable = new Hashtable();
			sTypeTable["SetTarget"] = typeof(TextureStepSetTarget);
			sTypeTable["ColorFill"] = typeof(TextureStepColorFill);
			sTypeTable["CASPickData"] = typeof(TextureStepCASPickData);
			sTypeTable["DrawImage"] = typeof(TextureStepDrawImage);
			sTypeTable["ChannelSelect"] = typeof(TextureStepChannelSelect);
			sTypeTable["HSVShift"] = typeof(TextureStepHSVShift);
			sTypeTable["SkinTone"] = typeof(TextureStepSkinTone);
			sTypeTable["HairTone"] = typeof(TextureStepHairTone);
			sTypeTable["DrawFabric"] = typeof(TextureStepDrawFabric);
			sTypeTable["RemappedChannelSelect"] = typeof(TextureStepRemappedChannelSelect);
		}

		// Analyst original MethodDef 06000361: Expands a snapshot of step detail keys through the parent original ProcessString.
		public void Process(Complate parent)
		{
			ArrayList arrayList = new ArrayList(mDetails.Keys);
			foreach (string item in arrayList)
			{
				string source = this[item];
				source = parent.ProcessString(source);
				this[item] = source;
			}
		}

		// Analyst original MethodDef 06000362: Empty enabled text admits; nonempty must parse Boolean true. Unknown types return null; constructor/interface failure throws; Init owns per-step preparation.
		public ITextureStep CreateTextureStep(uint groupId)
		{
			string text = this[kEnabledAttribute];
			if (text != string.Empty)
			{
				bool result = false;
				if (!bool.TryParse(text, out result) || !result)
				{
					return null;
				}
			}
			if (!(sTypeTable[this[kTypeAttribute]] is Type type))
			{
				return null;
			}
			if (!(Activator.CreateInstance(type) is ITextureStep textureStep))
			{
				throw new Exception("TextureStep " + this[kTypeAttribute] + " failed to construct.");
			}
			textureStep.Init(this, groupId);
			return textureStep;
		}

		public object Clone()
		{
			TextureStep textureStep = new TextureStep();
			textureStep.mDetails = (Hashtable)mDetails.Clone();
			return textureStep;
		}

		public bool HasDetail(string name)
		{
			return mDetails.ContainsKey(name);
		}
	}

	public class TextureDestination : ICloneable
	{
		private Hashtable mDetails = new Hashtable();

		private ArrayList mSteps = new ArrayList();

		public string this[string index]
		{
			get
			{
				string text = mDetails[index] as string;
				if (text == null)
				{
					text = string.Empty;
				}
				return text;
			}
			set
			{
				mDetails[index] = value;
			}
		}

		public TextureStep[] Steps
		{
			get
			{
				return (TextureStep[])mSteps.ToArray(typeof(TextureStep));
			}
			set
			{
				mSteps.Clear();
				mSteps.AddRange(value);
			}
		}

		public override string ToString()
		{
			if (mDetails[kTextureNameAttribute] is string text)
			{
				return "(C)" + text;
			}
			return base.ToString();
		}

		// Analyst original MethodDef 0600036b: Expands destination details and invokes child steps through the same parent.
		public void Process(Complate parent)
		{
			ArrayList arrayList = new ArrayList(mDetails.Keys);
			foreach (string item in arrayList)
			{
				string source = this[item];
				source = parent.ProcessString(source);
				this[item] = source;
			}
			foreach (TextureStep mStep in mSteps)
			{
				mStep.Process(parent);
			}
		}

		public object Clone()
		{
			TextureDestination textureDestination = new TextureDestination();
			textureDestination.mDetails = (Hashtable)mDetails.Clone();
			textureDestination.mSteps = (ArrayList)mSteps.Clone();
			int i = 0;
			for (int count = textureDestination.mSteps.Count; i < count; i++)
			{
				textureDestination.mSteps[i] = ((ICloneable)textureDestination.mSteps[i]).Clone();
			}
			return textureDestination;
		}

		public bool HasDetail(string name)
		{
			return mDetails.ContainsKey(name);
		}
	}

	public class TexturePart : ICloneable
	{
		private Hashtable mDetails = new Hashtable();

		private ArrayList mDestinations = new ArrayList();

		public string this[string index]
		{
			get
			{
				string text = mDetails[index] as string;
				if (text == null)
				{
					text = string.Empty;
				}
				return text;
			}
			set
			{
				mDetails[index] = value;
			}
		}

		public TextureDestination[] Destinations
		{
			get
			{
				return (TextureDestination[])mDestinations.ToArray(typeof(TextureDestination));
			}
			set
			{
				mDestinations.Clear();
				mDestinations.AddRange(value);
			}
		}

		// Analyst original MethodDef 06000373: Expands part details and invokes child destinations through the same parent.
		public void Process(Complate parent)
		{
			ArrayList arrayList = new ArrayList(mDetails.Keys);
			foreach (string item in arrayList)
			{
				string source = this[item];
				source = parent.ProcessString(source);
				this[item] = source;
			}
			foreach (TextureDestination mDestination in mDestinations)
			{
				mDestination.Process(parent);
			}
		}

		public object Clone()
		{
			TexturePart texturePart = new TexturePart();
			texturePart.mDetails = (Hashtable)mDetails.Clone();
			texturePart.mDestinations = (ArrayList)mDestinations.Clone();
			int i = 0;
			for (int count = texturePart.mDestinations.Count; i < count; i++)
			{
				texturePart.mDestinations[i] = ((ICloneable)texturePart.mDestinations[i]).Clone();
			}
			return texturePart;
		}

		public bool HasDetail(string name)
		{
			return mDetails.ContainsKey(name);
		}
	}

	public static string kAssetRoot = "X:";

	public static readonly string kTypeConverterAttribute = "typeConverter";

	public static readonly string kNameAttribute = "name";

	public static readonly string kNameHashAttribute = "namehash";

	public static readonly string kNodeVariables = "variables";

	public static readonly string kNodeTexturePart = "texturePart";

	public static readonly string kNodeParam = "param";

	public static readonly string kNodeDestination = "destination";

	public static readonly string kNodeStep = "step";

	public static readonly string kDefaultAttribute = "default";

	public static readonly string kCurrentValueAttribute = "currentValue";

	public static readonly string kReadOnlyAttribute = "readOnly";

	public static readonly string kTypeAttribute = "type";

	public static readonly string kUIVisibleAttribute = "uiVisible";

	public static readonly string kUIEditorAttribute = "uiEditor";

	public static readonly string kUICategoryAttribute = "uiCategory";

	public static readonly string kUIDescriptionAttribute = "uiDescription";

	public static readonly string kPartAttribute = "part";

	public static readonly string kTextureNameAttribute = "textureName";

	public static readonly string kGameEditorAttribute = "gameEditor";

	public static readonly string kPatternSizeAttribute = "patternSize";

	public static readonly string kLinkedAttribute = "linked";

	public static readonly string kEnabledAttribute = "enabled";

	public static readonly string kResourceKeyAttribute = "reskey";

	public static readonly string kCategoryAttribute = "category";

	public static readonly string kSoundMaterialAttribute = "surfaceMaterial";

	public static readonly string kFilenameAttribute = "filename";

	public static readonly string kMinValueAttribute = "minValue";

	public static readonly string kMaxValueAttribute = "maxValue";

	public static readonly string kReverseMap = "reverseMap";

	public static readonly string kFallbackPattern = "solidColor_1.xml";

	public static readonly string kFallbackPatternKey = "key:0333406C:00000000:71D5EFB6C391BC17";

	private static Dictionary<ResourceKey, Complate> sComplateCache = new Dictionary<ResourceKey, Complate>();

	private List<Variable> mVariables = new List<Variable>();

	private Dictionary<string, string> mValues = new Dictionary<string, string>();

	private List<TexturePart> mParts = new List<TexturePart>();

	private List<TexturePart> mProcessedParts = new List<TexturePart>();

	private string mConverter = string.Empty;

	private string mGameEditor = string.Empty;

	private string mName = string.Empty;

	private string mCategory = string.Empty;

	private SurfaceTypes mSoundMaterial;

	private ResourceKey mKey = default;

	private string mType = string.Empty;

	private TextureCompositor.PatternSize mPatternSize;

	private static bool IsRunningFromGame => true;

	public string this[string index]
	{
		get
		{
			if (mValues.TryGetValue(index, out var value))
			{
				return value;
			}
			return string.Empty;
		}
		set
		{
			mValues[index] = value;
		}
	}

	public Variable[] Variables => mVariables.ToArray();

	public TexturePart[] Parts
	{
		get
		{
			return mParts.ToArray();
		}
		set
		{
			mParts.Clear();
			mParts.AddRange(value);
		}
	}

	public TexturePart[] ProcessedParts => mProcessedParts.ToArray();

	public Type GameEditor
	{
		get
		{
			if (mGameEditor == string.Empty)
			{
				return null;
			}
			Type result = null;
			try
			{
				result = Type.GetType(mGameEditor, throwOnError: false);
			}
			catch (Exception)
			{
			}
			return result;
		}
	}

	public string Name => mName;

	public string Category => mCategory;

	public SurfaceTypes SoundMaterial => mSoundMaterial;

	public ResourceKey Key => mKey;

	public string ComplateType => mType;

	public event EventHandler VariableChanged;

	private static bool GetCachedComplate(ResourceKey resKey, out Complate retComp)
	{
		if (sComplateCache.TryGetValue(resKey, out retComp))
		{
			retComp = retComp.Clone() as Complate;
			return true;
		}
		return false;
	}

	private static void SetCachedComplate(ResourceKey resKey, Complate retComp)
	{
		sComplateCache[resKey] = retComp.Clone() as Complate;
	}

	public bool HasValue(string name)
	{
		return mValues.ContainsKey(name);
	}

	public void Parse(string xmlStr)
	{
		mVariables.Clear();
		mParts.Clear();
		mProcessedParts.Clear();
		mConverter = string.Empty;
		mName = string.Empty;
		mKey = default;
		mGameEditor = string.Empty;
		mCategory = string.Empty;
		mSoundMaterial = SurfaceTypes.unknown;
		mPatternSize = TextureCompositor.PatternSize.Default;
		XmlTextReader xmlTextReader = new XmlTextReader(xmlStr, XmlNodeType.Document, null);
		xmlTextReader.WhitespaceHandling = WhitespaceHandling.None;
		while (xmlTextReader.Read())
		{
			if (xmlTextReader.IsStartElement("complate"))
			{
				if (!xmlTextReader.HasAttributes)
				{
					continue;
				}
				while (xmlTextReader.MoveToNextAttribute())
				{
					if (xmlTextReader.Name == kTypeConverterAttribute)
					{
						mConverter = xmlTextReader.Value;
					}
					else if (xmlTextReader.Name == kNameAttribute)
					{
						mName = xmlTextReader.Value;
					}
					else if (xmlTextReader.Name == kTypeAttribute)
					{
						mType = xmlTextReader.Value;
					}
					else if (xmlTextReader.Name == kGameEditorAttribute)
					{
						mGameEditor = xmlTextReader.Value;
					}
					else if (xmlTextReader.Name == kPatternSizeAttribute)
					{
						try
						{
							mPatternSize = (TextureCompositor.PatternSize)Enum.Parse(typeof(TextureCompositor.PatternSize), xmlTextReader.Value);
						}
						catch (Exception)
						{
						}
					}
					else if (xmlTextReader.Name == kCategoryAttribute)
					{
						mCategory = xmlTextReader.Value;
					}
					else if (xmlTextReader.Name == kSoundMaterialAttribute)
					{
						try
						{
							mSoundMaterial = (SurfaceTypes)Enum.Parse(typeof(SurfaceTypes), xmlTextReader.Value);
						}
						catch (Exception)
						{
							mSoundMaterial = SurfaceTypes.unknown;
						}
					}
					else if (xmlTextReader.Name == kResourceKeyAttribute)
					{
						string value = xmlTextReader.Value;
						string[] array = value.Split(new char[1] { ':' });
						if (array == null || array.Length != 4)
						{
							mKey = ResourceKey.CreateXMLKey(mName, 0u);
						}
						mKey.TypeId = Convert.ToUInt32(array[1], 16);
						mKey.GroupId = Convert.ToUInt32(array[2], 16);
						mKey.InstanceId = Convert.ToUInt64(array[3], 16);
						if (mKey.InstanceId == 0)
						{
							mKey = ResourceKey.CreateXMLKey(mName, 0u);
						}
					}
				}
				if (mKey.TypeId == 0)
				{
					mKey = ResourceKey.CreateXMLKey(mName, 0u);
				}
				xmlTextReader.MoveToElement();
			}
			else if (xmlTextReader.IsStartElement(kNodeVariables))
			{
				ParseVariables(xmlTextReader);
			}
			else if (xmlTextReader.IsStartElement(kNodeTexturePart))
			{
				TexturePart item = ParseTexturePart(xmlTextReader);
				mParts.Add(item);
			}
		}
	}

	public void Parse(XmlDocument xml)
	{
		mVariables.Clear();
		mParts.Clear();
		mProcessedParts.Clear();
		mConverter = string.Empty;
		mName = string.Empty;
		mKey = default;
		mGameEditor = string.Empty;
		XmlElement documentElement = xml.DocumentElement;
		if (documentElement.Attributes != null)
		{
			XmlAttribute xmlAttribute = documentElement.Attributes[kTypeConverterAttribute];
			if (xmlAttribute != null)
			{
				mConverter = xmlAttribute.Value;
			}
			xmlAttribute = documentElement.Attributes[kNameAttribute];
			if (xmlAttribute != null)
			{
				mName = xmlAttribute.Value;
			}
			xmlAttribute = documentElement.Attributes[kTypeAttribute];
			if (xmlAttribute != null)
			{
				mType = xmlAttribute.Value;
			}
			xmlAttribute = documentElement.Attributes[kGameEditorAttribute];
			if (xmlAttribute != null)
			{
				mGameEditor = xmlAttribute.Value;
			}
			xmlAttribute = documentElement.Attributes[kCategoryAttribute];
			if (xmlAttribute != null)
			{
				mCategory = xmlAttribute.Value;
			}
			xmlAttribute = documentElement.Attributes[kSoundMaterialAttribute];
			if (xmlAttribute != null)
			{
				try
				{
					mSoundMaterial = (SurfaceTypes)Enum.Parse(typeof(SurfaceTypes), xmlAttribute.Value);
				}
				catch (Exception)
				{
					mSoundMaterial = SurfaceTypes.unknown;
				}
			}
			xmlAttribute = documentElement.Attributes[kPatternSizeAttribute];
			if (xmlAttribute != null)
			{
				try
				{
					mPatternSize = (TextureCompositor.PatternSize)Enum.Parse(typeof(TextureCompositor.PatternSize), xmlAttribute.Value);
				}
				catch (Exception)
				{
					mPatternSize = TextureCompositor.PatternSize.Default;
				}
			}
			else
			{
				mPatternSize = TextureCompositor.PatternSize.Default;
			}
			xmlAttribute = documentElement.Attributes[kResourceKeyAttribute];
			if (xmlAttribute != null)
			{
				string value = xmlAttribute.Value;
				string[] array = value.Split(new char[1] { ':' });
				if (array == null || array.Length != 4)
				{
					mKey = ResourceKey.CreateXMLKey(mName, 0u);
				}
				mKey.TypeId = Convert.ToUInt32(array[1], 16);
				mKey.GroupId = Convert.ToUInt32(array[2], 16);
				mKey.InstanceId = Convert.ToUInt64(array[3], 16);
				if (mKey.InstanceId == 0)
				{
					mKey = ResourceKey.CreateXMLKey(mName, 0u);
				}
			}
			else
			{
				mKey = ResourceKey.CreateXMLKey(mName, 0u);
			}
		}
		ParseVariables(xml);
		ParseTextureParts(xml);
	}

	private void ParseVariables(XmlReader xmlReader)
	{
		int num = xmlReader.Depth + 1;
		while (xmlReader.Read() && xmlReader.Depth >= num)
		{
			if (!xmlReader.IsStartElement(kNodeParam))
			{
				continue;
			}
			Variable variable = new Variable();
			if (xmlReader.HasAttributes)
			{
				while (xmlReader.MoveToNextAttribute())
				{
					variable[xmlReader.Name] = ProcessString(xmlReader.Value);
				}
				xmlReader.MoveToElement();
			}
			string str = variable[kNameAttribute];
			variable[kNameHashAttribute] = ResourceUtils.HashString64(str).ToString();
			mVariables.Add(variable);
			this[variable[kNameAttribute]] = variable[kDefaultAttribute];
		}
	}

	private void ParseVariables(XmlDocument xml)
	{
		XmlElement documentElement = xml.DocumentElement;
		XmlNode xmlNode = documentElement.FirstChild;
		while (xmlNode != null && !(xmlNode.Name == kNodeVariables))
		{
			xmlNode = xmlNode.NextSibling;
		}
		if (xmlNode == null)
		{
			return;
		}
		for (xmlNode = xmlNode.FirstChild; xmlNode != null; xmlNode = xmlNode.NextSibling)
		{
			if (xmlNode.Name == kNodeParam)
			{
				Variable variable = new Variable();
				if (xmlNode.Attributes != null)
				{
					foreach (XmlAttribute attribute in xmlNode.Attributes)
					{
						variable[attribute.Name] = ProcessString(attribute.Value);
					}
				}
				string str = variable[kNameAttribute];
				variable[kNameHashAttribute] = ResourceUtils.HashString64(str).ToString();
				mVariables.Add(variable);
				this[variable[kNameAttribute]] = variable[kDefaultAttribute];
			}
		}
	}

	private void ParseTextureParts(XmlDocument xml)
	{
		XmlElement documentElement = xml.DocumentElement;
		for (XmlNode xmlNode = documentElement.FirstChild; xmlNode != null; xmlNode = xmlNode.NextSibling)
		{
			if (xmlNode.Name == kNodeTexturePart)
			{
				TexturePart item = ParseTexturePart(xmlNode as XmlElement);
				mParts.Add(item);
			}
		}
	}

	private TexturePart ParseTexturePart(XmlReader xmlReader)
	{
		TexturePart texturePart = new TexturePart();
		if (xmlReader.HasAttributes)
		{
			while (xmlReader.MoveToNextAttribute())
			{
				texturePart[xmlReader.Name] = xmlReader.Value;
			}
			xmlReader.MoveToElement();
		}
		int num = xmlReader.Depth + 1;
		List<TextureDestination> list = new List<TextureDestination>();
		while (xmlReader.Read() && xmlReader.Depth >= num)
		{
			if (xmlReader.IsStartElement(kNodeDestination))
			{
				TextureDestination item = ParseTextureDestination(xmlReader);
				list.Add(item);
			}
		}
		texturePart.Destinations = list.ToArray();
		return texturePart;
	}

	private TexturePart ParseTexturePart(XmlElement texturePartElement)
	{
		TexturePart texturePart = new TexturePart();
		if (texturePartElement.Attributes != null)
		{
			foreach (XmlAttribute attribute in texturePartElement.Attributes)
			{
				texturePart[attribute.Name] = attribute.Value;
			}
		}
		ArrayList arrayList = new ArrayList();
		for (XmlNode xmlNode = texturePartElement.FirstChild; xmlNode != null; xmlNode = xmlNode.NextSibling)
		{
			if (xmlNode.Name == kNodeDestination)
			{
				TextureDestination value = ParseTextureDestination(xmlNode as XmlElement);
				arrayList.Add(value);
			}
		}
		texturePart.Destinations = (TextureDestination[])arrayList.ToArray(typeof(TextureDestination));
		return texturePart;
	}

	private TextureDestination ParseTextureDestination(XmlReader xmlReader)
	{
		TextureDestination textureDestination = new TextureDestination();
		if (xmlReader.HasAttributes)
		{
			while (xmlReader.MoveToNextAttribute())
			{
				textureDestination[xmlReader.Name] = xmlReader.Value;
			}
			xmlReader.MoveToElement();
		}
		int num = xmlReader.Depth + 1;
		List<TextureStep> list = new List<TextureStep>();
		while (xmlReader.Read() && xmlReader.Depth >= num)
		{
			if (xmlReader.IsStartElement(kNodeStep))
			{
				TextureStep item = ParseTextureStep(xmlReader);
				list.Add(item);
			}
		}
		textureDestination.Steps = list.ToArray();
		return textureDestination;
	}

	private TextureDestination ParseTextureDestination(XmlElement destElement)
	{
		TextureDestination textureDestination = new TextureDestination();
		if (destElement.Attributes != null)
		{
			foreach (XmlAttribute attribute in destElement.Attributes)
			{
				textureDestination[attribute.Name] = attribute.Value;
			}
		}
		ArrayList arrayList = new ArrayList();
		for (XmlNode xmlNode = destElement.FirstChild; xmlNode != null; xmlNode = xmlNode.NextSibling)
		{
			if (xmlNode.Name == kNodeStep)
			{
				TextureStep value = ParseTextureStep(xmlNode as XmlElement);
				arrayList.Add(value);
			}
		}
		textureDestination.Steps = (TextureStep[])arrayList.ToArray(typeof(TextureStep));
		return textureDestination;
	}

	private TextureStep ParseTextureStep(XmlReader xmlReader)
	{
		TextureStep textureStep = new TextureStep();
		if (xmlReader.HasAttributes)
		{
			while (xmlReader.MoveToNextAttribute())
			{
				textureStep[xmlReader.Name] = xmlReader.Value;
			}
			xmlReader.MoveToElement();
		}
		return textureStep;
	}

	private TextureStep ParseTextureStep(XmlElement stepElement)
	{
		TextureStep textureStep = new TextureStep();
		if (stepElement.Attributes != null)
		{
			foreach (XmlAttribute attribute in stepElement.Attributes)
			{
				textureStep[attribute.Name] = attribute.Value;
			}
		}
		return textureStep;
	}

	// Analyst original MethodDef 06000321: Copies variable values, clears processed parts, invokes original Clone/Process in authored order; clone internals are separate.
	public virtual void Process()
	{
		foreach (Variable mVariable in mVariables)
		{
			this[mVariable.Name] = mVariable.Value;
		}
		mProcessedParts.Clear();
		foreach (TexturePart mPart in mParts)
		{
			TexturePart texturePart = (TexturePart)mPart.Clone();
			texturePart.Process(this);
			mProcessedParts.Add(texturePart);
		}
	}

	// Analyst original MethodDef 06000322: Repeated ($name) substitution precedes brace MathParse. No local cycle/extent guard or delimiter recovery. Formatting supplies no culture provider.
	public string ProcessString(string source)
	{
		StringBuilder stringBuilder = new StringBuilder();
		string text = source;
		for (int num = text.IndexOf("($"); num != -1; num = text.IndexOf("($"))
		{
			int num2 = text.IndexOf(")", num);
			string index = text.Substring(num + 2, num2 - num - 2);
			string value = this[index];
			stringBuilder.Length = 0;
			stringBuilder.Append(text, 0, num);
			stringBuilder.Append(value);
			num2++;
			stringBuilder.Append(text, num2, text.Length - num2);
			text = stringBuilder.ToString();
		}
		for (int num = text.IndexOf("{"); num != -1; num = text.IndexOf("{"))
		{
			int num3 = text.IndexOf("}", num);
			string expression = text.Substring(num + 1, num3 - num - 1);
			double num4 = MathParse.Parse(expression);
			stringBuilder.Length = 0;
			stringBuilder.Append(text, 0, num);
			stringBuilder.Append(num4.ToString("0.#######;-0.#######;0"));
			num3++;
			stringBuilder.Append(text, num3, text.Length - num3);
			text = stringBuilder.ToString();
		}
		return text;
	}

	public void SetFilename(string filename)
	{
		this[kFilenameAttribute] = filename;
		string text = filename.Substring(filename.LastIndexOf('\\') + 1);
		mName = text;
		mKey = ResourceKey.CreateXMLKey(mName, 0u);
	}

	public Variable FindVariable(string variableName)
	{
		foreach (Variable mVariable in mVariables)
		{
			if (mVariable.Name == variableName)
			{
				return mVariable;
			}
		}
		return null;
	}

	public bool ContainsDestination(TextureDestination textureDestination)
	{
		foreach (TexturePart mPart in mParts)
		{
			TextureDestination[] destinations = mPart.Destinations;
			foreach (TextureDestination textureDestination2 in destinations)
			{
				if (textureDestination == textureDestination2)
				{
					return true;
				}
			}
		}
		return false;
	}

	public string GetDestinationName(TextureDestination textureDestination)
	{
		bool flag = false;
		int num = 0;
		int num2 = 0;
		foreach (TexturePart mPart in mParts)
		{
			TextureDestination[] destinations = mPart.Destinations;
			foreach (TextureDestination textureDestination2 in destinations)
			{
				if (textureDestination == textureDestination2)
				{
					flag = true;
					break;
				}
				num2++;
			}
			if (!flag)
			{
				num2 = 0;
				num++;
				continue;
			}
			break;
		}
		if (!flag)
		{
			return string.Empty;
		}
		if (mProcessedParts.Count == 0)
		{
			Process();
		}
		TexturePart texturePart = mProcessedParts[num];
		TextureDestination dest = texturePart.Destinations[num2];
		return MakeName(texturePart, dest);
	}

	// Analyst original MethodDef 06000330: Conditionally appends authored part/texture details with underscores; this is the original name producer for dictionary assignment.
	private string MakeName(TexturePart part, TextureDestination dest)
	{
		string text = Name;
		if (part.HasDetail(kPartAttribute))
		{
			text = text + "_" + part[kPartAttribute];
		}
		if (dest.HasDetail(kTextureNameAttribute))
		{
			text = text + "_" + dest[kTextureNameAttribute];
		}
		return text;
	}

	public void CopyData(Complate sourceComplate)
	{
		mVariables.Clear();
		foreach (Variable mVariable in sourceComplate.mVariables)
		{
			mVariables.Add(mVariable.Clone() as Variable);
		}
		mValues = new Dictionary<string, string>(sourceComplate.mValues);
	}

	public void ReplaceData(Complate sourceComplate)
	{
		foreach (Variable mVariable in sourceComplate.mVariables)
		{
			for (int i = 0; i < mVariables.Count; i++)
			{
				if (mVariables[i].Name == mVariable.Name)
				{
					mVariables[i].Value = mVariable.Value;
					break;
				}
			}
		}
		Process();
	}

	public void Clear()
	{
		mValues.Clear();
		mVariables.Clear();
		mParts.Clear();
		mProcessedParts.Clear();
		mConverter = string.Empty;
		mName = string.Empty;
		mKey = default;
		mGameEditor = string.Empty;
	}

	// Analyst original MethodDef 06000334: Traverses parts/destinations; same-name dictionary assignments overwrite earlier entries. No general resource ownership transaction is inferred.
	public Hashtable CreateTextureCompositors(uint groupId)
	{
		Hashtable hashtable = new Hashtable();
		foreach (TexturePart mProcessedPart in mProcessedParts)
		{
			TextureDestination[] destinations = mProcessedPart.Destinations;
			foreach (TextureDestination textureDestination in destinations)
			{
				string key = MakeName(mProcessedPart, textureDestination);
				TextureCompositor value = CreateTextureCompositor(mProcessedPart, textureDestination, groupId);
				hashtable[key] = value;
			}
		}
		return hashtable;
	}

	// Analyst original MethodDef 06000335: Null part selects first processed part; null destination directly indexes first destination. Empty destinations are not checked before [0]. Keeps original region aliases and ignores null steps.
	public TextureCompositor CreateTextureCompositor(TexturePart part, TextureDestination destTexture, uint groupId)
	{
		if (part == null)
		{
			if (mProcessedParts.Count == 0)
			{
				return null;
			}
			part = mProcessedParts[0];
			if (part == null)
			{
				return null;
			}
		}
		if (destTexture == null)
		{
			destTexture = part.Destinations[0];
			if (destTexture == null)
			{
				return null;
			}
		}
		TextureCompositor textureCompositor = new TextureCompositor();
		string text = part[kPartAttribute].ToLower();
		if (text.Length > 0)
		{
			try
			{
				textureCompositor.PartType = (CASPartFlags)Enum.Parse(typeof(CASPartFlags), text, ignoreCase: true);
			}
			catch (ArgumentException)
			{
				switch (text)
				{
				case "body":
				case "bottom":
				case "shoes":
				case "top":
				case "lowerbody":
				case "upperbody":
					textureCompositor.PartType = CASPartFlags.Body;
					break;
				case "accessory":
					textureCompositor.PartType = CASPartFlags.Accessories;
					break;
				case "face":
					textureCompositor.PartType = CASPartFlags.Face;
					break;
				case "hair":
					textureCompositor.PartType = CASPartFlags.Hair;
					break;
				case "scalp":
					textureCompositor.PartType = CASPartFlags.Scalp;
					break;
				default:
					textureCompositor.PartType = CASPartFlags.None;
					break;
				}
			}
			catch (Exception)
			{
			}
		}
		textureCompositor.SourceComplate = this;
		textureCompositor.SourceTexturePart = part;
		textureCompositor.SourceTextureDest = destTexture;
		textureCompositor.TargetSize = mPatternSize;
		TextureStep[] steps = destTexture.Steps;
		foreach (TextureStep textureStep in steps)
		{
			ITextureStep textureStep2 = textureStep.CreateTextureStep(groupId);
			if (textureStep2 != null)
			{
				textureCompositor.AddStep(textureStep2);
			}
		}
		return textureCompositor;
	}

	public void AddToPreset(XmlDocument presetDoc, Dictionary<string, Complate> complateLookup)
	{
		XmlElement xmlElement = presetDoc.CreateElement("complate");
		xmlElement.SetAttribute(kNameAttribute, mName);
		xmlElement.SetAttribute(kResourceKeyAttribute, string.Format("key:{0}:{1}:{2}", mKey.TypeId.ToString("X8"), mKey.GroupId.ToString("X8"), mKey.InstanceId.ToString("X16")));
		presetDoc.DocumentElement.AppendChild(xmlElement);
		AddValuesToPreset(xmlElement);
		foreach (Variable mVariable in mVariables)
		{
			if (mVariable.Type == Variable.Types.Pattern && complateLookup.ContainsKey(mVariable.Name))
			{
				Complate complate = complateLookup[mVariable.Name];
				XmlElement xmlElement2 = presetDoc.CreateElement("pattern");
				xmlElement2.SetAttribute(kNameAttribute, complate.Name);
				xmlElement2.SetAttribute(kResourceKeyAttribute, string.Format("key:{0}:{1}:{2}", complate.mKey.TypeId.ToString("X8"), complate.mKey.GroupId.ToString("X8"), complate.mKey.InstanceId.ToString("X16")));
				xmlElement2.SetAttribute("variable", mVariable.Name);
				xmlElement.AppendChild(xmlElement2);
				complate.AddValuesToPreset(xmlElement2);
			}
		}
	}

	public static void ConvertPresetToResourceKeys(XmlDocument presetDoc, ISKUUtils skuUtils)
	{
		XmlNodeList elementsByTagName = presetDoc.GetElementsByTagName("value");
		foreach (XmlElement item in elementsByTagName)
		{
			XmlAttribute xmlAttribute = item.Attributes["value"];
			if (xmlAttribute == null)
			{
				continue;
			}
			string text = xmlAttribute.Value.ToLower();
			uint num = 0u;
			if (text.EndsWith(".tga"))
			{
				if (skuUtils != null)
				{
					uint productIdFromAssetPath = skuUtils.GetProductIdFromAssetPath(text);
					num = ContentCategoryHandler.AddProductID(num, productIdFromAssetPath);
				}
				text = MetadataUtilities.GetFileBase(text);
				ResourceKey resourceKey = ResourceKey.CreateTextureKey(text, num);
				text = string.Format("key:{0}:{1}:{2}", resourceKey.TypeId.ToString("X8"), resourceKey.GroupId.ToString("X8"), resourceKey.InstanceId.ToString("X16"));
				xmlAttribute.Value = text;
			}
			else if (text.EndsWith(".png"))
			{
				if (skuUtils != null)
				{
					uint productIdFromAssetPath2 = skuUtils.GetProductIdFromAssetPath(text);
					num = ContentCategoryHandler.AddProductID(num, productIdFromAssetPath2);
				}
				text = MetadataUtilities.GetFileBase(text);
				ResourceKey resourceKey2 = ResourceKey.CreatePNGKey(text, num);
				text = string.Format("key:{0}:{1}:{2}", resourceKey2.TypeId.ToString("X8"), resourceKey2.GroupId.ToString("X8"), resourceKey2.InstanceId.ToString("X16"));
				xmlAttribute.Value = text;
			}
		}
	}

	private void AddValuesToPreset(XmlElement complateElement)
	{
		foreach (KeyValuePair<string, string> mValue in mValues)
		{
			XmlElement xmlElement = complateElement.OwnerDocument.CreateElement("value");
			xmlElement.SetAttribute("key", mValue.Key);
			xmlElement.SetAttribute("value", mValue.Value);
			complateElement.AppendChild(xmlElement);
		}
	}

	public static bool TestXmlExists(ResourceKey key)
	{
		Complate retComp = null;
		if (GetCachedComplate(key, out retComp))
		{
			return true;
		}
		string text = null;
		text = Simulator.LoadXMLString(key);
		if (text == null || text.Length == 0)
		{
			return false;
		}
		return true;
	}

	public static Complate FromXml(ResourceKey key)
	{
		Complate retComp = null;
		if (GetCachedComplate(key, out retComp))
		{
			return retComp;
		}
		string text = null;
		text = Simulator.LoadXMLString(key);
		if (text == null || text.Length == 0)
		{
			return null;
		}
		retComp = new Complate();
		retComp["assetRoot"] = kAssetRoot;
		retComp.Parse(text);
		SetCachedComplate(key, retComp);
		return retComp;
	}

	private static Complate FromXml(string complateName, string complateKey)
	{
		Complate retComp = null;
		ResourceKey resourceKey = default;
		if (complateKey != null && complateKey.Length > 0)
		{
			string[] array = complateKey.Split(new char[1] { ':' });
			if (array != null && array.Length == 4)
			{
				retComp = FromXml(new ResourceKey
				{
					TypeId = Convert.ToUInt32(array[1], 16),
					GroupId = Convert.ToUInt32(array[2], 16),
					InstanceId = Convert.ToUInt64(array[3], 16)
				});
				if (retComp != null)
				{
					return retComp;
				}
			}
		}
		string text = null;
		resourceKey = ResourceKey.CreateXMLKey(complateName, 0u);
		if (GetCachedComplate(resourceKey, out retComp))
		{
			return retComp;
		}
		text = Simulator.LoadXMLString(resourceKey);
		if (text == null || text.Length == 0)
		{
			return null;
		}
		retComp = new Complate();
		retComp.Parse(text);
		SetCachedComplate(resourceKey, retComp);
		return retComp;
	}

	// Analyst original MethodDef 0600033c: Does not clear on entry. Missing attributes returns prior result without clearing. Selected resolution/value failures clear lookup but preserve prior result; catch clears and resets result to empty.
	public static string ProcessPreset(string xml, Dictionary<string, Complate> complateLookup)
	{
		string result = string.Empty;
		try
		{
			XmlTextReader xmlTextReader = new XmlTextReader(xml, XmlNodeType.Document, null);
			xmlTextReader.WhitespaceHandling = WhitespaceHandling.None;
			while (xmlTextReader.Read())
			{
				if (!xmlTextReader.IsStartElement("complate"))
				{
					continue;
				}
				if (!xmlTextReader.HasAttributes)
				{
					return result;
				}
				string text = string.Empty;
				string complateKey = string.Empty;
				while (xmlTextReader.MoveToNextAttribute())
				{
					if (xmlTextReader.Name == kNameAttribute)
					{
						text = xmlTextReader.Value;
					}
					else if (xmlTextReader.Name == kResourceKeyAttribute)
					{
						complateKey = xmlTextReader.Value;
					}
				}
				xmlTextReader.MoveToElement();
				if (text == "rgbMaskStandard")
				{
					text = "ObjectRgbMask";
				}
				Complate complate = FromXml(text, complateKey);
				if (complate == null)
				{
					complateLookup.Clear();
					return result;
				}
				if (!ProcessPresetValues(complate, xmlTextReader, complateLookup))
				{
					complateLookup.Clear();
					return result;
				}
				complateLookup[text] = complate;
				result = text;
			}
		}
		catch (Exception)
		{
			complateLookup.Clear();
			result = string.Empty;
		}
		return result;
	}

	// Analyst original MethodDef 0600033d: Requires attributes on selected entries, tries original nested fallback, discards recursive Boolean return, publishes nested pattern under variable slot, then updates variable values.
	private static bool ProcessPresetValues(Complate comp, XmlTextReader xmlReader, Dictionary<string, Complate> complateLookup)
	{
		int num = xmlReader.Depth + 1;
		while (xmlReader.Read() && xmlReader.Depth >= num)
		{
			if (xmlReader.IsStartElement("value"))
			{
				if (!xmlReader.HasAttributes)
				{
					return false;
				}
				string index = string.Empty;
				string value = string.Empty;
				while (xmlReader.MoveToNextAttribute())
				{
					if (xmlReader.Name == "key")
					{
						index = xmlReader.Value;
					}
					else if (xmlReader.Name == "value")
					{
						value = xmlReader.Value;
					}
				}
				comp[index] = value;
				xmlReader.MoveToElement();
			}
			else
			{
				if (!xmlReader.IsStartElement("pattern"))
				{
					continue;
				}
				if (!xmlReader.HasAttributes)
				{
					return false;
				}
				string text = string.Empty;
				string complateKey = string.Empty;
				string key = string.Empty;
				while (xmlReader.MoveToNextAttribute())
				{
					if (xmlReader.Name == kNameAttribute)
					{
						text = xmlReader.Value;
						if (text == "rgbMaskStandard")
						{
							text = "ObjectRgbMask";
						}
					}
					else if (xmlReader.Name == kResourceKeyAttribute)
					{
						complateKey = xmlReader.Value;
					}
					else if (xmlReader.Name == "variable")
					{
						key = xmlReader.Value;
					}
				}
				xmlReader.MoveToElement();
				Complate complate = FromXml(text, complateKey);
				if (complate == null)
				{
					complate = FromXml(kFallbackPattern, kFallbackPatternKey);
					if (complate == null)
					{
						return false;
					}
				}
				ProcessPresetValues(complate, xmlReader, complateLookup);
				complateLookup[key] = complate;
			}
		}
		Variable[] variables = comp.Variables;
		foreach (Variable variable in variables)
		{
			variable.Value = comp[variable.Name];
		}
		return true;
	}

	// Analyst original MethodDef 0600033e: Clears lookup on entry; no broad string-overload catch. Later selected failures clear lookup but return the prior result, which need not be empty.
	public static string ProcessPreset(XmlDocument presetDoc, Dictionary<string, Complate> complateLookup)
	{
		complateLookup.Clear();
		string result = string.Empty;
		XmlElement documentElement = presetDoc.DocumentElement;
		if (documentElement == null)
		{
			return result;
		}
		XmlNode xmlNode = documentElement.FirstChild;
		while (xmlNode != null)
		{
			if (!(xmlNode is XmlElement xmlElement) || xmlElement.Name != "complate")
			{
				xmlNode = xmlNode.NextSibling;
				continue;
			}
			string text = xmlElement.GetAttribute(kNameAttribute);
			string attribute = xmlElement.GetAttribute(kResourceKeyAttribute);
			if (text == "rgbMaskStandard")
			{
				text = "ObjectRgbMask";
			}
			Complate complate = FromXml(text, attribute);
			if (complate == null)
			{
				complateLookup.Clear();
				return result;
			}
			if (!ProcessPresetValues(complate, xmlElement, complateLookup))
			{
				complateLookup.Clear();
				return result;
			}
			complateLookup[text] = complate;
			result = text;
			xmlNode = xmlNode.NextSibling;
		}
		return result;
	}

	// Analyst original MethodDef 0600033f: DOM attribute handling differs from streaming reader; recursive Boolean return is discarded before nested publication. Preserve its actual failure scope.
	private static bool ProcessPresetValues(Complate comp, XmlElement compElement, Dictionary<string, Complate> complateLookup)
	{
		XmlNode xmlNode = compElement.FirstChild;
		while (xmlNode != null)
		{
			if (!(xmlNode is XmlElement xmlElement))
			{
				xmlNode = xmlNode.NextSibling;
				continue;
			}
			if (xmlElement.Name == "value")
			{
				string attribute = xmlElement.GetAttribute("key");
				string attribute2 = xmlElement.GetAttribute("value");
				comp[attribute] = attribute2;
			}
			else if (xmlElement.Name == "pattern")
			{
				string text = xmlElement.GetAttribute(kNameAttribute);
				string attribute3 = xmlElement.GetAttribute(kResourceKeyAttribute);
				string attribute4 = xmlElement.GetAttribute("variable");
				if (text == "rgbMaskStandard")
				{
					text = "ObjectRgbMask";
				}
				Complate complate = FromXml(text, attribute3);
				if (complate == null)
				{
					complate = FromXml(kFallbackPattern, kFallbackPatternKey);
					if (complate == null)
					{
						return false;
					}
				}
				ProcessPresetValues(complate, xmlElement, complateLookup);
				complateLookup[attribute4] = complate;
			}
			xmlNode = xmlNode.NextSibling;
		}
		Variable[] variables = comp.Variables;
		foreach (Variable variable in variables)
		{
			variable.Value = comp[variable.Name];
		}
		return true;
	}

	public object Clone()
	{
		Complate complate = new Complate();
		complate.mConverter = mConverter;
		complate.mGameEditor = mGameEditor;
		complate.mCategory = mCategory;
		complate.mSoundMaterial = mSoundMaterial;
		complate.mName = mName;
		complate.mKey = mKey;
		complate.mType = mType;
		complate.mPatternSize = mPatternSize;
		int i = 0;
		for (int count = mParts.Count; i < count; i++)
		{
			complate.mParts.Add(mParts[i].Clone() as TexturePart);
		}
		int j = 0;
		for (int count2 = mProcessedParts.Count; j < count2; j++)
		{
			complate.mProcessedParts.Add(mProcessedParts[j].Clone() as TexturePart);
		}
		complate.CopyData(this);
		return complate;
	}

	public bool Equals(Complate clone)
	{
		if (clone.mKey != mKey)
		{
			return false;
		}
		if (clone.mVariables.Count != mVariables.Count)
		{
			return false;
		}
		for (int i = 0; i < mVariables.Count; i++)
		{
			if (!clone.mVariables[i].Equals(mVariables[i]))
			{
				return false;
			}
		}
		return true;
	}

	public static SortedList<string, Complate> ExtractPatterns(ObjectGuid objectId, SortedList<string, bool> enabledStencils)
	{
		string objectDesignPreset = ObjectDesigner.GetObjectDesignPreset(objectId);
		if (objectDesignPreset == null || objectDesignPreset.Length == 0)
		{
			return new SortedList<string, Complate>();
		}
		Dictionary<string, Complate> dictionary = new Dictionary<string, Complate>();
		string text = ProcessPreset(objectDesignPreset, dictionary);
		if (text == null || text.Length == 0)
		{
			return new SortedList<string, Complate>();
		}
		if (enabledStencils != null && dictionary.TryGetValue(text, out var value))
		{
			Variable[] variables = value.Variables;
			foreach (Variable variable in variables)
			{
				if (variable.Type == Variable.Types.Bool)
				{
					string text2 = variable.Name.ToLower();
					if (text2.StartsWith("stencil ") && text2.EndsWith(" enabled"))
					{
						enabledStencils.Add(variable.Name, bool.Parse(variable.Value));
					}
				}
			}
		}
		dictionary.Remove(text);
		return new SortedList<string, Complate>(dictionary);
	}

	public static bool SetupDesignSwap(DesignModeSwap swap, SortedList<string, Complate> patterns, string presetXml, bool bUndoable, SortedList<string, bool> enabledStencils)
	{
		if (presetXml == null || presetXml.Length == 0)
		{
			return false;
		}
		Dictionary<string, Complate> dictionary = new Dictionary<string, Complate>();
		string text = ProcessPreset(presetXml, dictionary);
		if (text == null || text.Length == 0)
		{
			return false;
		}
		Complate value = null;
		if (!dictionary.TryGetValue(text, out value))
		{
			return false;
		}
		List<Variable> list = new List<Variable>();
		bool result = false;
		Variable[] variables = value.Variables;
		foreach (Variable variable in variables)
		{
			if (enabledStencils != null && variable.Type == Variable.Types.Bool)
			{
				if (enabledStencils.TryGetValue(variable.Name, out result))
				{
					variable.Value = result.ToString();
				}
			}
			else
			{
				if (variable.Type != Variable.Types.Pattern)
				{
					continue;
				}
				_ = variable.Name;
				string text2 = variable[kEnabledAttribute];
				if (text2 != string.Empty)
				{
					text2 = value[text2];
					result = false;
					if (!bool.TryParse(text2, out result) || !result)
					{
						continue;
					}
				}
				list.Add(variable);
				if (enabledStencils == null && list.Count == 4)
				{
					break;
				}
			}
		}
		if (list.Count == 0)
		{
			return false;
		}
		TexturePart[] parts = value.Parts;
		foreach (TexturePart texturePart in parts)
		{
			TextureDestination[] destinations = texturePart.Destinations;
			foreach (TextureDestination textureDestination in destinations)
			{
				TextureStep[] steps = textureDestination.Steps;
				foreach (TextureStep textureStep in steps)
				{
					if (textureStep[kTypeAttribute] == "DrawFabric")
					{
						string text3 = textureStep["pattern"];
						if (text3.StartsWith("($daeFileName)"))
						{
							text3 = text3.Remove(0, 14);
						}
						textureStep["patternkey"] = swap.GetPatternKey(text3).ToString();
					}
				}
			}
		}
		foreach (KeyValuePair<string, Complate> pattern in patterns)
		{
			if (dictionary.ContainsKey(pattern.Key))
			{
				dictionary[pattern.Key] = pattern.Value;
			}
		}
		for (int m = 0; m < list.Count; m++)
		{
			Variable variable2 = list[m];
			if (!dictionary.TryGetValue(variable2.Name, out var value2))
			{
				swap.Dispose();
				return false;
			}
			value2.Process();
			TextureCompositor textureCompositor = value2.CreateTextureCompositor(null, null, 0u);
			if (textureCompositor != null)
			{
				byte[] data = textureCompositor.ExportData(null, null, null);
				swap.SetNewPattern(variable2.Name, data);
			}
		}
		value.Process();
		Hashtable hashtable = value.CreateTextureCompositors(0u);
		foreach (DictionaryEntry item in hashtable)
		{
			string text4 = (item.Key as string).ToLower();
			if (text4.EndsWith("diffusemap"))
			{
				TextureCompositor textureCompositor2 = item.Value as TextureCompositor;
				byte[] data2 = textureCompositor2.ExportData(null, null, null);
				swap.SetNewCompositor("diffusemap", data2);
			}
			else if (text4.EndsWith("specmap"))
			{
				TextureCompositor textureCompositor3 = item.Value as TextureCompositor;
				byte[] data3 = textureCompositor3.ExportData(null, null, null);
				swap.SetNewCompositor("specularmap", data3);
			}
		}
		XmlDocument xmlDocument = new XmlDocument();
		xmlDocument.LoadXml("<preset />");
		value.AddToPreset(xmlDocument, dictionary);
		ConvertPresetToResourceKeys(xmlDocument, null);
		string outerXml = xmlDocument.OuterXml;
		if (!swap.StartMaterialBuild(outerXml))
		{
			swap.Dispose();
			return false;
		}
		if (!bUndoable)
		{
			swap.DisableSubmitOfUndoable(b: true);
		}
		return true;
	}

	public static DesignModeSwap SetupDesignSwap(ObjectGuid objectId, SortedList<string, Complate> patterns, bool bUndoable, SortedList<string, bool> enabledStencils)
	{
		string objectDesignPreset = ObjectDesigner.GetObjectDesignPreset(objectId);
		if (objectDesignPreset == null || objectDesignPreset.Length == 0)
		{
			return null;
		}
		DesignModeSwap designModeSwap = new DesignModeSwap();
		designModeSwap.SetSourceObject(objectId);
		if (SetupDesignSwap(designModeSwap, patterns, objectDesignPreset, bUndoable, enabledStencils))
		{
			return designModeSwap;
		}
		return null;
	}

	public void OnVariableChanged()
	{
		if (VariableChanged != null)
		{
			VariableChanged(this, EventArgs.Empty);
		}
	}
}
