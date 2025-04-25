; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [326 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [978 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 42
	i64 u0x0024d0f62dee05bd, ; 1: Xamarin.KotlinX.Coroutines.Core.dll => 285
	i64 u0x0071cf2d27b7d61e, ; 2: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 264
	i64 u0x01109b0e4d99e61f, ; 3: System.ComponentModel.Annotations.dll => 13
	i64 u0x01af0bd6467d518e, ; 4: lib_ZXing.Net.MAUI.dll.so => 290
	i64 u0x02123411c4e01926, ; 5: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 253
	i64 u0x022e81ea9c46e03a, ; 6: lib_CommunityToolkit.Maui.Core.dll.so => 177
	i64 u0x0284512fad379f7e, ; 7: System.Runtime.Handles => 105
	i64 u0x02abedc11addc1ed, ; 8: lib_Mono.Android.Runtime.dll.so => 171
	i64 u0x02f55bf70672f5c8, ; 9: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x02f5a45d6d511e05, ; 10: lib_Camera.MAUI.dll.so => 174
	i64 u0x032267b2a94db371, ; 11: lib_Xamarin.AndroidX.AppCompat.dll.so => 203
	i64 u0x03621c804933a890, ; 12: System.Buffers => 7
	i64 u0x0399610510a38a38, ; 13: lib_System.Private.DataContractSerialization.dll.so => 86
	i64 u0x043032f1d071fae0, ; 14: ru/Microsoft.Maui.Controls.resources => 315
	i64 u0x044440a55165631e, ; 15: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 293
	i64 u0x046eb1581a80c6b0, ; 16: vi/Microsoft.Maui.Controls.resources => 321
	i64 u0x047408741db2431a, ; 17: Xamarin.AndroidX.DynamicAnimation => 227
	i64 u0x0517ef04e06e9f76, ; 18: System.Net.Primitives => 71
	i64 u0x0565d18c6da3de38, ; 19: Xamarin.AndroidX.RecyclerView => 257
	i64 u0x0581db89237110e9, ; 20: lib_System.Collections.dll.so => 12
	i64 u0x05989cb940b225a9, ; 21: Microsoft.Maui.dll => 191
	i64 u0x05a1c25e78e22d87, ; 22: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 102
	i64 u0x06076b5d2b581f08, ; 23: zh-HK/Microsoft.Maui.Controls.resources => 322
	i64 u0x06388ffe9f6c161a, ; 24: System.Xml.Linq.dll => 156
	i64 u0x06600c4c124cb358, ; 25: System.Configuration.dll => 19
	i64 u0x067f95c5ddab55b3, ; 26: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 232
	i64 u0x0680a433c781bb3d, ; 27: Xamarin.AndroidX.Collection.Jvm => 214
	i64 u0x069fff96ec92a91d, ; 28: System.Xml.XPath.dll => 161
	i64 u0x070b0847e18dab68, ; 29: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 229
	i64 u0x0739448d84d3b016, ; 30: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 267
	i64 u0x07469f2eecce9e85, ; 31: mscorlib.dll => 167
	i64 u0x07c57877c7ba78ad, ; 32: ru/Microsoft.Maui.Controls.resources.dll => 315
	i64 u0x07dcdc7460a0c5e4, ; 33: System.Collections.NonGeneric => 10
	i64 u0x08122e52765333c8, ; 34: lib_Microsoft.Extensions.Logging.Debug.dll.so => 185
	i64 u0x088610fc2509f69e, ; 35: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 268
	i64 u0x08a7c865576bbde7, ; 36: System.Reflection.Primitives => 96
	i64 u0x08c9d051a4a817e5, ; 37: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 224
	i64 u0x08f3c9788ee2153c, ; 38: Xamarin.AndroidX.DrawerLayout => 226
	i64 u0x09138715c92dba90, ; 39: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x0919c28b89381a0b, ; 40: lib_Microsoft.Extensions.Options.dll.so => 186
	i64 u0x091c208b484dc089, ; 41: Camera.MAUI.dll => 174
	i64 u0x092266563089ae3e, ; 42: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x09d144a7e214d457, ; 43: System.Security.Cryptography => 127
	i64 u0x09e2b9f743db21a8, ; 44: lib_System.Reflection.Metadata.dll.so => 95
	i64 u0x0abb3e2b271edc45, ; 45: System.Threading.Channels.dll => 140
	i64 u0x0b06b1feab070143, ; 46: System.Formats.Tar => 39
	i64 u0x0b3b632c3bbee20c, ; 47: sk/Microsoft.Maui.Controls.resources => 316
	i64 u0x0b6aff547b84fbe9, ; 48: Xamarin.KotlinX.Serialization.Core.Jvm => 288
	i64 u0x0be2e1f8ce4064ed, ; 49: Xamarin.AndroidX.ViewPager => 270
	i64 u0x0c3ca6cc978e2aae, ; 50: pt-BR/Microsoft.Maui.Controls.resources => 312
	i64 u0x0c3d7adcdb333bf0, ; 51: Xamarin.AndroidX.Camera.Lifecycle => 210
	i64 u0x0c59ad9fbbd43abe, ; 52: Mono.Android => 172
	i64 u0x0c65741e86371ee3, ; 53: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 197
	i64 u0x0c74af560004e816, ; 54: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c7790f60165fc06, ; 55: lib_Microsoft.Maui.Essentials.dll.so => 192
	i64 u0x0c83c82812e96127, ; 56: lib_System.Net.Mail.dll.so => 67
	i64 u0x0cce4bce83380b7f, ; 57: Xamarin.AndroidX.Security.SecurityCrypto => 261
	i64 u0x0d13cd7cce4284e4, ; 58: System.Security.SecureString => 130
	i64 u0x0d63f4f73521c24f, ; 59: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 260
	i64 u0x0e04e702012f8463, ; 60: Xamarin.AndroidX.Emoji2 => 228
	i64 u0x0e14e73a54dda68e, ; 61: lib_System.Net.NameResolution.dll.so => 68
	i64 u0x0f37dd7a62ae99af, ; 62: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 215
	i64 u0x0f5e7abaa7cf470a, ; 63: System.Net.HttpListener => 66
	i64 u0x1001f97bbe242e64, ; 64: System.IO.UnmanagedMemoryStream => 57
	i64 u0x102a31b45304b1da, ; 65: Xamarin.AndroidX.CustomView => 223
	i64 u0x1065c4cb554c3d75, ; 66: System.IO.IsolatedStorage.dll => 52
	i64 u0x10f6cfcbcf801616, ; 67: System.IO.Compression.Brotli => 43
	i64 u0x114443cdcf2091f1, ; 68: System.Security.Cryptography.Primitives => 125
	i64 u0x118d570f508803d1, ; 69: Xamarin.AndroidX.Camera.Camera2.dll => 208
	i64 u0x11a603952763e1d4, ; 70: System.Net.Mail => 67
	i64 u0x11a70d0e1009fb11, ; 71: System.Net.WebSockets.dll => 81
	i64 u0x11f26371eee0d3c1, ; 72: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 243
	i64 u0x12128b3f59302d47, ; 73: lib_System.Xml.Serialization.dll.so => 158
	i64 u0x123639456fb056da, ; 74: System.Reflection.Emit.Lightweight.dll => 92
	i64 u0x12521e9764603eaa, ; 75: lib_System.Resources.Reader.dll.so => 99
	i64 u0x125b7f94acb989db, ; 76: Xamarin.AndroidX.RecyclerView.dll => 257
	i64 u0x12d3b63863d4ab0b, ; 77: lib_System.Threading.Overlapped.dll.so => 141
	i64 u0x134eab1061c395ee, ; 78: System.Transactions => 151
	i64 u0x138567fa954faa55, ; 79: Xamarin.AndroidX.Browser => 207
	i64 u0x13a01de0cbc3f06c, ; 80: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 299
	i64 u0x13beedefb0e28a45, ; 81: lib_System.Xml.XmlDocument.dll.so => 162
	i64 u0x13f1e5e209e91af4, ; 82: lib_Java.Interop.dll.so => 169
	i64 u0x13f1e880c25d96d1, ; 83: he/Microsoft.Maui.Controls.resources => 300
	i64 u0x143d8ea60a6a4011, ; 84: Microsoft.Extensions.DependencyInjection.Abstractions => 182
	i64 u0x1497051b917530bd, ; 85: lib_System.Net.WebSockets.dll.so => 81
	i64 u0x14e68447938213b7, ; 86: Xamarin.AndroidX.Collection.Ktx.dll => 215
	i64 u0x152a448bd1e745a7, ; 87: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 88: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x15bdc156ed462f2f, ; 89: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x15e300c2c1668655, ; 90: System.Resources.Writer.dll => 101
	i64 u0x16bf2a22df043a09, ; 91: System.IO.Pipes.dll => 56
	i64 u0x16ea2b318ad2d830, ; 92: System.Security.Cryptography.Algorithms => 120
	i64 u0x16eeae54c7ebcc08, ; 93: System.Reflection.dll => 98
	i64 u0x17125c9a85b4929f, ; 94: lib_netstandard.dll.so => 168
	i64 u0x1716866f7416792e, ; 95: lib_System.Security.AccessControl.dll.so => 118
	i64 u0x174f71c46216e44a, ; 96: Xamarin.KotlinX.Coroutines.Core => 285
	i64 u0x1752c12f1e1fc00c, ; 97: System.Core => 21
	i64 u0x17b56e25558a5d36, ; 98: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 303
	i64 u0x17f9358913beb16a, ; 99: System.Text.Encodings.Web => 137
	i64 u0x1809fb23f29ba44a, ; 100: lib_System.Reflection.TypeExtensions.dll.so => 97
	i64 u0x18402a709e357f3b, ; 101: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 288
	i64 u0x18a9befae51bb361, ; 102: System.Net.WebClient => 77
	i64 u0x18f0ce884e87d89a, ; 103: nb/Microsoft.Maui.Controls.resources.dll => 309
	i64 u0x193d7a04b7eda8bc, ; 104: lib_Xamarin.AndroidX.Print.dll.so => 255
	i64 u0x19777fba3c41b398, ; 105: Xamarin.AndroidX.Startup.StartupRuntime.dll => 263
	i64 u0x19a4c090f14ebb66, ; 106: System.Security.Claims => 119
	i64 u0x1a040febb58bf51e, ; 107: lib_Xamarin.AndroidX.Camera.View.dll.so => 211
	i64 u0x1a91866a319e9259, ; 108: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1aa2c637b56b3782, ; 109: lib_Camera.MAUI.ZXing.dll.so => 175
	i64 u0x1aac34d1917ba5d3, ; 110: lib_System.dll.so => 165
	i64 u0x1aad60783ffa3e5b, ; 111: lib-th-Microsoft.Maui.Controls.resources.dll.so => 318
	i64 u0x1aea8f1c3b282172, ; 112: lib_System.Net.Ping.dll.so => 70
	i64 u0x1b4b7a1d0d265fa2, ; 113: Xamarin.Android.Glide.DiskLruCache => 196
	i64 u0x1bbdb16cfa73e785, ; 114: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 244
	i64 u0x1bc766e07b2b4241, ; 115: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 258
	i64 u0x1c753b5ff15bce1b, ; 116: Mono.Android.Runtime.dll => 171
	i64 u0x1cd47467799d8250, ; 117: System.Threading.Tasks.dll => 145
	i64 u0x1d23eafdc6dc346c, ; 118: System.Globalization.Calendars.dll => 40
	i64 u0x1d4c109ca6e27ed8, ; 119: lib_Microsoft.Maui.Controls.Compatibility.dll.so => 188
	i64 u0x1da4110562816681, ; 120: Xamarin.AndroidX.Security.SecurityCrypto.dll => 261
	i64 u0x1db6820994506bf5, ; 121: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x1dbb0c2c6a999acb, ; 122: System.Diagnostics.StackTrace => 30
	i64 u0x1e3d87657e9659bc, ; 123: Xamarin.AndroidX.Navigation.UI => 254
	i64 u0x1e71143913d56c10, ; 124: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 307
	i64 u0x1e7c31185e2fb266, ; 125: lib_System.Threading.Tasks.Parallel.dll.so => 144
	i64 u0x1ed8fcce5e9b50a0, ; 126: Microsoft.Extensions.Options.dll => 186
	i64 u0x1f055d15d807e1b2, ; 127: System.Xml.XmlSerializer => 163
	i64 u0x1f1ed22c1085f044, ; 128: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f61df9c5b94d2c1, ; 129: lib_System.Numerics.dll.so => 84
	i64 u0x1f750bb5421397de, ; 130: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 265
	i64 u0x20237ea48006d7a8, ; 131: lib_System.Net.WebClient.dll.so => 77
	i64 u0x209375905fcc1bad, ; 132: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x20fab3cf2dfbc8df, ; 133: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x2110167c128cba15, ; 134: System.Globalization => 42
	i64 u0x21419508838f7547, ; 135: System.Runtime.CompilerServices.VisualC => 103
	i64 u0x2174319c0d835bc9, ; 136: System.Runtime => 117
	i64 u0x2198e5bc8b7153fa, ; 137: Xamarin.AndroidX.Annotation.Experimental.dll => 201
	i64 u0x219ea1b751a4dee4, ; 138: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x21cc7e445dcd5469, ; 139: System.Reflection.Emit.ILGeneration => 91
	i64 u0x220fd4f2e7c48170, ; 140: th/Microsoft.Maui.Controls.resources => 318
	i64 u0x224538d85ed15a82, ; 141: System.IO.Pipes => 56
	i64 u0x22908438c6bed1af, ; 142: lib_System.Threading.Timer.dll.so => 148
	i64 u0x237be844f1f812c7, ; 143: System.Threading.Thread.dll => 146
	i64 u0x23852b3bdc9f7096, ; 144: System.Resources.ResourceManager => 100
	i64 u0x23986dd7e5d4fc01, ; 145: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x2407aef2bbe8fadf, ; 146: System.Console => 20
	i64 u0x240abe014b27e7d3, ; 147: Xamarin.AndroidX.Core.dll => 220
	i64 u0x247619fe4413f8bf, ; 148: System.Runtime.Serialization.Primitives.dll => 114
	i64 u0x24de8d301281575e, ; 149: Xamarin.Android.Glide => 194
	i64 u0x252073cc3caa62c2, ; 150: fr/Microsoft.Maui.Controls.resources.dll => 299
	i64 u0x256b8d41255f01b1, ; 151: Xamarin.Google.Crypto.Tink.Android => 277
	i64 u0x25e1850d10cdc8f7, ; 152: lib_Xamarin.AndroidX.Camera.Camera2.dll.so => 208
	i64 u0x2662c629b96b0b30, ; 153: lib_Xamarin.Kotlin.StdLib.dll.so => 281
	i64 u0x268c1439f13bcc29, ; 154: lib_Microsoft.Extensions.Primitives.dll.so => 187
	i64 u0x268f1dca6d06d437, ; 155: Xamarin.AndroidX.Camera.Core => 209
	i64 u0x26a670e154a9c54b, ; 156: System.Reflection.Extensions.dll => 94
	i64 u0x26d077d9678fe34f, ; 157: System.IO.dll => 58
	i64 u0x273f3515de5faf0d, ; 158: id/Microsoft.Maui.Controls.resources.dll => 304
	i64 u0x2742545f9094896d, ; 159: hr/Microsoft.Maui.Controls.resources => 302
	i64 u0x2759af78ab94d39b, ; 160: System.Net.WebSockets => 81
	i64 u0x27b2b16f3e9de038, ; 161: Xamarin.Google.Crypto.Tink.Android.dll => 277
	i64 u0x27b410442fad6cf1, ; 162: Java.Interop.dll => 169
	i64 u0x27b97e0d52c3034a, ; 163: System.Diagnostics.Debug => 26
	i64 u0x2801845a2c71fbfb, ; 164: System.Net.Primitives.dll => 71
	i64 u0x286835e259162700, ; 165: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 256
	i64 u0x2949f3617a02c6b2, ; 166: Xamarin.AndroidX.ExifInterface => 230
	i64 u0x2a128783efe70ba0, ; 167: uk/Microsoft.Maui.Controls.resources.dll => 320
	i64 u0x2a3b095612184159, ; 168: lib_System.Net.NetworkInformation.dll.so => 69
	i64 u0x2a6507a5ffabdf28, ; 169: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2ad156c8e1354139, ; 170: fi/Microsoft.Maui.Controls.resources => 298
	i64 u0x2ad5d6b13b7a3e04, ; 171: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 172: System.Text.RegularExpressions.dll => 139
	i64 u0x2afc1c4f898552ee, ; 173: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x2b148910ed40fbf9, ; 174: zh-Hant/Microsoft.Maui.Controls.resources.dll => 324
	i64 u0x2b6989d78cba9a15, ; 175: Xamarin.AndroidX.Concurrent.Futures.dll => 216
	i64 u0x2c8bd14bb93a7d82, ; 176: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 311
	i64 u0x2cbd9262ca785540, ; 177: lib_System.Text.Encoding.CodePages.dll.so => 134
	i64 u0x2cc9e1fed6257257, ; 178: lib_System.Reflection.Emit.Lightweight.dll.so => 92
	i64 u0x2cd723e9fe623c7c, ; 179: lib_System.Private.Xml.Linq.dll.so => 88
	i64 u0x2d169d318a968379, ; 180: System.Threading.dll => 149
	i64 u0x2d47774b7d993f59, ; 181: sv/Microsoft.Maui.Controls.resources.dll => 317
	i64 u0x2d5ffcae1ad0aaca, ; 182: System.Data.dll => 24
	i64 u0x2db915caf23548d2, ; 183: System.Text.Json.dll => 138
	i64 u0x2dcaa0bb15a4117a, ; 184: System.IO.UnmanagedMemoryStream.dll => 57
	i64 u0x2e5a40c319acb800, ; 185: System.IO.FileSystem => 51
	i64 u0x2e6f1f226821322a, ; 186: el/Microsoft.Maui.Controls.resources.dll => 296
	i64 u0x2f02f94df3200fe5, ; 187: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 188: System.Xml.ReaderWriter => 157
	i64 u0x2f5911d9ba814e4e, ; 189: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 190: lib_System.Xml.dll.so => 164
	i64 u0x308d8edd78b89452, ; 191: lib_barcode_app.dll.so => 0
	i64 u0x309ee9eeec09a71e, ; 192: lib_Xamarin.AndroidX.Fragment.dll.so => 231
	i64 u0x30c6dda129408828, ; 193: System.IO.IsolatedStorage => 52
	i64 u0x31195fef5d8fb552, ; 194: _Microsoft.Android.Resource.Designer.dll => 325
	i64 u0x312c8ed623cbfc8d, ; 195: Xamarin.AndroidX.Window.dll => 272
	i64 u0x31496b779ed0663d, ; 196: lib_System.Reflection.DispatchProxy.dll.so => 90
	i64 u0x32243413e774362a, ; 197: Xamarin.AndroidX.CardView.dll => 212
	i64 u0x3235427f8d12dae1, ; 198: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x329753a17a517811, ; 199: fr/Microsoft.Maui.Controls.resources => 299
	i64 u0x32aa989ff07a84ff, ; 200: lib_System.Xml.ReaderWriter.dll.so => 157
	i64 u0x33829542f112d59b, ; 201: System.Collections.Immutable => 9
	i64 u0x33a31443733849fe, ; 202: lib-es-Microsoft.Maui.Controls.resources.dll.so => 297
	i64 u0x341abc357fbb4ebf, ; 203: lib_System.Net.Sockets.dll.so => 76
	i64 u0x3496c1e2dcaf5ecc, ; 204: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i64 u0x34dfd74fe2afcf37, ; 205: Microsoft.Maui => 191
	i64 u0x34e292762d9615df, ; 206: cs/Microsoft.Maui.Controls.resources.dll => 293
	i64 u0x3508234247f48404, ; 207: Microsoft.Maui.Controls => 189
	i64 u0x353590da528c9d22, ; 208: System.ComponentModel.Annotations => 13
	i64 u0x3549870798b4cd30, ; 209: lib_Xamarin.AndroidX.ViewPager2.dll.so => 271
	i64 u0x355282fc1c909694, ; 210: Microsoft.Extensions.Configuration => 179
	i64 u0x3552fc5d578f0fbf, ; 211: Xamarin.AndroidX.Arch.Core.Common => 205
	i64 u0x355c649948d55d97, ; 212: lib_System.Runtime.Intrinsics.dll.so => 109
	i64 u0x35ea9d1c6834bc8c, ; 213: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 247
	i64 u0x3628ab68db23a01a, ; 214: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x3673b042508f5b6b, ; 215: lib_System.Runtime.Extensions.dll.so => 104
	i64 u0x36740f1a8ecdc6c4, ; 216: System.Numerics => 84
	i64 u0x36b2b50fdf589ae2, ; 217: System.Reflection.Emit.Lightweight => 92
	i64 u0x36cada77dc79928b, ; 218: System.IO.MemoryMappedFiles => 53
	i64 u0x374ef46b06791af6, ; 219: System.Reflection.Primitives.dll => 96
	i64 u0x376bf93e521a5417, ; 220: lib_Xamarin.Jetbrains.Annotations.dll.so => 280
	i64 u0x37bc29f3183003b6, ; 221: lib_System.IO.dll.so => 58
	i64 u0x380134e03b1e160a, ; 222: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 223: System.Runtime.CompilerServices.Unsafe => 102
	i64 u0x385c17636bb6fe6e, ; 224: Xamarin.AndroidX.CustomView.dll => 223
	i64 u0x38869c811d74050e, ; 225: System.Net.NameResolution.dll => 68
	i64 u0x393c226616977fdb, ; 226: lib_Xamarin.AndroidX.ViewPager.dll.so => 270
	i64 u0x395e37c3334cf82a, ; 227: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 292
	i64 u0x3ab5859054645f72, ; 228: System.Security.Cryptography.Primitives.dll => 125
	i64 u0x3ad75090c3fac0e9, ; 229: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 258
	i64 u0x3ae44ac43a1fbdbb, ; 230: System.Runtime.Serialization => 116
	i64 u0x3b860f9932505633, ; 231: lib_System.Text.Encoding.Extensions.dll.so => 135
	i64 u0x3c3aafb6b3a00bf6, ; 232: lib_System.Security.Cryptography.X509Certificates.dll.so => 126
	i64 u0x3c4049146b59aa90, ; 233: System.Runtime.InteropServices.JavaScript => 106
	i64 u0x3c7c495f58ac5ee9, ; 234: Xamarin.Kotlin.StdLib => 281
	i64 u0x3c7e5ed3d5db71bb, ; 235: System.Security => 131
	i64 u0x3cd9d281d402eb9b, ; 236: Xamarin.AndroidX.Browser.dll => 207
	i64 u0x3d1c50cc001a991e, ; 237: Xamarin.Google.Guava.ListenableFuture.dll => 279
	i64 u0x3d2b1913edfc08d7, ; 238: lib_System.Threading.ThreadPool.dll.so => 147
	i64 u0x3d46f0b995082740, ; 239: System.Xml.Linq => 156
	i64 u0x3d8a8f400514a790, ; 240: Xamarin.AndroidX.Fragment.Ktx.dll => 232
	i64 u0x3d9c2a242b040a50, ; 241: lib_Xamarin.AndroidX.Core.dll.so => 220
	i64 u0x3dbb6b9f5ab90fa7, ; 242: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 227
	i64 u0x3e5441657549b213, ; 243: Xamarin.AndroidX.ResourceInspection.Annotation => 258
	i64 u0x3e57d4d195c53c2e, ; 244: System.Reflection.TypeExtensions => 97
	i64 u0x3e616ab4ed1f3f15, ; 245: lib_System.Data.dll.so => 24
	i64 u0x3f1d226e6e06db7e, ; 246: Xamarin.AndroidX.SlidingPaneLayout.dll => 262
	i64 u0x3f510adf788828dd, ; 247: System.Threading.Tasks.Extensions => 143
	i64 u0x407740ff2e914d86, ; 248: Xamarin.AndroidX.Print.dll => 255
	i64 u0x407a10bb4bf95829, ; 249: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 251
	i64 u0x40c98b6bd77346d4, ; 250: Microsoft.VisualBasic.dll => 3
	i64 u0x41833cf766d27d96, ; 251: mscorlib => 167
	i64 u0x41cab042be111c34, ; 252: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 204
	i64 u0x423a9ecc4d905a88, ; 253: lib_System.Resources.ResourceManager.dll.so => 100
	i64 u0x423bf51ae7def810, ; 254: System.Xml.XPath => 161
	i64 u0x42462ff15ddba223, ; 255: System.Resources.Reader.dll => 99
	i64 u0x42a31b86e6ccc3f0, ; 256: System.Diagnostics.Contracts => 25
	i64 u0x430e95b891249788, ; 257: lib_System.Reflection.Emit.dll.so => 93
	i64 u0x43375950ec7c1b6a, ; 258: netstandard.dll => 168
	i64 u0x434c4e1d9284cdae, ; 259: Mono.Android.dll => 172
	i64 u0x43505013578652a0, ; 260: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 199
	i64 u0x437d06c381ed575a, ; 261: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x43950f84de7cc79a, ; 262: pl/Microsoft.Maui.Controls.resources.dll => 311
	i64 u0x43e8ca5bc927ff37, ; 263: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 229
	i64 u0x448bd33429269b19, ; 264: Microsoft.CSharp => 1
	i64 u0x4499fa3c8e494654, ; 265: lib_System.Runtime.Serialization.Primitives.dll.so => 114
	i64 u0x4515080865a951a5, ; 266: Xamarin.Kotlin.StdLib.dll => 281
	i64 u0x4545802489b736b9, ; 267: Xamarin.AndroidX.Fragment.Ktx => 232
	i64 u0x454b4d1e66bb783c, ; 268: Xamarin.AndroidX.Lifecycle.Process => 240
	i64 u0x45c40276a42e283e, ; 269: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 270: System.AppContext.dll => 6
	i64 u0x46a4213bc97fe5ae, ; 271: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 315
	i64 u0x47358bd471172e1d, ; 272: lib_System.Xml.Linq.dll.so => 156
	i64 u0x47daf4e1afbada10, ; 273: pt/Microsoft.Maui.Controls.resources => 313
	i64 u0x480c0a47dd42dd81, ; 274: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x488d293220a4fe37, ; 275: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 234
	i64 u0x49e952f19a4e2022, ; 276: System.ObjectModel => 85
	i64 u0x49f9e6948a8131e4, ; 277: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 269
	i64 u0x4a5667b2462a664b, ; 278: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 254
	i64 u0x4a7a18981dbd56bc, ; 279: System.IO.Compression.FileSystem.dll => 44
	i64 u0x4aa5c60350917c06, ; 280: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 239
	i64 u0x4b07a0ed0ab33ff4, ; 281: System.Runtime.Extensions.dll => 104
	i64 u0x4b576d47ac054f3c, ; 282: System.IO.FileSystem.AccessControl => 47
	i64 u0x4b7b6532ded934b7, ; 283: System.Text.Json => 138
	i64 u0x4c7755cf07ad2d5f, ; 284: System.Net.Http.Json.dll => 64
	i64 u0x4cc5f15266470798, ; 285: lib_Xamarin.AndroidX.Loader.dll.so => 249
	i64 u0x4cf6f67dc77aacd2, ; 286: System.Net.NetworkInformation.dll => 69
	i64 u0x4d3183dd245425d4, ; 287: System.Net.WebSockets.Client.dll => 80
	i64 u0x4d479f968a05e504, ; 288: System.Linq.Expressions.dll => 59
	i64 u0x4d55a010ffc4faff, ; 289: System.Private.Xml => 89
	i64 u0x4d5cbe77561c5b2e, ; 290: System.Web.dll => 154
	i64 u0x4d77512dbd86ee4c, ; 291: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 205
	i64 u0x4d7793536e79c309, ; 292: System.ServiceProcess => 133
	i64 u0x4d95fccc1f67c7ca, ; 293: System.Runtime.Loader.dll => 110
	i64 u0x4da4a8f0f6a70fdc, ; 294: Microsoft.Maui.Controls.Compatibility.dll => 188
	i64 u0x4dcf44c3c9b076a2, ; 295: it/Microsoft.Maui.Controls.resources.dll => 305
	i64 u0x4dd9247f1d2c3235, ; 296: Xamarin.AndroidX.Loader.dll => 249
	i64 u0x4e2aeee78e2c4a87, ; 297: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 256
	i64 u0x4e32f00cb0937401, ; 298: Mono.Android.Runtime => 171
	i64 u0x4e5eea4668ac2b18, ; 299: System.Text.Encoding.CodePages => 134
	i64 u0x4ebd0c4b82c5eefc, ; 300: lib_System.Threading.Channels.dll.so => 140
	i64 u0x4ee8eaa9c9c1151a, ; 301: System.Globalization.Calendars => 40
	i64 u0x4f21ee6ef9eb527e, ; 302: ca/Microsoft.Maui.Controls.resources => 292
	i64 u0x5037f0be3c28c7a3, ; 303: lib_Microsoft.Maui.Controls.dll.so => 189
	i64 u0x506203448c473a65, ; 304: Xamarin.Google.AutoValue.Annotations => 275
	i64 u0x50c3a29b21050d45, ; 305: System.Linq.Parallel.dll => 60
	i64 u0x5131bbe80989093f, ; 306: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 246
	i64 u0x516324a5050a7e3c, ; 307: System.Net.WebProxy => 79
	i64 u0x516d6f0b21a303de, ; 308: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x51bb8a2afe774e32, ; 309: System.Drawing => 36
	i64 u0x5247c5c32a4140f0, ; 310: System.Resources.Reader => 99
	i64 u0x526bb15e3c386364, ; 311: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 243
	i64 u0x526ce79eb8e90527, ; 312: lib_System.Net.Primitives.dll.so => 71
	i64 u0x52829f00b4467c38, ; 313: lib_System.Data.Common.dll.so => 22
	i64 u0x529ffe06f39ab8db, ; 314: Xamarin.AndroidX.Core => 220
	i64 u0x52ff996554dbf352, ; 315: Microsoft.Maui.Graphics => 193
	i64 u0x535f7e40e8fef8af, ; 316: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 316
	i64 u0x53978aac584c666e, ; 317: lib_System.Security.Cryptography.Cng.dll.so => 121
	i64 u0x53a96d5c86c9e194, ; 318: System.Net.NetworkInformation => 69
	i64 u0x53be1038a61e8d44, ; 319: System.Runtime.InteropServices.RuntimeInformation.dll => 107
	i64 u0x53c3014b9437e684, ; 320: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 322
	i64 u0x53e450ebd586f842, ; 321: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 250
	i64 u0x5435e6f049e9bc37, ; 322: System.Security.Claims.dll => 119
	i64 u0x54795225dd1587af, ; 323: lib_System.Runtime.dll.so => 117
	i64 u0x547a34f14e5f6210, ; 324: Xamarin.AndroidX.Lifecycle.Common.dll => 235
	i64 u0x556e8b63b660ab8b, ; 325: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 236
	i64 u0x5588627c9a108ec9, ; 326: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 327: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55fa0c610fe93bb1, ; 328: lib_System.Security.Cryptography.OpenSsl.dll.so => 124
	i64 u0x56442b99bc64bb47, ; 329: System.Runtime.Serialization.Xml.dll => 115
	i64 u0x56a8b26e1aeae27b, ; 330: System.Threading.Tasks.Dataflow => 142
	i64 u0x56f932d61e93c07f, ; 331: System.Globalization.Extensions => 41
	i64 u0x571c5cfbec5ae8e2, ; 332: System.Private.Uri => 87
	i64 u0x576499c9f52fea31, ; 333: Xamarin.AndroidX.Annotation => 200
	i64 u0x579a06fed6eec900, ; 334: System.Private.CoreLib.dll => 173
	i64 u0x57c542c14049b66d, ; 335: System.Diagnostics.DiagnosticSource => 27
	i64 u0x581a8bd5cfda563e, ; 336: System.Threading.Timer => 148
	i64 u0x58601b2dda4a27b9, ; 337: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 306
	i64 u0x58688d9af496b168, ; 338: Microsoft.Extensions.DependencyInjection.dll => 181
	i64 u0x588c167a79db6bfb, ; 339: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 278
	i64 u0x5906028ae5151104, ; 340: Xamarin.AndroidX.Activity.Ktx => 199
	i64 u0x595a356d23e8da9a, ; 341: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x59f9e60b9475085f, ; 342: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 201
	i64 u0x5a745f5101a75527, ; 343: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x5a89a886ae30258d, ; 344: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 219
	i64 u0x5a8f6699f4a1caa9, ; 345: lib_System.Threading.dll.so => 149
	i64 u0x5ae8e4f3eae4d547, ; 346: Xamarin.AndroidX.Legacy.Support.Core.Utils => 234
	i64 u0x5ae9cd33b15841bf, ; 347: System.ComponentModel => 18
	i64 u0x5b54391bdc6fcfe6, ; 348: System.Private.DataContractSerialization => 86
	i64 u0x5b5f0e240a06a2a2, ; 349: da/Microsoft.Maui.Controls.resources.dll => 294
	i64 u0x5b8109e8e14c5e3e, ; 350: System.Globalization.Extensions.dll => 41
	i64 u0x5bddd04d72a9e350, ; 351: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 239
	i64 u0x5bdf16b09da116ab, ; 352: Xamarin.AndroidX.Collection => 213
	i64 u0x5c019d5266093159, ; 353: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 244
	i64 u0x5c30a4a35f9cc8c4, ; 354: lib_System.Reflection.Extensions.dll.so => 94
	i64 u0x5c393624b8176517, ; 355: lib_Microsoft.Extensions.Logging.dll.so => 183
	i64 u0x5c53c29f5073b0c9, ; 356: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c87463c575c7616, ; 357: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0x5d0a4a29b02d9d3c, ; 358: System.Net.WebHeaderCollection.dll => 78
	i64 u0x5d1b514fc45c92d4, ; 359: ZXing.Net.MAUI => 290
	i64 u0x5d40c9b15181641f, ; 360: lib_Xamarin.AndroidX.Emoji2.dll.so => 228
	i64 u0x5d6ca10d35e9485b, ; 361: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 216
	i64 u0x5d7ec76c1c703055, ; 362: System.Threading.Tasks.Parallel => 144
	i64 u0x5db0cbbd1028510e, ; 363: lib_System.Runtime.InteropServices.dll.so => 108
	i64 u0x5db30905d3e5013b, ; 364: Xamarin.AndroidX.Collection.Jvm.dll => 214
	i64 u0x5e467bc8f09ad026, ; 365: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 366: System.Runtime.Handles.dll => 105
	i64 u0x5ea92fdb19ec8c4c, ; 367: System.Text.Encodings.Web.dll => 137
	i64 u0x5eb8046dd40e9ac3, ; 368: System.ComponentModel.Primitives => 16
	i64 u0x5ec272d219c9aba4, ; 369: System.Security.Cryptography.Csp.dll => 122
	i64 u0x5eee1376d94c7f5e, ; 370: System.Net.HttpListener.dll => 66
	i64 u0x5f36ccf5c6a57e24, ; 371: System.Xml.ReaderWriter.dll => 157
	i64 u0x5f4294b9b63cb842, ; 372: System.Data.Common => 22
	i64 u0x5f9a2d823f664957, ; 373: lib-el-Microsoft.Maui.Controls.resources.dll.so => 296
	i64 u0x5fa6da9c3cd8142a, ; 374: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 287
	i64 u0x5fac98e0b37a5b9d, ; 375: System.Runtime.CompilerServices.Unsafe.dll => 102
	i64 u0x609f4b7b63d802d4, ; 376: lib_Microsoft.Extensions.DependencyInjection.dll.so => 181
	i64 u0x60cd4e33d7e60134, ; 377: Xamarin.KotlinX.Coroutines.Core.Jvm => 286
	i64 u0x60f62d786afcf130, ; 378: System.Memory => 63
	i64 u0x61bb78c89f867353, ; 379: System.IO => 58
	i64 u0x61be8d1299194243, ; 380: Microsoft.Maui.Controls.Xaml => 190
	i64 u0x61d2cba29557038f, ; 381: de/Microsoft.Maui.Controls.resources => 295
	i64 u0x61d88f399afb2f45, ; 382: lib_System.Runtime.Loader.dll.so => 110
	i64 u0x622eef6f9e59068d, ; 383: System.Private.CoreLib => 173
	i64 u0x63d5e3aa4ef9b931, ; 384: Xamarin.KotlinX.Coroutines.Android.dll => 284
	i64 u0x63f1f6883c1e23c2, ; 385: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x6400f68068c1e9f1, ; 386: Xamarin.Google.Android.Material.dll => 274
	i64 u0x640e3b14dbd325c2, ; 387: System.Security.Cryptography.Algorithms.dll => 120
	i64 u0x64587004560099b9, ; 388: System.Reflection => 98
	i64 u0x64b1529a438a3c45, ; 389: lib_System.Runtime.Handles.dll.so => 105
	i64 u0x6565fba2cd8f235b, ; 390: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 247
	i64 u0x658f524e4aba7dad, ; 391: CommunityToolkit.Maui.dll => 176
	i64 u0x65ecac39144dd3cc, ; 392: Microsoft.Maui.Controls.dll => 189
	i64 u0x65ece51227bfa724, ; 393: lib_System.Runtime.Numerics.dll.so => 111
	i64 u0x661722438787b57f, ; 394: Xamarin.AndroidX.Annotation.Jvm.dll => 202
	i64 u0x6679b2337ee6b22a, ; 395: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x6692e924eade1b29, ; 396: lib_System.Console.dll.so => 20
	i64 u0x66a4e5c6a3fb0bae, ; 397: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 246
	i64 u0x66d13304ce1a3efa, ; 398: Xamarin.AndroidX.CursorAdapter => 222
	i64 u0x674303f65d8fad6f, ; 399: lib_System.Net.Quic.dll.so => 72
	i64 u0x6756ca4cad62e9d6, ; 400: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 218
	i64 u0x67c0802770244408, ; 401: System.Windows.dll => 155
	i64 u0x68100b69286e27cd, ; 402: lib_System.Formats.Tar.dll.so => 39
	i64 u0x68558ec653afa616, ; 403: lib-da-Microsoft.Maui.Controls.resources.dll.so => 294
	i64 u0x6872ec7a2e36b1ac, ; 404: System.Drawing.Primitives.dll => 35
	i64 u0x68bb2c417aa9b61c, ; 405: Xamarin.KotlinX.AtomicFU.dll => 282
	i64 u0x68fbbbe2eb455198, ; 406: System.Formats.Asn1 => 38
	i64 u0x69063fc0ba8e6bdd, ; 407: he/Microsoft.Maui.Controls.resources.dll => 300
	i64 u0x69a3e26c76f6eec4, ; 408: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 273
	i64 u0x6a4d7577b2317255, ; 409: System.Runtime.InteropServices.dll => 108
	i64 u0x6ace3b74b15ee4a4, ; 410: nb/Microsoft.Maui.Controls.resources => 309
	i64 u0x6afcedb171067e2b, ; 411: System.Core.dll => 21
	i64 u0x6bef98e124147c24, ; 412: Xamarin.Jetbrains.Annotations => 280
	i64 u0x6ce874bff138ce2b, ; 413: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 245
	i64 u0x6d12bfaa99c72b1f, ; 414: lib_Microsoft.Maui.Graphics.dll.so => 193
	i64 u0x6d70755158ca866e, ; 415: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d79993361e10ef2, ; 416: Microsoft.Extensions.Primitives => 187
	i64 u0x6d7eeca99577fc8b, ; 417: lib_System.Net.WebProxy.dll.so => 79
	i64 u0x6d8515b19946b6a2, ; 418: System.Net.WebProxy.dll => 79
	i64 u0x6d86d56b84c8eb71, ; 419: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 222
	i64 u0x6d9bea6b3e895cf7, ; 420: Microsoft.Extensions.Primitives.dll => 187
	i64 u0x6dd9bf4083de3f6a, ; 421: Xamarin.AndroidX.DocumentFile.dll => 225
	i64 u0x6e25a02c3833319a, ; 422: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 252
	i64 u0x6e79c6bd8627412a, ; 423: Xamarin.AndroidX.SavedState.SavedState.Ktx => 260
	i64 u0x6e838d9a2a6f6c9e, ; 424: lib_System.ValueTuple.dll.so => 152
	i64 u0x6e9965ce1095e60a, ; 425: lib_System.Core.dll.so => 21
	i64 u0x6fd2265da78b93a4, ; 426: lib_Microsoft.Maui.dll.so => 191
	i64 u0x6fdfc7de82c33008, ; 427: cs/Microsoft.Maui.Controls.resources => 293
	i64 u0x6ffc4967cc47ba57, ; 428: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x701cd46a1c25a5fe, ; 429: System.IO.FileSystem.dll => 51
	i64 u0x70e99f48c05cb921, ; 430: tr/Microsoft.Maui.Controls.resources.dll => 319
	i64 u0x70fd3deda22442d2, ; 431: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 309
	i64 u0x71485e7ffdb4b958, ; 432: System.Reflection.Extensions => 94
	i64 u0x7162a2fce67a945f, ; 433: lib_Xamarin.Android.Glide.Annotations.dll.so => 195
	i64 u0x71a495ea3761dde8, ; 434: lib-it-Microsoft.Maui.Controls.resources.dll.so => 305
	i64 u0x71ad672adbe48f35, ; 435: System.ComponentModel.Primitives.dll => 16
	i64 u0x725f5a9e82a45c81, ; 436: System.Security.Cryptography.Encoding => 123
	i64 u0x72b1fb4109e08d7b, ; 437: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 302
	i64 u0x72e0300099accce1, ; 438: System.Xml.XPath.XDocument => 160
	i64 u0x730bfb248998f67a, ; 439: System.IO.Compression.ZipFile => 45
	i64 u0x732b2d67b9e5c47b, ; 440: Xamarin.Google.ErrorProne.Annotations.dll => 278
	i64 u0x734b76fdc0dc05bb, ; 441: lib_GoogleGson.dll.so => 178
	i64 u0x73a6be34e822f9d1, ; 442: lib_System.Runtime.Serialization.dll.so => 116
	i64 u0x73e4ce94e2eb6ffc, ; 443: lib_System.Memory.dll.so => 63
	i64 u0x743a1eccf080489a, ; 444: WindowsBase.dll => 166
	i64 u0x755a91767330b3d4, ; 445: lib_Microsoft.Extensions.Configuration.dll.so => 179
	i64 u0x75c326eb821b85c4, ; 446: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x76012e7334db86e5, ; 447: lib_Xamarin.AndroidX.SavedState.dll.so => 259
	i64 u0x76ca07b878f44da0, ; 448: System.Runtime.Numerics.dll => 111
	i64 u0x7736c8a96e51a061, ; 449: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 202
	i64 u0x778a805e625329ef, ; 450: System.Linq.Parallel => 60
	i64 u0x779290cc2b801eb7, ; 451: Xamarin.KotlinX.AtomicFU.Jvm => 283
	i64 u0x77bf40592cd67602, ; 452: Xamarin.Google.AutoValue.Annotations.dll => 275
	i64 u0x77f8a4acc2fdc449, ; 453: System.Security.Cryptography.Cng.dll => 121
	i64 u0x780bc73597a503a9, ; 454: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 308
	i64 u0x782c5d8eb99ff201, ; 455: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x783606d1e53e7a1a, ; 456: th/Microsoft.Maui.Controls.resources.dll => 318
	i64 u0x78a45e51311409b6, ; 457: Xamarin.AndroidX.Fragment.dll => 231
	i64 u0x78ed4ab8f9d800a1, ; 458: Xamarin.AndroidX.Lifecycle.ViewModel => 245
	i64 u0x7a39601d6f0bb831, ; 459: lib_Xamarin.KotlinX.AtomicFU.dll.so => 282
	i64 u0x7a7e7eddf79c5d26, ; 460: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 245
	i64 u0x7a9a57d43b0845fa, ; 461: System.AppContext => 6
	i64 u0x7ad0f4f1e5d08183, ; 462: Xamarin.AndroidX.Collection.dll => 213
	i64 u0x7adb8da2ac89b647, ; 463: fi/Microsoft.Maui.Controls.resources.dll => 298
	i64 u0x7b13d9eaa944ade8, ; 464: Xamarin.AndroidX.DynamicAnimation.dll => 227
	i64 u0x7bef86a4335c4870, ; 465: System.ComponentModel.TypeConverter => 17
	i64 u0x7c0820144cd34d6a, ; 466: sk/Microsoft.Maui.Controls.resources.dll => 316
	i64 u0x7c2a0bd1e0f988fc, ; 467: lib-de-Microsoft.Maui.Controls.resources.dll.so => 295
	i64 u0x7c41d387501568ba, ; 468: System.Net.WebClient.dll => 77
	i64 u0x7c482cd79bd24b13, ; 469: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 217
	i64 u0x7c8cb8cf04bee12b, ; 470: lib_Xamarin.Google.AutoValue.Annotations.dll.so => 275
	i64 u0x7cc637f941f716d0, ; 471: CommunityToolkit.Maui.Core => 177
	i64 u0x7cd2ec8eaf5241cd, ; 472: System.Security.dll => 131
	i64 u0x7cf9ae50dd350622, ; 473: Xamarin.Jetbrains.Annotations.dll => 280
	i64 u0x7d649b75d580bb42, ; 474: ms/Microsoft.Maui.Controls.resources.dll => 308
	i64 u0x7d8ee2bdc8e3aad1, ; 475: System.Numerics.Vectors => 83
	i64 u0x7df5df8db8eaa6ac, ; 476: Microsoft.Extensions.Logging.Debug => 185
	i64 u0x7dfc3d6d9d8d7b70, ; 477: System.Collections => 12
	i64 u0x7e2e564fa2f76c65, ; 478: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 479: lib_System.Security.Claims.dll.so => 119
	i64 u0x7e4465b3f78ad8d0, ; 480: Xamarin.KotlinX.Serialization.Core.dll => 287
	i64 u0x7e571cad5915e6c3, ; 481: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 240
	i64 u0x7e6b1ca712437d7d, ; 482: Xamarin.AndroidX.Emoji2.ViewsHelper => 229
	i64 u0x7e946809d6008ef2, ; 483: lib_System.ObjectModel.dll.so => 85
	i64 u0x7ea0272c1b4a9635, ; 484: lib_Xamarin.Android.Glide.dll.so => 194
	i64 u0x7ecc13347c8fd849, ; 485: lib_System.ComponentModel.dll.so => 18
	i64 u0x7f00ddd9b9ca5a13, ; 486: Xamarin.AndroidX.ViewPager.dll => 270
	i64 u0x7f9351cd44b1273f, ; 487: Microsoft.Extensions.Configuration.Abstractions => 180
	i64 u0x7fbd557c99b3ce6f, ; 488: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 238
	i64 u0x8076a9a44a2ca331, ; 489: System.Net.Quic => 72
	i64 u0x80da183a87731838, ; 490: System.Reflection.Metadata => 95
	i64 u0x812c069d5cdecc17, ; 491: System.dll => 165
	i64 u0x81381be520a60adb, ; 492: Xamarin.AndroidX.Interpolator.dll => 233
	i64 u0x81657cec2b31e8aa, ; 493: System.Net => 82
	i64 u0x81ab745f6c0f5ce6, ; 494: zh-Hant/Microsoft.Maui.Controls.resources => 324
	i64 u0x8277f2be6b5ce05f, ; 495: Xamarin.AndroidX.AppCompat => 203
	i64 u0x828f06563b30bc50, ; 496: lib_Xamarin.AndroidX.CardView.dll.so => 212
	i64 u0x82920a8d9194a019, ; 497: Xamarin.KotlinX.AtomicFU.Jvm.dll => 283
	i64 u0x82b399cb01b531c4, ; 498: lib_System.Web.dll.so => 154
	i64 u0x82df8f5532a10c59, ; 499: lib_System.Drawing.dll.so => 36
	i64 u0x82f0b6e911d13535, ; 500: lib_System.Transactions.dll.so => 151
	i64 u0x82f6403342e12049, ; 501: uk/Microsoft.Maui.Controls.resources => 320
	i64 u0x83c14ba66c8e2b8c, ; 502: zh-Hans/Microsoft.Maui.Controls.resources => 323
	i64 u0x844ac8f64fd78edc, ; 503: Xamarin.AndroidX.Camera.View.dll => 211
	i64 u0x846ce984efea52c7, ; 504: System.Threading.Tasks.Parallel.dll => 144
	i64 u0x84ae73148a4557d2, ; 505: lib_System.IO.Pipes.dll.so => 56
	i64 u0x84b01102c12a9232, ; 506: System.Runtime.Serialization.Json.dll => 113
	i64 u0x850c5ba0b57ce8e7, ; 507: lib_Xamarin.AndroidX.Collection.dll.so => 213
	i64 u0x851d02edd334b044, ; 508: Xamarin.AndroidX.VectorDrawable => 267
	i64 u0x85c919db62150978, ; 509: Xamarin.AndroidX.Transition.dll => 266
	i64 u0x8662aaeb94fef37f, ; 510: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x86a909228dc7657b, ; 511: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 324
	i64 u0x86b3e00c36b84509, ; 512: Microsoft.Extensions.Configuration.dll => 179
	i64 u0x86b62cb077ec4fd7, ; 513: System.Runtime.Serialization.Xml => 115
	i64 u0x8706ffb12bf3f53d, ; 514: Xamarin.AndroidX.Annotation.Experimental => 201
	i64 u0x872a5b14c18d328c, ; 515: System.ComponentModel.DataAnnotations => 14
	i64 u0x872fb9615bc2dff0, ; 516: Xamarin.Android.Glide.Annotations.dll => 195
	i64 u0x87c69b87d9283884, ; 517: lib_System.Threading.Thread.dll.so => 146
	i64 u0x87f6569b25707834, ; 518: System.IO.Compression.Brotli.dll => 43
	i64 u0x8842b3a5d2d3fb36, ; 519: Microsoft.Maui.Essentials => 192
	i64 u0x88926583efe7ee86, ; 520: Xamarin.AndroidX.Activity.Ktx.dll => 199
	i64 u0x88ba6bc4f7762b03, ; 521: lib_System.Reflection.dll.so => 98
	i64 u0x88bda98e0cffb7a9, ; 522: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 286
	i64 u0x8930322c7bd8f768, ; 523: netstandard => 168
	i64 u0x897a606c9e39c75f, ; 524: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x89911a22005b92b7, ; 525: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x89c5188089ec2cd5, ; 526: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 107
	i64 u0x8a19e3dc71b34b2c, ; 527: System.Reflection.TypeExtensions.dll => 97
	i64 u0x8ad229ea26432ee2, ; 528: Xamarin.AndroidX.Loader => 249
	i64 u0x8b4ff5d0fdd5faa1, ; 529: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b541d476eb3774c, ; 530: System.Security.Principal.Windows => 128
	i64 u0x8b8d01333a96d0b5, ; 531: System.Diagnostics.Process.dll => 29
	i64 u0x8b9ceca7acae3451, ; 532: lib-he-Microsoft.Maui.Controls.resources.dll.so => 300
	i64 u0x8cb8f612b633affb, ; 533: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 260
	i64 u0x8cdfdb4ce85fb925, ; 534: lib_System.Security.Principal.Windows.dll.so => 128
	i64 u0x8cdfe7b8f4caa426, ; 535: System.IO.Compression.FileSystem => 44
	i64 u0x8d0f420977c2c1c7, ; 536: Xamarin.AndroidX.CursorAdapter.dll => 222
	i64 u0x8d52f7ea2796c531, ; 537: Xamarin.AndroidX.Emoji2.dll => 228
	i64 u0x8d7b8ab4b3310ead, ; 538: System.Threading => 149
	i64 u0x8da188285aadfe8e, ; 539: System.Collections.Concurrent => 8
	i64 u0x8ed807bfe9858dfc, ; 540: Xamarin.AndroidX.Navigation.Common => 251
	i64 u0x8ee08b8194a30f48, ; 541: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 301
	i64 u0x8ef7601039857a44, ; 542: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 314
	i64 u0x8f32c6f611f6ffab, ; 543: pt/Microsoft.Maui.Controls.resources.dll => 313
	i64 u0x8f44b45eb046bbd1, ; 544: System.ServiceModel.Web.dll => 132
	i64 u0x8f8829d21c8985a4, ; 545: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 312
	i64 u0x8fbf5b0114c6dcef, ; 546: System.Globalization.dll => 42
	i64 u0x8fcc8c2a81f3d9e7, ; 547: Xamarin.KotlinX.Serialization.Core => 287
	i64 u0x90263f8448b8f572, ; 548: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x903101b46fb73a04, ; 549: _Microsoft.Android.Resource.Designer => 325
	i64 u0x90393bd4865292f3, ; 550: lib_System.IO.Compression.dll.so => 46
	i64 u0x905e2b8e7ae91ae6, ; 551: System.Threading.Tasks.Extensions.dll => 143
	i64 u0x90634f86c5ebe2b5, ; 552: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 246
	i64 u0x907b636704ad79ef, ; 553: lib_Microsoft.Maui.Controls.Xaml.dll.so => 190
	i64 u0x90e9efbfd68593e0, ; 554: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 237
	i64 u0x91418dc638b29e68, ; 555: lib_Xamarin.AndroidX.CustomView.dll.so => 223
	i64 u0x9157bd523cd7ed36, ; 556: lib_System.Text.Json.dll.so => 138
	i64 u0x91a74f07b30d37e2, ; 557: System.Linq.dll => 62
	i64 u0x91cb86ea3b17111d, ; 558: System.ServiceModel.Web => 132
	i64 u0x91fa41a87223399f, ; 559: ca/Microsoft.Maui.Controls.resources.dll => 292
	i64 u0x92054e486c0c7ea7, ; 560: System.IO.FileSystem.DriveInfo => 48
	i64 u0x928614058c40c4cd, ; 561: lib_System.Xml.XPath.XDocument.dll.so => 160
	i64 u0x92b138fffca2b01e, ; 562: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 206
	i64 u0x92dfc2bfc6c6a888, ; 563: Xamarin.AndroidX.Lifecycle.LiveData => 237
	i64 u0x933da2c779423d68, ; 564: Xamarin.Android.Glide.Annotations => 195
	i64 u0x9388aad9b7ae40ce, ; 565: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 235
	i64 u0x93cfa73ab28d6e35, ; 566: ms/Microsoft.Maui.Controls.resources => 308
	i64 u0x941c00d21e5c0679, ; 567: lib_Xamarin.AndroidX.Transition.dll.so => 266
	i64 u0x944077d8ca3c6580, ; 568: System.IO.Compression.dll => 46
	i64 u0x948cffedc8ed7960, ; 569: System.Xml => 164
	i64 u0x94c8990839c4bdb1, ; 570: lib_Xamarin.AndroidX.Interpolator.dll.so => 233
	i64 u0x95c6b36f5f5d7039, ; 571: Xamarin.AndroidX.Camera.Camera2 => 208
	i64 u0x95d757769563d0d3, ; 572: Xamarin.AndroidX.Camera.Lifecycle.dll => 210
	i64 u0x967fc325e09bfa8c, ; 573: es/Microsoft.Maui.Controls.resources => 297
	i64 u0x9686161486d34b81, ; 574: lib_Xamarin.AndroidX.ExifInterface.dll.so => 230
	i64 u0x9732d8dbddea3d9a, ; 575: id/Microsoft.Maui.Controls.resources => 304
	i64 u0x978be80e5210d31b, ; 576: Microsoft.Maui.Graphics.dll => 193
	i64 u0x97b8c771ea3e4220, ; 577: System.ComponentModel.dll => 18
	i64 u0x97e144c9d3c6976e, ; 578: System.Collections.Concurrent.dll => 8
	i64 u0x980f0648e7533e48, ; 579: Camera.MAUI.ZXing.dll => 175
	i64 u0x984184e3c70d4419, ; 580: GoogleGson => 178
	i64 u0x9843944103683dd3, ; 581: Xamarin.AndroidX.Core.Core.Ktx => 221
	i64 u0x98d720cc4597562c, ; 582: System.Security.Cryptography.OpenSsl => 124
	i64 u0x99052c1297204af4, ; 583: lib_Xamarin.AndroidX.Camera.Core.dll.so => 209
	i64 u0x991d510397f92d9d, ; 584: System.Linq.Expressions => 59
	i64 u0x993cc632e821c001, ; 585: Microsoft.Maui.Controls.Compatibility => 188
	i64 u0x996ceeb8a3da3d67, ; 586: System.Threading.Overlapped.dll => 141
	i64 u0x99a00ca5270c6878, ; 587: Xamarin.AndroidX.Navigation.Runtime => 253
	i64 u0x99cdc6d1f2d3a72f, ; 588: ko/Microsoft.Maui.Controls.resources.dll => 307
	i64 u0x9a01b1da98b6ee10, ; 589: Xamarin.AndroidX.Lifecycle.Runtime.dll => 241
	i64 u0x9a5ccc274fd6e6ee, ; 590: Jsr305Binding.dll => 276
	i64 u0x9ae6940b11c02876, ; 591: lib_Xamarin.AndroidX.Window.dll.so => 272
	i64 u0x9b211a749105beac, ; 592: System.Transactions.Local => 150
	i64 u0x9b8734714671022d, ; 593: System.Threading.Tasks.Dataflow.dll => 142
	i64 u0x9bc6aea27fbf034f, ; 594: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 285
	i64 u0x9bd8cc74558ad4c7, ; 595: Xamarin.KotlinX.AtomicFU => 282
	i64 u0x9c244ac7cda32d26, ; 596: System.Security.Cryptography.X509Certificates.dll => 126
	i64 u0x9c465f280cf43733, ; 597: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 284
	i64 u0x9c8f6872beab6408, ; 598: System.Xml.XPath.XDocument.dll => 160
	i64 u0x9ce01cf91101ae23, ; 599: System.Xml.XmlDocument => 162
	i64 u0x9d128180c81d7ce6, ; 600: Xamarin.AndroidX.CustomView.PoolingContainer => 224
	i64 u0x9d5dbcf5a48583fe, ; 601: lib_Xamarin.AndroidX.Activity.dll.so => 198
	i64 u0x9d74dee1a7725f34, ; 602: Microsoft.Extensions.Configuration.Abstractions.dll => 180
	i64 u0x9e4534b6adaf6e84, ; 603: nl/Microsoft.Maui.Controls.resources => 310
	i64 u0x9e4b95dec42769f7, ; 604: System.Diagnostics.Debug.dll => 26
	i64 u0x9eaf1efdf6f7267e, ; 605: Xamarin.AndroidX.Navigation.Common.dll => 251
	i64 u0x9ef542cf1f78c506, ; 606: Xamarin.AndroidX.Lifecycle.LiveData.Core => 238
	i64 u0x9ff334e3cf272fd6, ; 607: lib_Xamarin.AndroidX.Camera.Lifecycle.dll.so => 210
	i64 u0xa00832eb975f56a8, ; 608: lib_System.Net.dll.so => 82
	i64 u0xa0ad78236b7b267f, ; 609: Xamarin.AndroidX.Window => 272
	i64 u0xa0d8259f4cc284ec, ; 610: lib_System.Security.Cryptography.dll.so => 127
	i64 u0xa0e17ca50c77a225, ; 611: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 277
	i64 u0xa0ff9b3e34d92f11, ; 612: lib_System.Resources.Writer.dll.so => 101
	i64 u0xa12fbfb4da97d9f3, ; 613: System.Threading.Timer.dll => 148
	i64 u0xa1440773ee9d341e, ; 614: Xamarin.Google.Android.Material => 274
	i64 u0xa1b9d7c27f47219f, ; 615: Xamarin.AndroidX.Navigation.UI.dll => 254
	i64 u0xa2572680829d2c7c, ; 616: System.IO.Pipelines.dll => 54
	i64 u0xa26597e57ee9c7f6, ; 617: System.Xml.XmlDocument.dll => 162
	i64 u0xa308401900e5bed3, ; 618: lib_mscorlib.dll.so => 167
	i64 u0xa395572e7da6c99d, ; 619: lib_System.Security.dll.so => 131
	i64 u0xa3e683f24b43af6f, ; 620: System.Dynamic.Runtime.dll => 37
	i64 u0xa4145becdee3dc4f, ; 621: Xamarin.AndroidX.VectorDrawable.Animated => 268
	i64 u0xa46aa1eaa214539b, ; 622: ko/Microsoft.Maui.Controls.resources => 307
	i64 u0xa4edc8f2ceae241a, ; 623: System.Data.Common.dll => 22
	i64 u0xa5494f40f128ce6a, ; 624: System.Runtime.Serialization.Formatters.dll => 112
	i64 u0xa54b74df83dce92b, ; 625: System.Reflection.DispatchProxy => 90
	i64 u0xa579ed010d7e5215, ; 626: Xamarin.AndroidX.DocumentFile => 225
	i64 u0xa5b7152421ed6d98, ; 627: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0xa5c3844f17b822db, ; 628: lib_System.Linq.Parallel.dll.so => 60
	i64 u0xa5ce5c755bde8cb8, ; 629: lib_System.Security.Cryptography.Csp.dll.so => 122
	i64 u0xa5e599d1e0524750, ; 630: System.Numerics.Vectors.dll => 83
	i64 u0xa5f1ba49b85dd355, ; 631: System.Security.Cryptography.dll => 127
	i64 u0xa61975a5a37873ea, ; 632: lib_System.Xml.XmlSerializer.dll.so => 163
	i64 u0xa6593e21584384d2, ; 633: lib_Jsr305Binding.dll.so => 276
	i64 u0xa66cbee0130865f7, ; 634: lib_WindowsBase.dll.so => 166
	i64 u0xa67dbee13e1df9ca, ; 635: Xamarin.AndroidX.SavedState.dll => 259
	i64 u0xa684b098dd27b296, ; 636: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 261
	i64 u0xa68a420042bb9b1f, ; 637: Xamarin.AndroidX.DrawerLayout.dll => 226
	i64 u0xa6d26156d1cacc7c, ; 638: Xamarin.Android.Glide.dll => 194
	i64 u0xa75386b5cb9595aa, ; 639: Xamarin.AndroidX.Lifecycle.Runtime.Android => 242
	i64 u0xa763fbb98df8d9fb, ; 640: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa78ce3745383236a, ; 641: Xamarin.AndroidX.Lifecycle.Common.Jvm => 236
	i64 u0xa7c31b56b4dc7b33, ; 642: hu/Microsoft.Maui.Controls.resources => 303
	i64 u0xa7eab29ed44b4e7a, ; 643: Mono.Android.Export => 170
	i64 u0xa8195217cbf017b7, ; 644: Microsoft.VisualBasic.Core => 2
	i64 u0xa859a95830f367ff, ; 645: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 247
	i64 u0xa8b52f21e0dbe690, ; 646: System.Runtime.Serialization.dll => 116
	i64 u0xa8ee4ed7de2efaee, ; 647: Xamarin.AndroidX.Annotation.dll => 200
	i64 u0xa95590e7c57438a4, ; 648: System.Configuration => 19
	i64 u0xa964304b5631e28a, ; 649: CommunityToolkit.Maui.Core.dll => 177
	i64 u0xaa2219c8e3449ff5, ; 650: Microsoft.Extensions.Logging.Abstractions => 184
	i64 u0xaa443ac34067eeef, ; 651: System.Private.Xml.dll => 89
	i64 u0xaa52de307ef5d1dd, ; 652: System.Net.Http => 65
	i64 u0xaa9a7b0214a5cc5c, ; 653: System.Diagnostics.StackTrace.dll => 30
	i64 u0xaaaf86367285a918, ; 654: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 182
	i64 u0xaaf84bb3f052a265, ; 655: el/Microsoft.Maui.Controls.resources => 296
	i64 u0xab9af77b5b67a0b8, ; 656: Xamarin.AndroidX.ConstraintLayout.Core => 218
	i64 u0xab9c1b2687d86b0b, ; 657: lib_System.Linq.Expressions.dll.so => 59
	i64 u0xac2af3fa195a15ce, ; 658: System.Runtime.Numerics => 111
	i64 u0xac5376a2a538dc10, ; 659: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 238
	i64 u0xac5acae88f60357e, ; 660: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 661: System.Security.Principal.Windows.dll => 128
	i64 u0xac98d31068e24591, ; 662: System.Xml.XDocument => 159
	i64 u0xacd46e002c3ccb97, ; 663: ro/Microsoft.Maui.Controls.resources => 314
	i64 u0xacdd9e4180d56dda, ; 664: Xamarin.AndroidX.Concurrent.Futures => 216
	i64 u0xacf42eea7ef9cd12, ; 665: System.Threading.Channels => 140
	i64 u0xad7e82ed3b0f16d0, ; 666: lib_Xamarin.AndroidX.DocumentFile.dll.so => 225
	i64 u0xad89c07347f1bad6, ; 667: nl/Microsoft.Maui.Controls.resources.dll => 310
	i64 u0xadbb53caf78a79d2, ; 668: System.Web.HttpUtility => 153
	i64 u0xadc90ab061a9e6e4, ; 669: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadca1b9030b9317e, ; 670: Xamarin.AndroidX.Collection.Ktx => 215
	i64 u0xadd8eda2edf396ad, ; 671: Xamarin.Android.Glide.GifDecoder => 197
	i64 u0xadf4cf30debbeb9a, ; 672: System.Net.ServicePoint.dll => 75
	i64 u0xadf511667bef3595, ; 673: System.Net.Security => 74
	i64 u0xae0aaa94fdcfce0f, ; 674: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 675: Java.Interop => 169
	i64 u0xae53579c90db1107, ; 676: System.ObjectModel.dll => 85
	i64 u0xaec7c0c7e2ed4575, ; 677: lib_Xamarin.KotlinX.AtomicFU.Jvm.dll.so => 283
	i64 u0xaeff91ca52722081, ; 678: barcode_app.dll => 0
	i64 u0xaf732d0b2193b8f5, ; 679: System.Security.Cryptography.OpenSsl.dll => 124
	i64 u0xafdb94dbccd9d11c, ; 680: Xamarin.AndroidX.Lifecycle.LiveData.dll => 237
	i64 u0xafe29f45095518e7, ; 681: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 248
	i64 u0xb03ae931fb25607e, ; 682: Xamarin.AndroidX.ConstraintLayout => 217
	i64 u0xb05cc42cd94c6d9d, ; 683: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 317
	i64 u0xb0ac21bec8f428c5, ; 684: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 244
	i64 u0xb0bb43dc52ea59f9, ; 685: System.Diagnostics.Tracing.dll => 34
	i64 u0xb1dd05401aa8ee63, ; 686: System.Security.AccessControl => 118
	i64 u0xb220631954820169, ; 687: System.Text.RegularExpressions => 139
	i64 u0xb2376e1dbf8b4ed7, ; 688: System.Security.Cryptography.Csp => 122
	i64 u0xb2a1959fe95c5402, ; 689: lib_System.Runtime.InteropServices.JavaScript.dll.so => 106
	i64 u0xb2a3f67f3bf29fce, ; 690: da/Microsoft.Maui.Controls.resources => 294
	i64 u0xb3874072ee0ecf8c, ; 691: Xamarin.AndroidX.VectorDrawable.Animated.dll => 268
	i64 u0xb3f0a0fcda8d3ebc, ; 692: Xamarin.AndroidX.CardView => 212
	i64 u0xb46be1aa6d4fff93, ; 693: hi/Microsoft.Maui.Controls.resources => 301
	i64 u0xb477491be13109d8, ; 694: ar/Microsoft.Maui.Controls.resources => 291
	i64 u0xb4bd7015ecee9d86, ; 695: System.IO.Pipelines => 54
	i64 u0xb4c53d9749c5f226, ; 696: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xb4ff710863453fda, ; 697: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb5c38bf497a4cfe2, ; 698: lib_System.Threading.Tasks.dll.so => 145
	i64 u0xb5c7fcdafbc67ee4, ; 699: Microsoft.Extensions.Logging.Abstractions.dll => 184
	i64 u0xb5ea31d5244c6626, ; 700: System.Threading.ThreadPool.dll => 147
	i64 u0xb7212c4683a94afe, ; 701: System.Drawing.Primitives => 35
	i64 u0xb7b7753d1f319409, ; 702: sv/Microsoft.Maui.Controls.resources => 317
	i64 u0xb81a2c6e0aee50fe, ; 703: lib_System.Private.CoreLib.dll.so => 173
	i64 u0xb8b0a9b3dfbc5cb7, ; 704: Xamarin.AndroidX.Window.Extensions.Core.Core => 273
	i64 u0xb8c60af47c08d4da, ; 705: System.Net.ServicePoint => 75
	i64 u0xb8e68d20aad91196, ; 706: lib_System.Xml.XPath.dll.so => 161
	i64 u0xb9185c33a1643eed, ; 707: Microsoft.CSharp.dll => 1
	i64 u0xb9b8001adf4ed7cc, ; 708: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 262
	i64 u0xb9f64d3b230def68, ; 709: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 313
	i64 u0xb9fc3c8a556e3691, ; 710: ja/Microsoft.Maui.Controls.resources => 306
	i64 u0xba4670aa94a2b3c6, ; 711: lib_System.Xml.XDocument.dll.so => 159
	i64 u0xba48785529705af9, ; 712: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 713: lib_System.Windows.dll.so => 155
	i64 u0xbb2120cc3efc81b5, ; 714: Camera.MAUI.ZXing => 175
	i64 u0xbb286883bc35db36, ; 715: System.Transactions.dll => 151
	i64 u0xbb65706fde942ce3, ; 716: System.Net.Sockets => 76
	i64 u0xbb6dc0b35452c1a0, ; 717: ZXing.Net.MAUI.dll => 290
	i64 u0xbba28979413cad9e, ; 718: lib_System.Runtime.CompilerServices.VisualC.dll.so => 103
	i64 u0xbbd180354b67271a, ; 719: System.Runtime.Serialization.Formatters => 112
	i64 u0xbc260cdba33291a3, ; 720: Xamarin.AndroidX.Arch.Core.Common.dll => 205
	i64 u0xbd0e2c0d55246576, ; 721: System.Net.Http.dll => 65
	i64 u0xbd3fbd85b9e1cb29, ; 722: lib_System.Net.HttpListener.dll.so => 66
	i64 u0xbd437a2cdb333d0d, ; 723: Xamarin.AndroidX.ViewPager2 => 271
	i64 u0xbd4f572d2bd0a789, ; 724: System.IO.Compression.ZipFile.dll => 45
	i64 u0xbd5d0b88d3d647a5, ; 725: lib_Xamarin.AndroidX.Browser.dll.so => 207
	i64 u0xbd877b14d0b56392, ; 726: System.Runtime.Intrinsics.dll => 109
	i64 u0xbe532a80075c3dc8, ; 727: Xamarin.AndroidX.Camera.Core.dll => 209
	i64 u0xbe65a49036345cf4, ; 728: lib_System.Buffers.dll.so => 7
	i64 u0xbee38d4a88835966, ; 729: Xamarin.AndroidX.AppCompat.AppCompatResources => 204
	i64 u0xbef9919db45b4ca7, ; 730: System.IO.Pipes.AccessControl => 55
	i64 u0xbf0fa68611139208, ; 731: lib_Xamarin.AndroidX.Annotation.dll.so => 200
	i64 u0xbfc1e1fb3095f2b3, ; 732: lib_System.Net.Http.Json.dll.so => 64
	i64 u0xc040a4ab55817f58, ; 733: ar/Microsoft.Maui.Controls.resources.dll => 291
	i64 u0xc07cadab29efeba0, ; 734: Xamarin.AndroidX.Core.Core.Ktx.dll => 221
	i64 u0xc0d928351ab5ca77, ; 735: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 736: System.Runtime.Intrinsics => 109
	i64 u0xc111030af54d7191, ; 737: System.Resources.Writer => 101
	i64 u0xc12b8b3afa48329c, ; 738: lib_System.Linq.dll.so => 62
	i64 u0xc183ca0b74453aa9, ; 739: lib_System.Threading.Tasks.Dataflow.dll.so => 142
	i64 u0xc1ff9ae3cdb6e1e6, ; 740: Xamarin.AndroidX.Activity.dll => 198
	i64 u0xc26c064effb1dea9, ; 741: System.Buffers.dll => 7
	i64 u0xc28c50f32f81cc73, ; 742: ja/Microsoft.Maui.Controls.resources.dll => 306
	i64 u0xc2902f6cf5452577, ; 743: lib_Mono.Android.Export.dll.so => 170
	i64 u0xc2a3bca55b573141, ; 744: System.IO.FileSystem.Watcher => 50
	i64 u0xc2bcfec99f69365e, ; 745: Xamarin.AndroidX.ViewPager2.dll => 271
	i64 u0xc30b52815b58ac2c, ; 746: lib_System.Runtime.Serialization.Xml.dll.so => 115
	i64 u0xc36d7d89c652f455, ; 747: System.Threading.Overlapped => 141
	i64 u0xc396b285e59e5493, ; 748: GoogleGson.dll => 178
	i64 u0xc3c86c1e5e12f03d, ; 749: WindowsBase => 166
	i64 u0xc3f0e03e56ce7b69, ; 750: zxing => 289
	i64 u0xc421b61fd853169d, ; 751: lib_System.Net.WebSockets.Client.dll.so => 80
	i64 u0xc463e077917aa21d, ; 752: System.Runtime.Serialization.Json => 113
	i64 u0xc4757880df344aec, ; 753: Camera.MAUI => 174
	i64 u0xc4d3858ed4d08512, ; 754: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 248
	i64 u0xc50fded0ded1418c, ; 755: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 756: lib_System.Net.Requests.dll.so => 73
	i64 u0xc5293b19e4dc230e, ; 757: Xamarin.AndroidX.Navigation.Fragment => 252
	i64 u0xc5325b2fcb37446f, ; 758: lib_System.Private.Xml.dll.so => 89
	i64 u0xc535cb9a21385d9b, ; 759: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 196
	i64 u0xc5a0f4b95a699af7, ; 760: lib_System.Private.Uri.dll.so => 87
	i64 u0xc5cdcd5b6277579e, ; 761: lib_System.Security.Cryptography.Algorithms.dll.so => 120
	i64 u0xc5ec286825cb0bf4, ; 762: Xamarin.AndroidX.Tracing.Tracing => 265
	i64 u0xc6706bc8aa7fe265, ; 763: Xamarin.AndroidX.Annotation.Jvm => 202
	i64 u0xc7c01e7d7c93a110, ; 764: System.Text.Encoding.Extensions.dll => 135
	i64 u0xc7ce851898a4548e, ; 765: lib_System.Web.HttpUtility.dll.so => 153
	i64 u0xc809d4089d2556b2, ; 766: System.Runtime.InteropServices.JavaScript.dll => 106
	i64 u0xc858a28d9ee5a6c5, ; 767: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8ac7c6bf1c2ec51, ; 768: System.Reflection.DispatchProxy.dll => 90
	i64 u0xc9c62c8f354ac568, ; 769: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xc9e54b32fc19baf3, ; 770: lib_CommunityToolkit.Maui.dll.so => 176
	i64 u0xca3a723e7342c5b6, ; 771: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 319
	i64 u0xca5801070d9fccfb, ; 772: System.Text.Encoding => 136
	i64 u0xcab3493c70141c2d, ; 773: pl/Microsoft.Maui.Controls.resources => 311
	i64 u0xcacfddc9f7c6de76, ; 774: ro/Microsoft.Maui.Controls.resources.dll => 314
	i64 u0xcadbc92899a777f0, ; 775: Xamarin.AndroidX.Startup.StartupRuntime => 263
	i64 u0xcba1cb79f45292b5, ; 776: Xamarin.Android.Glide.GifDecoder.dll => 197
	i64 u0xcbb5f80c7293e696, ; 777: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0xcbd4fdd9cef4a294, ; 778: lib__Microsoft.Android.Resource.Designer.dll.so => 325
	i64 u0xcc15da1e07bbd994, ; 779: Xamarin.AndroidX.SlidingPaneLayout => 262
	i64 u0xcc2876b32ef2794c, ; 780: lib_System.Text.RegularExpressions.dll.so => 139
	i64 u0xcc5c3bb714c4561e, ; 781: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 286
	i64 u0xcc76886e09b88260, ; 782: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 288
	i64 u0xcc9fa2923aa1c9ef, ; 783: System.Diagnostics.Contracts.dll => 25
	i64 u0xccf25c4b634ccd3a, ; 784: zh-Hans/Microsoft.Maui.Controls.resources.dll => 323
	i64 u0xcd10a42808629144, ; 785: System.Net.Requests => 73
	i64 u0xcdca1b920e9f53ba, ; 786: Xamarin.AndroidX.Interpolator => 233
	i64 u0xcdd0c48b6937b21c, ; 787: Xamarin.AndroidX.SwipeRefreshLayout => 264
	i64 u0xcf23d8093f3ceadf, ; 788: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf5ff6b6b2c4c382, ; 789: System.Net.Mail.dll => 67
	i64 u0xcf8fc898f98b0d34, ; 790: System.Private.Xml.Linq => 88
	i64 u0xd04b5f59ed596e31, ; 791: System.Reflection.Metadata.dll => 95
	i64 u0xd063299fcfc0c93f, ; 792: lib_System.Runtime.Serialization.Json.dll.so => 113
	i64 u0xd0de8a113e976700, ; 793: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 794: System.Runtime.Extensions => 104
	i64 u0xd1194e1d8a8de83c, ; 795: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 236
	i64 u0xd12beacdfc14f696, ; 796: System.Dynamic.Runtime => 37
	i64 u0xd198e7ce1b6a8344, ; 797: System.Net.Quic.dll => 72
	i64 u0xd3144156a3727ebe, ; 798: Xamarin.Google.Guava.ListenableFuture => 279
	i64 u0xd333d0af9e423810, ; 799: System.Runtime.InteropServices => 108
	i64 u0xd33a415cb4278969, ; 800: System.Security.Cryptography.Encoding.dll => 123
	i64 u0xd3426d966bb704f5, ; 801: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 204
	i64 u0xd3651b6fc3125825, ; 802: System.Private.Uri.dll => 87
	i64 u0xd373685349b1fe8b, ; 803: Microsoft.Extensions.Logging.dll => 183
	i64 u0xd3801faafafb7698, ; 804: System.Private.DataContractSerialization.dll => 86
	i64 u0xd3e4c8d6a2d5d470, ; 805: it/Microsoft.Maui.Controls.resources => 305
	i64 u0xd3edcc1f25459a50, ; 806: System.Reflection.Emit => 93
	i64 u0xd4645626dffec99d, ; 807: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 182
	i64 u0xd4fa0abb79079ea9, ; 808: System.Security.Principal.dll => 129
	i64 u0xd5507e11a2b2839f, ; 809: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 248
	i64 u0xd567f168deeeaf3c, ; 810: lib_zxing.dll.so => 289
	i64 u0xd5d04bef8478ea19, ; 811: Xamarin.AndroidX.Tracing.Tracing.dll => 265
	i64 u0xd60815f26a12e140, ; 812: Microsoft.Extensions.Logging.Debug.dll => 185
	i64 u0xd63b432ec9306914, ; 813: zxing.dll => 289
	i64 u0xd6694f8359737e4e, ; 814: Xamarin.AndroidX.SavedState => 259
	i64 u0xd6949e129339eae5, ; 815: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 221
	i64 u0xd6d21782156bc35b, ; 816: Xamarin.AndroidX.SwipeRefreshLayout.dll => 264
	i64 u0xd6de019f6af72435, ; 817: Xamarin.AndroidX.ConstraintLayout.Core.dll => 218
	i64 u0xd70956d1e6deefb9, ; 818: Jsr305Binding => 276
	i64 u0xd72329819cbbbc44, ; 819: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 180
	i64 u0xd72c760af136e863, ; 820: System.Xml.XmlSerializer.dll => 163
	i64 u0xd753f071e44c2a03, ; 821: lib_System.Security.SecureString.dll.so => 130
	i64 u0xd7b3764ada9d341d, ; 822: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 184
	i64 u0xd7f0088bc5ad71f2, ; 823: Xamarin.AndroidX.VersionedParcelable => 269
	i64 u0xd8fb25e28ae30a12, ; 824: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 256
	i64 u0xda1dfa4c534a9251, ; 825: Microsoft.Extensions.DependencyInjection => 181
	i64 u0xdad05a11827959a3, ; 826: System.Collections.NonGeneric.dll => 10
	i64 u0xdaefdfe71aa53cf9, ; 827: System.IO.FileSystem.Primitives => 49
	i64 u0xdb5383ab5865c007, ; 828: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 321
	i64 u0xdb58816721c02a59, ; 829: lib_System.Reflection.Emit.ILGeneration.dll.so => 91
	i64 u0xdbeda89f832aa805, ; 830: vi/Microsoft.Maui.Controls.resources.dll => 321
	i64 u0xdbf2a779fbc3ac31, ; 831: System.Transactions.Local.dll => 150
	i64 u0xdbf9607a441b4505, ; 832: System.Linq => 62
	i64 u0xdbfc90157a0de9b0, ; 833: lib_System.Text.Encoding.dll.so => 136
	i64 u0xdc75032002d1a212, ; 834: lib_System.Transactions.Local.dll.so => 150
	i64 u0xdca8be7403f92d4f, ; 835: lib_System.Linq.Queryable.dll.so => 61
	i64 u0xdce2c53525640bf3, ; 836: Microsoft.Extensions.Logging => 183
	i64 u0xdd2b722d78ef5f43, ; 837: System.Runtime.dll => 117
	i64 u0xdd495b8006607243, ; 838: barcode_app => 0
	i64 u0xdd67031857c72f96, ; 839: lib_System.Text.Encodings.Web.dll.so => 137
	i64 u0xdd92e229ad292030, ; 840: System.Numerics.dll => 84
	i64 u0xdddcdd701e911af1, ; 841: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 234
	i64 u0xdde30e6b77aa6f6c, ; 842: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 323
	i64 u0xde110ae80fa7c2e2, ; 843: System.Xml.XDocument.dll => 159
	i64 u0xde4726fcdf63a198, ; 844: Xamarin.AndroidX.Transition => 266
	i64 u0xde572c2b2fb32f93, ; 845: lib_System.Threading.Tasks.Extensions.dll.so => 143
	i64 u0xde8769ebda7d8647, ; 846: hr/Microsoft.Maui.Controls.resources.dll => 302
	i64 u0xdee075f3477ef6be, ; 847: Xamarin.AndroidX.ExifInterface.dll => 230
	i64 u0xdf4b773de8fb1540, ; 848: System.Net.dll => 82
	i64 u0xdfa254ebb4346068, ; 849: System.Net.Ping => 70
	i64 u0xe0142572c095a480, ; 850: Xamarin.AndroidX.AppCompat.dll => 203
	i64 u0xe021eaa401792a05, ; 851: System.Text.Encoding.dll => 136
	i64 u0xe02f89350ec78051, ; 852: Xamarin.AndroidX.CoordinatorLayout.dll => 219
	i64 u0xe0496b9d65ef5474, ; 853: Xamarin.Android.Glide.DiskLruCache.dll => 196
	i64 u0xe10b760bb1462e7a, ; 854: lib_System.Security.Cryptography.Primitives.dll.so => 125
	i64 u0xe192a588d4410686, ; 855: lib_System.IO.Pipelines.dll.so => 54
	i64 u0xe1a08bd3fa539e0d, ; 856: System.Runtime.Loader => 110
	i64 u0xe1a77eb8831f7741, ; 857: System.Security.SecureString.dll => 130
	i64 u0xe1b52f9f816c70ef, ; 858: System.Private.Xml.Linq.dll => 88
	i64 u0xe1e199c8ab02e356, ; 859: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1ecfdb7fff86067, ; 860: System.Net.Security.dll => 74
	i64 u0xe2252a80fe853de4, ; 861: lib_System.Security.Principal.dll.so => 129
	i64 u0xe22fa4c9c645db62, ; 862: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe2420585aeceb728, ; 863: System.Net.Requests.dll => 73
	i64 u0xe26692647e6bcb62, ; 864: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 243
	i64 u0xe29b73bc11392966, ; 865: lib-id-Microsoft.Maui.Controls.resources.dll.so => 304
	i64 u0xe2ad448dee50fbdf, ; 866: System.Xml.Serialization => 158
	i64 u0xe2d920f978f5d85c, ; 867: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 868: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe332bacb3eb4a806, ; 869: Mono.Android.Export.dll => 170
	i64 u0xe3811d68d4fe8463, ; 870: pt-BR/Microsoft.Maui.Controls.resources.dll => 312
	i64 u0xe3b7cbae5ad66c75, ; 871: lib_System.Security.Cryptography.Encoding.dll.so => 123
	i64 u0xe494f7ced4ecd10a, ; 872: hu/Microsoft.Maui.Controls.resources.dll => 303
	i64 u0xe4a9b1e40d1e8917, ; 873: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 298
	i64 u0xe4f74a0b5bf9703f, ; 874: System.Runtime.Serialization.Primitives => 114
	i64 u0xe5434e8a119ceb69, ; 875: lib_Mono.Android.dll.so => 172
	i64 u0xe55703b9ce5c038a, ; 876: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 877: Microsoft.VisualBasic => 3
	i64 u0xe62913cc36bc07ec, ; 878: System.Xml.dll => 164
	i64 u0xe7bea09c4900a191, ; 879: Xamarin.AndroidX.VectorDrawable.dll => 267
	i64 u0xe7e03cc18dcdeb49, ; 880: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 881: lib_System.Configuration.dll.so => 19
	i64 u0xe86b0df4ba9e5db8, ; 882: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 242
	i64 u0xe896622fe0902957, ; 883: System.Reflection.Emit.dll => 93
	i64 u0xe89a2a9ef110899b, ; 884: System.Drawing.dll => 36
	i64 u0xe8c5f8c100b5934b, ; 885: Microsoft.Win32.Registry => 5
	i64 u0xe957c3976986ab72, ; 886: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 273
	i64 u0xe98163eb702ae5c5, ; 887: Xamarin.AndroidX.Arch.Core.Runtime => 206
	i64 u0xe994f23ba4c143e5, ; 888: Xamarin.KotlinX.Coroutines.Android => 284
	i64 u0xe9b9c8c0458fd92a, ; 889: System.Windows => 155
	i64 u0xe9d166d87a7f2bdb, ; 890: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 263
	i64 u0xea5a4efc2ad81d1b, ; 891: Xamarin.Google.ErrorProne.Annotations => 278
	i64 u0xeb2313fe9d65b785, ; 892: Xamarin.AndroidX.ConstraintLayout.dll => 217
	i64 u0xeb6e275e78cb8d42, ; 893: Xamarin.AndroidX.LocalBroadcastManager.dll => 250
	i64 u0xed19c616b3fcb7eb, ; 894: Xamarin.AndroidX.VersionedParcelable.dll => 269
	i64 u0xedc4817167106c23, ; 895: System.Net.Sockets.dll => 76
	i64 u0xedc632067fb20ff3, ; 896: System.Memory.dll => 63
	i64 u0xedc8e4ca71a02a8b, ; 897: Xamarin.AndroidX.Navigation.Runtime.dll => 253
	i64 u0xee81f5b3f1c4f83b, ; 898: System.Threading.ThreadPool => 147
	i64 u0xeeb7ebb80150501b, ; 899: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 214
	i64 u0xeefc635595ef57f0, ; 900: System.Security.Cryptography.Cng => 121
	i64 u0xef03b1b5a04e9709, ; 901: System.Text.Encoding.CodePages.dll => 134
	i64 u0xef432781d5667f61, ; 902: Xamarin.AndroidX.Print => 255
	i64 u0xef602c523fe2e87a, ; 903: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 279
	i64 u0xef72742e1bcca27a, ; 904: Microsoft.Maui.Essentials.dll => 192
	i64 u0xefd1e0c4e5c9b371, ; 905: System.Resources.ResourceManager.dll => 100
	i64 u0xefe8f8d5ed3c72ea, ; 906: System.Formats.Tar.dll => 39
	i64 u0xefec0b7fdc57ec42, ; 907: Xamarin.AndroidX.Activity => 198
	i64 u0xf00c29406ea45e19, ; 908: es/Microsoft.Maui.Controls.resources.dll => 297
	i64 u0xf09e47b6ae914f6e, ; 909: System.Net.NameResolution => 68
	i64 u0xf0ac2b489fed2e35, ; 910: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb49dadd3a1fe1, ; 911: lib_System.Net.ServicePoint.dll.so => 75
	i64 u0xf0de2537ee19c6ca, ; 912: lib_System.Net.WebHeaderCollection.dll.so => 78
	i64 u0xf1138779fa181c68, ; 913: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 241
	i64 u0xf11b621fc87b983f, ; 914: Microsoft.Maui.Controls.Xaml.dll => 190
	i64 u0xf161f4f3c3b7e62c, ; 915: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 916: System.ValueTuple => 152
	i64 u0xf1c4b4005493d871, ; 917: System.Formats.Asn1.dll => 38
	i64 u0xf238bd79489d3a96, ; 918: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 310
	i64 u0xf2feea356ba760af, ; 919: Xamarin.AndroidX.Arch.Core.Runtime.dll => 206
	i64 u0xf300e085f8acd238, ; 920: lib_System.ServiceProcess.dll.so => 133
	i64 u0xf34e52b26e7e059d, ; 921: System.Runtime.CompilerServices.VisualC.dll => 103
	i64 u0xf37221fda4ef8830, ; 922: lib_Xamarin.Google.Android.Material.dll.so => 274
	i64 u0xf3ad9b8fb3eefd12, ; 923: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i64 u0xf3ddfe05336abf29, ; 924: System => 165
	i64 u0xf408654b2a135055, ; 925: System.Reflection.Emit.ILGeneration.dll => 91
	i64 u0xf4103170a1de5bd0, ; 926: System.Linq.Queryable.dll => 61
	i64 u0xf42d20c23173d77c, ; 927: lib_System.ServiceModel.Web.dll.so => 132
	i64 u0xf4c1dd70a5496a17, ; 928: System.IO.Compression => 46
	i64 u0xf4ecf4b9afc64781, ; 929: System.ServiceProcess.dll => 133
	i64 u0xf4eeeaa566e9b970, ; 930: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 224
	i64 u0xf518f63ead11fcd1, ; 931: System.Threading.Tasks => 145
	i64 u0xf5fc7602fe27b333, ; 932: System.Net.WebHeaderCollection => 78
	i64 u0xf6077741019d7428, ; 933: Xamarin.AndroidX.CoordinatorLayout => 219
	i64 u0xf6742cbf457c450b, ; 934: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 242
	i64 u0xf70c0a7bf8ccf5af, ; 935: System.Web => 154
	i64 u0xf77b20923f07c667, ; 936: de/Microsoft.Maui.Controls.resources.dll => 295
	i64 u0xf7e2cac4c45067b3, ; 937: lib_System.Numerics.Vectors.dll.so => 83
	i64 u0xf7e74930e0e3d214, ; 938: zh-HK/Microsoft.Maui.Controls.resources.dll => 322
	i64 u0xf84773b5c81e3cef, ; 939: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 320
	i64 u0xf8aac5ea82de1348, ; 940: System.Linq.Queryable => 61
	i64 u0xf8abd63acd77d37b, ; 941: Xamarin.AndroidX.Camera.View => 211
	i64 u0xf8b77539b362d3ba, ; 942: lib_System.Reflection.Primitives.dll.so => 96
	i64 u0xf8e045dc345b2ea3, ; 943: lib_Xamarin.AndroidX.RecyclerView.dll.so => 257
	i64 u0xf915dc29808193a1, ; 944: System.Web.HttpUtility.dll => 153
	i64 u0xf96c777a2a0686f4, ; 945: hi/Microsoft.Maui.Controls.resources.dll => 301
	i64 u0xf9be54c8bcf8ff3b, ; 946: System.Security.AccessControl.dll => 118
	i64 u0xf9eec5bb3a6aedc6, ; 947: Microsoft.Extensions.Options => 186
	i64 u0xfa0e82300e67f913, ; 948: lib_System.AppContext.dll.so => 6
	i64 u0xfa2fdb27e8a2c8e8, ; 949: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 950: lib_System.Net.Security.dll.so => 74
	i64 u0xfa5ed7226d978949, ; 951: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 291
	i64 u0xfa645d91e9fc4cba, ; 952: System.Threading.Thread => 146
	i64 u0xfad4d2c770e827f9, ; 953: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0xfb06dd2338e6f7c4, ; 954: System.Net.Ping.dll => 70
	i64 u0xfb087abe5365e3b7, ; 955: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb846e949baff5ea, ; 956: System.Xml.Serialization.dll => 158
	i64 u0xfbad3e4ce4b98145, ; 957: System.Security.Cryptography.X509Certificates => 126
	i64 u0xfbf0a31c9fc34bc4, ; 958: lib_System.Net.Http.dll.so => 65
	i64 u0xfc61ddcf78dd1f54, ; 959: Xamarin.AndroidX.LocalBroadcastManager => 250
	i64 u0xfc6b7527cc280b3f, ; 960: lib_System.Runtime.Serialization.Formatters.dll.so => 112
	i64 u0xfc719aec26adf9d9, ; 961: Xamarin.AndroidX.Navigation.Fragment.dll => 252
	i64 u0xfc82690c2fe2735c, ; 962: Xamarin.AndroidX.Lifecycle.Process.dll => 240
	i64 u0xfc93fc307d279893, ; 963: System.IO.Pipes.AccessControl.dll => 55
	i64 u0xfcd302092ada6328, ; 964: System.IO.MemoryMappedFiles.dll => 53
	i64 u0xfd22f00870e40ae0, ; 965: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 226
	i64 u0xfd49b3c1a76e2748, ; 966: System.Runtime.InteropServices.RuntimeInformation => 107
	i64 u0xfd536c702f64dc47, ; 967: System.Text.Encoding.Extensions => 135
	i64 u0xfd583f7657b6a1cb, ; 968: Xamarin.AndroidX.Fragment => 231
	i64 u0xfd8dd91a2c26bd5d, ; 969: Xamarin.AndroidX.Lifecycle.Runtime => 241
	i64 u0xfda36abccf05cf5c, ; 970: System.Net.WebSockets.Client => 80
	i64 u0xfdbe4710aa9beeff, ; 971: CommunityToolkit.Maui => 176
	i64 u0xfddbe9695626a7f5, ; 972: Xamarin.AndroidX.Lifecycle.Common => 235
	i64 u0xfeae9952cf03b8cb, ; 973: tr/Microsoft.Maui.Controls.resources => 319
	i64 u0xfebe1950717515f9, ; 974: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 239
	i64 u0xff270a55858bac8d, ; 975: System.Security.Principal => 129
	i64 u0xff9b54613e0d2cc8, ; 976: System.Net.Http.Json => 64
	i64 u0xffdb7a971be4ec73 ; 977: System.ValueTuple.dll => 152
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [978 x i32] [
	i32 42, i32 285, i32 264, i32 13, i32 290, i32 253, i32 177, i32 105,
	i32 171, i32 48, i32 174, i32 203, i32 7, i32 86, i32 315, i32 293,
	i32 321, i32 227, i32 71, i32 257, i32 12, i32 191, i32 102, i32 322,
	i32 156, i32 19, i32 232, i32 214, i32 161, i32 229, i32 267, i32 167,
	i32 315, i32 10, i32 185, i32 268, i32 96, i32 224, i32 226, i32 13,
	i32 186, i32 174, i32 10, i32 127, i32 95, i32 140, i32 39, i32 316,
	i32 288, i32 270, i32 312, i32 210, i32 172, i32 197, i32 5, i32 192,
	i32 67, i32 261, i32 130, i32 260, i32 228, i32 68, i32 215, i32 66,
	i32 57, i32 223, i32 52, i32 43, i32 125, i32 208, i32 67, i32 81,
	i32 243, i32 158, i32 92, i32 99, i32 257, i32 141, i32 151, i32 207,
	i32 299, i32 162, i32 169, i32 300, i32 182, i32 81, i32 215, i32 4,
	i32 5, i32 51, i32 101, i32 56, i32 120, i32 98, i32 168, i32 118,
	i32 285, i32 21, i32 303, i32 137, i32 97, i32 288, i32 77, i32 309,
	i32 255, i32 263, i32 119, i32 211, i32 8, i32 175, i32 165, i32 318,
	i32 70, i32 196, i32 244, i32 258, i32 171, i32 145, i32 40, i32 188,
	i32 261, i32 47, i32 30, i32 254, i32 307, i32 144, i32 186, i32 163,
	i32 28, i32 84, i32 265, i32 77, i32 43, i32 29, i32 42, i32 103,
	i32 117, i32 201, i32 45, i32 91, i32 318, i32 56, i32 148, i32 146,
	i32 100, i32 49, i32 20, i32 220, i32 114, i32 194, i32 299, i32 277,
	i32 208, i32 281, i32 187, i32 209, i32 94, i32 58, i32 304, i32 302,
	i32 81, i32 277, i32 169, i32 26, i32 71, i32 256, i32 230, i32 320,
	i32 69, i32 33, i32 298, i32 14, i32 139, i32 38, i32 324, i32 216,
	i32 311, i32 134, i32 92, i32 88, i32 149, i32 317, i32 24, i32 138,
	i32 57, i32 51, i32 296, i32 29, i32 157, i32 34, i32 164, i32 0,
	i32 231, i32 52, i32 325, i32 272, i32 90, i32 212, i32 35, i32 299,
	i32 157, i32 9, i32 297, i32 76, i32 55, i32 191, i32 293, i32 189,
	i32 13, i32 271, i32 179, i32 205, i32 109, i32 247, i32 32, i32 104,
	i32 84, i32 92, i32 53, i32 96, i32 280, i32 58, i32 9, i32 102,
	i32 223, i32 68, i32 270, i32 292, i32 125, i32 258, i32 116, i32 135,
	i32 126, i32 106, i32 281, i32 131, i32 207, i32 279, i32 147, i32 156,
	i32 232, i32 220, i32 227, i32 258, i32 97, i32 24, i32 262, i32 143,
	i32 255, i32 251, i32 3, i32 167, i32 204, i32 100, i32 161, i32 99,
	i32 25, i32 93, i32 168, i32 172, i32 199, i32 3, i32 311, i32 229,
	i32 1, i32 114, i32 281, i32 232, i32 240, i32 33, i32 6, i32 315,
	i32 156, i32 313, i32 53, i32 234, i32 85, i32 269, i32 254, i32 44,
	i32 239, i32 104, i32 47, i32 138, i32 64, i32 249, i32 69, i32 80,
	i32 59, i32 89, i32 154, i32 205, i32 133, i32 110, i32 188, i32 305,
	i32 249, i32 256, i32 171, i32 134, i32 140, i32 40, i32 292, i32 189,
	i32 275, i32 60, i32 246, i32 79, i32 25, i32 36, i32 99, i32 243,
	i32 71, i32 22, i32 220, i32 193, i32 316, i32 121, i32 69, i32 107,
	i32 322, i32 250, i32 119, i32 117, i32 235, i32 236, i32 11, i32 2,
	i32 124, i32 115, i32 142, i32 41, i32 87, i32 200, i32 173, i32 27,
	i32 148, i32 306, i32 181, i32 278, i32 199, i32 1, i32 201, i32 44,
	i32 219, i32 149, i32 234, i32 18, i32 86, i32 294, i32 41, i32 239,
	i32 213, i32 244, i32 94, i32 183, i32 28, i32 41, i32 78, i32 290,
	i32 228, i32 216, i32 144, i32 108, i32 214, i32 11, i32 105, i32 137,
	i32 16, i32 122, i32 66, i32 157, i32 22, i32 296, i32 287, i32 102,
	i32 181, i32 286, i32 63, i32 58, i32 190, i32 295, i32 110, i32 173,
	i32 284, i32 9, i32 274, i32 120, i32 98, i32 105, i32 247, i32 176,
	i32 189, i32 111, i32 202, i32 49, i32 20, i32 246, i32 222, i32 72,
	i32 218, i32 155, i32 39, i32 294, i32 35, i32 282, i32 38, i32 300,
	i32 273, i32 108, i32 309, i32 21, i32 280, i32 245, i32 193, i32 15,
	i32 187, i32 79, i32 79, i32 222, i32 187, i32 225, i32 252, i32 260,
	i32 152, i32 21, i32 191, i32 293, i32 50, i32 51, i32 319, i32 309,
	i32 94, i32 195, i32 305, i32 16, i32 123, i32 302, i32 160, i32 45,
	i32 278, i32 178, i32 116, i32 63, i32 166, i32 179, i32 14, i32 259,
	i32 111, i32 202, i32 60, i32 283, i32 275, i32 121, i32 308, i32 2,
	i32 318, i32 231, i32 245, i32 282, i32 245, i32 6, i32 213, i32 298,
	i32 227, i32 17, i32 316, i32 295, i32 77, i32 217, i32 275, i32 177,
	i32 131, i32 280, i32 308, i32 83, i32 185, i32 12, i32 34, i32 119,
	i32 287, i32 240, i32 229, i32 85, i32 194, i32 18, i32 270, i32 180,
	i32 238, i32 72, i32 95, i32 165, i32 233, i32 82, i32 324, i32 203,
	i32 212, i32 283, i32 154, i32 36, i32 151, i32 320, i32 323, i32 211,
	i32 144, i32 56, i32 113, i32 213, i32 267, i32 266, i32 37, i32 324,
	i32 179, i32 115, i32 201, i32 14, i32 195, i32 146, i32 43, i32 192,
	i32 199, i32 98, i32 286, i32 168, i32 16, i32 48, i32 107, i32 97,
	i32 249, i32 27, i32 128, i32 29, i32 300, i32 260, i32 128, i32 44,
	i32 222, i32 228, i32 149, i32 8, i32 251, i32 301, i32 314, i32 313,
	i32 132, i32 312, i32 42, i32 287, i32 33, i32 325, i32 46, i32 143,
	i32 246, i32 190, i32 237, i32 223, i32 138, i32 62, i32 132, i32 292,
	i32 48, i32 160, i32 206, i32 237, i32 195, i32 235, i32 308, i32 266,
	i32 46, i32 164, i32 233, i32 208, i32 210, i32 297, i32 230, i32 304,
	i32 193, i32 18, i32 8, i32 175, i32 178, i32 221, i32 124, i32 209,
	i32 59, i32 188, i32 141, i32 253, i32 307, i32 241, i32 276, i32 272,
	i32 150, i32 142, i32 285, i32 282, i32 126, i32 284, i32 160, i32 162,
	i32 224, i32 198, i32 180, i32 310, i32 26, i32 251, i32 238, i32 210,
	i32 82, i32 272, i32 127, i32 277, i32 101, i32 148, i32 274, i32 254,
	i32 54, i32 162, i32 167, i32 131, i32 37, i32 268, i32 307, i32 22,
	i32 112, i32 90, i32 225, i32 50, i32 60, i32 122, i32 83, i32 127,
	i32 163, i32 276, i32 166, i32 259, i32 261, i32 226, i32 194, i32 242,
	i32 4, i32 236, i32 303, i32 170, i32 2, i32 247, i32 116, i32 200,
	i32 19, i32 177, i32 184, i32 89, i32 65, i32 30, i32 182, i32 296,
	i32 218, i32 59, i32 111, i32 238, i32 32, i32 128, i32 159, i32 314,
	i32 216, i32 140, i32 225, i32 310, i32 153, i32 17, i32 215, i32 197,
	i32 75, i32 74, i32 15, i32 169, i32 85, i32 283, i32 0, i32 124,
	i32 237, i32 248, i32 217, i32 317, i32 244, i32 34, i32 118, i32 139,
	i32 122, i32 106, i32 294, i32 268, i32 212, i32 301, i32 291, i32 54,
	i32 47, i32 28, i32 145, i32 184, i32 147, i32 35, i32 317, i32 173,
	i32 273, i32 75, i32 161, i32 1, i32 262, i32 313, i32 306, i32 159,
	i32 12, i32 155, i32 175, i32 151, i32 76, i32 290, i32 103, i32 112,
	i32 205, i32 65, i32 66, i32 271, i32 45, i32 207, i32 109, i32 209,
	i32 7, i32 204, i32 55, i32 200, i32 64, i32 291, i32 221, i32 20,
	i32 109, i32 101, i32 62, i32 142, i32 198, i32 7, i32 306, i32 170,
	i32 50, i32 271, i32 115, i32 141, i32 178, i32 166, i32 289, i32 80,
	i32 113, i32 174, i32 248, i32 17, i32 73, i32 252, i32 89, i32 196,
	i32 87, i32 120, i32 265, i32 202, i32 135, i32 153, i32 106, i32 11,
	i32 90, i32 31, i32 176, i32 319, i32 136, i32 311, i32 314, i32 263,
	i32 197, i32 40, i32 325, i32 262, i32 139, i32 286, i32 288, i32 25,
	i32 323, i32 73, i32 233, i32 264, i32 27, i32 67, i32 88, i32 95,
	i32 113, i32 31, i32 104, i32 236, i32 37, i32 72, i32 279, i32 108,
	i32 123, i32 204, i32 87, i32 183, i32 86, i32 305, i32 93, i32 182,
	i32 129, i32 248, i32 289, i32 265, i32 185, i32 289, i32 259, i32 221,
	i32 264, i32 218, i32 276, i32 180, i32 163, i32 130, i32 184, i32 269,
	i32 256, i32 181, i32 10, i32 49, i32 321, i32 91, i32 321, i32 150,
	i32 62, i32 136, i32 150, i32 61, i32 183, i32 117, i32 0, i32 137,
	i32 84, i32 234, i32 323, i32 159, i32 266, i32 143, i32 302, i32 230,
	i32 82, i32 70, i32 203, i32 136, i32 219, i32 196, i32 125, i32 54,
	i32 110, i32 130, i32 88, i32 23, i32 74, i32 129, i32 31, i32 73,
	i32 243, i32 304, i32 158, i32 23, i32 4, i32 170, i32 312, i32 123,
	i32 303, i32 298, i32 114, i32 172, i32 32, i32 3, i32 164, i32 267,
	i32 30, i32 19, i32 242, i32 93, i32 36, i32 5, i32 273, i32 206,
	i32 284, i32 155, i32 263, i32 278, i32 217, i32 250, i32 269, i32 76,
	i32 63, i32 253, i32 147, i32 214, i32 121, i32 134, i32 255, i32 279,
	i32 192, i32 100, i32 39, i32 198, i32 297, i32 68, i32 26, i32 75,
	i32 78, i32 241, i32 190, i32 24, i32 152, i32 38, i32 310, i32 206,
	i32 133, i32 103, i32 274, i32 57, i32 165, i32 91, i32 61, i32 132,
	i32 46, i32 133, i32 224, i32 145, i32 78, i32 219, i32 242, i32 154,
	i32 295, i32 83, i32 322, i32 320, i32 61, i32 211, i32 96, i32 257,
	i32 153, i32 301, i32 118, i32 186, i32 6, i32 15, i32 74, i32 291,
	i32 146, i32 52, i32 70, i32 23, i32 158, i32 126, i32 65, i32 250,
	i32 112, i32 252, i32 240, i32 55, i32 53, i32 226, i32 107, i32 135,
	i32 231, i32 241, i32 80, i32 176, i32 235, i32 319, i32 239, i32 129,
	i32 64, i32 152
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ e7876a4f92d894b40c191a24c2b74f06d4bf4573"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
