//===----------------------------------------------------------------------===//
//
// Automatically Generated From ./Inputs/FixedPointConversion.swift.gyb
// Do Not Edit Directly!
//
//===----------------------------------------------------------------------===//
//
// REQUIRES: executable_test
// REQUIRES: PTRSIZE=64
// RUN: %target-run-simple-swift(-Onone)
// END.
//
//===----------------------------------------------------------------------===//

import StdlibUnittest

let FixedPointConversion_Debug64_ToUInt8 = TestSuite(
   "FixedPointConversion_Debug64_ToUInt8"
)

//===----------------------------------------------------------------------===//
// MARK: UInt8: (+0)...(+255)
//===----------------------------------------------------------------------===//

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt8_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getUInt8(+0)),
  (getUInt8(+255), getUInt8(+255)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt8_NeverFails")
.forEach(in: [
  (getUInt8(+0), getUInt8(+0)),
  (getUInt8(+255), getUInt8(+255)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

//===----------------------------------------------------------------------===//
// MARK: Int8: (-128)...(+127)
//===----------------------------------------------------------------------===//

FixedPointConversion_Debug64_ToUInt8
.test("FromInt8_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getInt8(+0)),
  (getUInt8(+127), getInt8(+127)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt8_NeverFails")
.forEach(in: [
  (getUInt8(+0), getInt8(+0)),
  (getUInt8(+127), getInt8(+127)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt8_AlwaysTraps")
.forEach(in: [
  getInt8(-128),
  getInt8(-1),
]) {
  expectCrashLater()
  _blackHole(UInt8($0))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt8_AlwaysFails")
.forEach(in: [
  getInt8(-128),
  getInt8(-1),
]) {
  expectNil(UInt8(exactly: $0))
}

//===----------------------------------------------------------------------===//
// MARK: UInt16: (+0)...(+65535)
//===----------------------------------------------------------------------===//

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt16_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getUInt16(+0)),
  (getUInt8(+255), getUInt16(+255)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt16_NeverFails")
.forEach(in: [
  (getUInt8(+0), getUInt16(+0)),
  (getUInt8(+255), getUInt16(+255)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt16_AlwaysTraps")
.forEach(in: [
  getUInt16(+256),
  getUInt16(+65535),
]) {
  expectCrashLater()
  _blackHole(UInt8($0))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt16_AlwaysFails")
.forEach(in: [
  getUInt16(+256),
  getUInt16(+65535),
]) {
  expectNil(UInt8(exactly: $0))
}

//===----------------------------------------------------------------------===//
// MARK: Int16: (-32768)...(+32767)
//===----------------------------------------------------------------------===//

FixedPointConversion_Debug64_ToUInt8
.test("FromInt16_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getInt16(+0)),
  (getUInt8(+255), getInt16(+255)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt16_NeverFails")
.forEach(in: [
  (getUInt8(+0), getInt16(+0)),
  (getUInt8(+255), getInt16(+255)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt16_AlwaysTraps")
.forEach(in: [
  getInt16(-32768),
  getInt16(-1),
  getInt16(+256),
  getInt16(+32767),
]) {
  expectCrashLater()
  _blackHole(UInt8($0))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt16_AlwaysFails")
.forEach(in: [
  getInt16(-32768),
  getInt16(-1),
  getInt16(+256),
  getInt16(+32767),
]) {
  expectNil(UInt8(exactly: $0))
}

//===----------------------------------------------------------------------===//
// MARK: UInt32: (+0)...(+4294967295)
//===----------------------------------------------------------------------===//

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt32_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getUInt32(+0)),
  (getUInt8(+255), getUInt32(+255)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt32_NeverFails")
.forEach(in: [
  (getUInt8(+0), getUInt32(+0)),
  (getUInt8(+255), getUInt32(+255)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt32_AlwaysTraps")
.forEach(in: [
  getUInt32(+256),
  getUInt32(+4294967295),
]) {
  expectCrashLater()
  _blackHole(UInt8($0))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt32_AlwaysFails")
.forEach(in: [
  getUInt32(+256),
  getUInt32(+4294967295),
]) {
  expectNil(UInt8(exactly: $0))
}

//===----------------------------------------------------------------------===//
// MARK: Int32: (-2147483648)...(+2147483647)
//===----------------------------------------------------------------------===//

FixedPointConversion_Debug64_ToUInt8
.test("FromInt32_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getInt32(+0)),
  (getUInt8(+255), getInt32(+255)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt32_NeverFails")
.forEach(in: [
  (getUInt8(+0), getInt32(+0)),
  (getUInt8(+255), getInt32(+255)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt32_AlwaysTraps")
.forEach(in: [
  getInt32(-2147483648),
  getInt32(-1),
  getInt32(+256),
  getInt32(+2147483647),
]) {
  expectCrashLater()
  _blackHole(UInt8($0))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt32_AlwaysFails")
.forEach(in: [
  getInt32(-2147483648),
  getInt32(-1),
  getInt32(+256),
  getInt32(+2147483647),
]) {
  expectNil(UInt8(exactly: $0))
}

//===----------------------------------------------------------------------===//
// MARK: UInt64: (+0)...(+18446744073709551615)
//===----------------------------------------------------------------------===//

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt64_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getUInt64(+0)),
  (getUInt8(+255), getUInt64(+255)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt64_NeverFails")
.forEach(in: [
  (getUInt8(+0), getUInt64(+0)),
  (getUInt8(+255), getUInt64(+255)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt64_AlwaysTraps")
.forEach(in: [
  getUInt64(+256),
  getUInt64(+18446744073709551615),
]) {
  expectCrashLater()
  _blackHole(UInt8($0))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt64_AlwaysFails")
.forEach(in: [
  getUInt64(+256),
  getUInt64(+18446744073709551615),
]) {
  expectNil(UInt8(exactly: $0))
}

//===----------------------------------------------------------------------===//
// MARK: Int64: (-9223372036854775808)...(+9223372036854775807)
//===----------------------------------------------------------------------===//

FixedPointConversion_Debug64_ToUInt8
.test("FromInt64_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getInt64(+0)),
  (getUInt8(+255), getInt64(+255)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt64_NeverFails")
.forEach(in: [
  (getUInt8(+0), getInt64(+0)),
  (getUInt8(+255), getInt64(+255)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt64_AlwaysTraps")
.forEach(in: [
  getInt64(-9223372036854775808),
  getInt64(-1),
  getInt64(+256),
  getInt64(+9223372036854775807),
]) {
  expectCrashLater()
  _blackHole(UInt8($0))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt64_AlwaysFails")
.forEach(in: [
  getInt64(-9223372036854775808),
  getInt64(-1),
  getInt64(+256),
  getInt64(+9223372036854775807),
]) {
  expectNil(UInt8(exactly: $0))
}

//===----------------------------------------------------------------------===//
// MARK: UInt: (+0)...(+18446744073709551615)
//===----------------------------------------------------------------------===//

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getUInt(+0)),
  (getUInt8(+255), getUInt(+255)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt_NeverFails")
.forEach(in: [
  (getUInt8(+0), getUInt(+0)),
  (getUInt8(+255), getUInt(+255)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt_AlwaysTraps")
.forEach(in: [
  getUInt(+256),
  getUInt(+18446744073709551615),
]) {
  expectCrashLater()
  _blackHole(UInt8($0))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromUInt_AlwaysFails")
.forEach(in: [
  getUInt(+256),
  getUInt(+18446744073709551615),
]) {
  expectNil(UInt8(exactly: $0))
}

//===----------------------------------------------------------------------===//
// MARK: Int: (-9223372036854775808)...(+9223372036854775807)
//===----------------------------------------------------------------------===//

FixedPointConversion_Debug64_ToUInt8
.test("FromInt_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getInt(+0)),
  (getUInt8(+255), getInt(+255)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt_NeverFails")
.forEach(in: [
  (getUInt8(+0), getInt(+0)),
  (getUInt8(+255), getInt(+255)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt_AlwaysTraps")
.forEach(in: [
  getInt(-9223372036854775808),
  getInt(-1),
  getInt(+256),
  getInt(+9223372036854775807),
]) {
  expectCrashLater()
  _blackHole(UInt8($0))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromInt_AlwaysFails")
.forEach(in: [
  getInt(-9223372036854775808),
  getInt(-1),
  getInt(+256),
  getInt(+9223372036854775807),
]) {
  expectNil(UInt8(exactly: $0))
}

//===----------------------------------------------------------------------===//
// MARK: Float16: (-2047)...(+2047)
//===----------------------------------------------------------------------===//

#if !((os(macOS) || targetEnvironment(macCatalyst)) && arch(x86_64))
if #available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *) {

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat16_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getFloat16(-0.5)),
  (getUInt8(+0), getFloat16(-0)),
  (getUInt8(+0), getFloat16(+0)),
  (getUInt8(+0), getFloat16(+0.5)),
  (getUInt8(+127), getFloat16(+127.5)),
  (getUInt8(+255), getFloat16(+255)),
  (getUInt8(+255), getFloat16(+255.5)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat16_NeverFails")
.forEach(in: [
  (getUInt8(+0), getFloat16(-0)),
  (getUInt8(+0), getFloat16(+0)),
  (getUInt8(+255), getFloat16(+255)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat16_AlwaysTraps")
.forEach(in: [
  getFloat16(-2047),
  getFloat16(-128.5),
  getFloat16(-1),
  getFloat16(+256),
  getFloat16(+2047),
  getFloat16(-.infinity),
  getFloat16(-.nan),
  getFloat16(-.signalingNaN),
  getFloat16(+.infinity),
  getFloat16(+.nan),
  getFloat16(+.signalingNaN),
]) {
  expectCrashLater()
  _blackHole(UInt8($0))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat16_AlwaysFails")
.forEach(in: [
  getFloat16(-2047),
  getFloat16(-128.5),
  getFloat16(-1),
  getFloat16(-0.5),
  getFloat16(+0.5),
  getFloat16(+127.5),
  getFloat16(+255.5),
  getFloat16(+256),
  getFloat16(+2047),
  getFloat16(-.infinity),
  getFloat16(-.nan),
  getFloat16(-.signalingNaN),
  getFloat16(+.infinity),
  getFloat16(+.nan),
  getFloat16(+.signalingNaN),
]) {
  expectNil(UInt8(exactly: $0))
}

}
#endif // Float16

//===----------------------------------------------------------------------===//
// MARK: Float32: (-16777215)...(+16777215)
//===----------------------------------------------------------------------===//

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat32_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getFloat32(-0.5)),
  (getUInt8(+0), getFloat32(+0)),
  (getUInt8(+0), getFloat32(-0)),
  (getUInt8(+0), getFloat32(+0.5)),
  (getUInt8(+127), getFloat32(+127.5)),
  (getUInt8(+255), getFloat32(+255)),
  (getUInt8(+255), getFloat32(+255.5)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat32_NeverFails")
.forEach(in: [
  (getUInt8(+0), getFloat32(+0)),
  (getUInt8(+0), getFloat32(-0)),
  (getUInt8(+255), getFloat32(+255)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat32_AlwaysTraps")
.forEach(in: [
  getFloat32(-16777215),
  getFloat32(-32768.5),
  getFloat32(-128.5),
  getFloat32(-1),
  getFloat32(+256),
  getFloat32(+32767.5),
  getFloat32(+65535.5),
  getFloat32(+16777215),
  getFloat32(-.infinity),
  getFloat32(-.nan),
  getFloat32(-.signalingNaN),
  getFloat32(+.infinity),
  getFloat32(+.nan),
  getFloat32(+.signalingNaN),
]) {
  expectCrashLater()
  _blackHole(UInt8($0))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat32_AlwaysFails")
.forEach(in: [
  getFloat32(-16777215),
  getFloat32(-32768.5),
  getFloat32(-128.5),
  getFloat32(-1),
  getFloat32(-0.5),
  getFloat32(+0.5),
  getFloat32(+127.5),
  getFloat32(+255.5),
  getFloat32(+256),
  getFloat32(+32767.5),
  getFloat32(+65535.5),
  getFloat32(+16777215),
  getFloat32(-.infinity),
  getFloat32(-.nan),
  getFloat32(-.signalingNaN),
  getFloat32(+.infinity),
  getFloat32(+.nan),
  getFloat32(+.signalingNaN),
]) {
  expectNil(UInt8(exactly: $0))
}

//===----------------------------------------------------------------------===//
// MARK: Float64: (-9007199254740991)...(+9007199254740991)
//===----------------------------------------------------------------------===//

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat64_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getFloat64(-0.5)),
  (getUInt8(+0), getFloat64(+0)),
  (getUInt8(+0), getFloat64(-0)),
  (getUInt8(+0), getFloat64(+0.5)),
  (getUInt8(+127), getFloat64(+127.5)),
  (getUInt8(+255), getFloat64(+255)),
  (getUInt8(+255), getFloat64(+255.5)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat64_NeverFails")
.forEach(in: [
  (getUInt8(+0), getFloat64(+0)),
  (getUInt8(+0), getFloat64(-0)),
  (getUInt8(+255), getFloat64(+255)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat64_AlwaysTraps")
.forEach(in: [
  getFloat64(-9007199254740991),
  getFloat64(-32768.5),
  getFloat64(-128.5),
  getFloat64(-1),
  getFloat64(+256),
  getFloat64(+32767.5),
  getFloat64(+65535.5),
  getFloat64(+9007199254740991),
  getFloat64(-.infinity),
  getFloat64(-.nan),
  getFloat64(-.signalingNaN),
  getFloat64(+.infinity),
  getFloat64(+.nan),
  getFloat64(+.signalingNaN),
]) {
  expectCrashLater()
  _blackHole(UInt8($0))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat64_AlwaysFails")
.forEach(in: [
  getFloat64(-9007199254740991),
  getFloat64(-32768.5),
  getFloat64(-128.5),
  getFloat64(-1),
  getFloat64(-0.5),
  getFloat64(+0.5),
  getFloat64(+127.5),
  getFloat64(+255.5),
  getFloat64(+256),
  getFloat64(+32767.5),
  getFloat64(+65535.5),
  getFloat64(+9007199254740991),
  getFloat64(-.infinity),
  getFloat64(-.nan),
  getFloat64(-.signalingNaN),
  getFloat64(+.infinity),
  getFloat64(+.nan),
  getFloat64(+.signalingNaN),
]) {
  expectNil(UInt8(exactly: $0))
}

//===----------------------------------------------------------------------===//
// MARK: Float80: (-18446744073709551615)...(+18446744073709551615)
//===----------------------------------------------------------------------===//

#if !(os(Windows) || os(Android)) && (arch(i386) || arch(x86_64))

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat80_NeverTraps")
.forEach(in: [
  (getUInt8(+0), getFloat80(-0.5)),
  (getUInt8(+0), getFloat80(-0)),
  (getUInt8(+0), getFloat80(+0)),
  (getUInt8(+0), getFloat80(+0.5)),
  (getUInt8(+127), getFloat80(+127.5)),
  (getUInt8(+255), getFloat80(+255)),
  (getUInt8(+255), getFloat80(+255.5)),
]) {
  expectEqual($0.0, UInt8($0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat80_NeverFails")
.forEach(in: [
  (getUInt8(+0), getFloat80(-0)),
  (getUInt8(+0), getFloat80(+0)),
  (getUInt8(+255), getFloat80(+255)),
]) {
  expectEqual($0.0, UInt8(exactly: $0.1))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat80_AlwaysTraps")
.forEach(in: [
  getFloat80(-18446744073709551615),
  getFloat80(-32768.5),
  getFloat80(-128.5),
  getFloat80(-1),
  getFloat80(+256),
  getFloat80(+32767.5),
  getFloat80(+65535.5),
  getFloat80(+18446744073709551615),
  getFloat80(-.infinity),
  getFloat80(-.nan),
  getFloat80(-.signalingNaN),
  getFloat80(+.infinity),
  getFloat80(+.nan),
  getFloat80(+.signalingNaN),
]) {
  expectCrashLater()
  _blackHole(UInt8($0))
}

FixedPointConversion_Debug64_ToUInt8
.test("FromFloat80_AlwaysFails")
.forEach(in: [
  getFloat80(-18446744073709551615),
  getFloat80(-32768.5),
  getFloat80(-128.5),
  getFloat80(-1),
  getFloat80(-0.5),
  getFloat80(+0.5),
  getFloat80(+127.5),
  getFloat80(+255.5),
  getFloat80(+256),
  getFloat80(+32767.5),
  getFloat80(+65535.5),
  getFloat80(+18446744073709551615),
  getFloat80(-.infinity),
  getFloat80(-.nan),
  getFloat80(-.signalingNaN),
  getFloat80(+.infinity),
  getFloat80(+.nan),
  getFloat80(+.signalingNaN),
]) {
  expectNil(UInt8(exactly: $0))
}

#endif // Float80

runAllTests()

