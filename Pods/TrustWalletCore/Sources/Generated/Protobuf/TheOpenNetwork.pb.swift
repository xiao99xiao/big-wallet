// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: TheOpenNetwork.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// SPDX-License-Identifier: Apache-2.0
//
// Copyright © 2017 Trust Wallet.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public enum TW_TheOpenNetwork_Proto_WalletVersion: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case walletV3R1 // = 0
  case walletV3R2 // = 1
  case walletV4R2 // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .walletV3R1
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .walletV3R1
    case 1: self = .walletV3R2
    case 2: self = .walletV4R2
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .walletV3R1: return 0
    case .walletV3R2: return 1
    case .walletV4R2: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension TW_TheOpenNetwork_Proto_WalletVersion: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [TW_TheOpenNetwork_Proto_WalletVersion] = [
    .walletV3R1,
    .walletV3R2,
    .walletV4R2,
  ]
}

#endif  // swift(>=4.2)

public enum TW_TheOpenNetwork_Proto_SendMode: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case `default` // = 0
  case payFeesSeparately // = 1
  case ignoreActionPhaseErrors // = 2
  case destroyOnZeroBalance // = 32
  case attachAllInboundMessageValue // = 64
  case attachAllContractBalance // = 128
  case UNRECOGNIZED(Int)

  public init() {
    self = .default
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .default
    case 1: self = .payFeesSeparately
    case 2: self = .ignoreActionPhaseErrors
    case 32: self = .destroyOnZeroBalance
    case 64: self = .attachAllInboundMessageValue
    case 128: self = .attachAllContractBalance
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .default: return 0
    case .payFeesSeparately: return 1
    case .ignoreActionPhaseErrors: return 2
    case .destroyOnZeroBalance: return 32
    case .attachAllInboundMessageValue: return 64
    case .attachAllContractBalance: return 128
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension TW_TheOpenNetwork_Proto_SendMode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [TW_TheOpenNetwork_Proto_SendMode] = [
    .default,
    .payFeesSeparately,
    .ignoreActionPhaseErrors,
    .destroyOnZeroBalance,
    .attachAllInboundMessageValue,
    .attachAllContractBalance,
  ]
}

#endif  // swift(>=4.2)

public struct TW_TheOpenNetwork_Proto_Transfer {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Wallet version
  public var walletVersion: TW_TheOpenNetwork_Proto_WalletVersion = .walletV3R1

  /// Recipient address
  public var dest: String = String()

  /// Amount to send in nanotons
  public var amount: UInt64 = 0

  /// Message counter (optional, 0 by default used for the first deploy)
  /// This field is required, because we need to protect the smart contract against "replay attacks"
  /// Learn more: https://ton.org/docs/develop/smart-contracts/guidelines/external-messages
  public var sequenceNumber: UInt32 = 0

  /// Send mode (optional, 0 by default)
  /// Learn more: https://ton.org/docs/develop/func/stdlib#send_raw_message
  public var mode: UInt32 = 0

  /// Expiration UNIX timestamp (optional, now() + 60 by default)
  public var expireAt: UInt32 = 0

  /// Transfer comment message (optional, empty by default)
  public var comment: String = String()

  /// If the address is bounceable
  public var bounceable: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_TheOpenNetwork_Proto_JettonTransfer {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Dest in Transfer means contract address of sender's jetton wallet. 
  public var transfer: TW_TheOpenNetwork_Proto_Transfer {
    get {return _transfer ?? TW_TheOpenNetwork_Proto_Transfer()}
    set {_transfer = newValue}
  }
  /// Returns true if `transfer` has been explicitly set.
  public var hasTransfer: Bool {return self._transfer != nil}
  /// Clears the value of `transfer`. Subsequent reads from it will return its default value.
  public mutating func clearTransfer() {self._transfer = nil}

  /// Arbitrary request number. Deafult is 0. Optional field.
  public var queryID: UInt64 = 0

  /// Amount of transferred jettons in elementary integer units. The real value transferred is jetton_amount multiplied by ten to the power of token decimal precision
  public var jettonAmount: UInt64 = 0

  /// Address of the new owner of the jettons.
  public var toOwner: String = String()

  /// Address where to send a response with confirmation of a successful transfer and the rest of the incoming message Toncoins. Usually the sender should get back their toncoins.
  public var responseAddress: String = String()

  /// Amount in nanotons to forward to recipient. Basically minimum amount - 1 nanoton should be used
  public var forwardAmount: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _transfer: TW_TheOpenNetwork_Proto_Transfer? = nil
}

public struct TW_TheOpenNetwork_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The secret private key used for signing (32 bytes).
  public var privateKey: Data = Data()

  /// The payload transfer
  public var actionOneof: TW_TheOpenNetwork_Proto_SigningInput.OneOf_ActionOneof? = nil

  public var transfer: TW_TheOpenNetwork_Proto_Transfer {
    get {
      if case .transfer(let v)? = actionOneof {return v}
      return TW_TheOpenNetwork_Proto_Transfer()
    }
    set {actionOneof = .transfer(newValue)}
  }

  public var jettonTransfer: TW_TheOpenNetwork_Proto_JettonTransfer {
    get {
      if case .jettonTransfer(let v)? = actionOneof {return v}
      return TW_TheOpenNetwork_Proto_JettonTransfer()
    }
    set {actionOneof = .jettonTransfer(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The payload transfer
  public enum OneOf_ActionOneof: Equatable {
    case transfer(TW_TheOpenNetwork_Proto_Transfer)
    case jettonTransfer(TW_TheOpenNetwork_Proto_JettonTransfer)

  #if !swift(>=4.1)
    public static func ==(lhs: TW_TheOpenNetwork_Proto_SigningInput.OneOf_ActionOneof, rhs: TW_TheOpenNetwork_Proto_SigningInput.OneOf_ActionOneof) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.transfer, .transfer): return {
        guard case .transfer(let l) = lhs, case .transfer(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.jettonTransfer, .jettonTransfer): return {
        guard case .jettonTransfer(let l) = lhs, case .jettonTransfer(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Transaction signing output.
public struct TW_TheOpenNetwork_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Signed and base64 encoded BOC message
  public var encoded: String = String()

  /// error code, 0 is ok, other codes will be treated as errors
  public var error: TW_Common_Proto_SigningError = .ok

  /// error code description
  public var errorMessage: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.TheOpenNetwork.Proto"

extension TW_TheOpenNetwork_Proto_WalletVersion: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "WALLET_V3_R1"),
    1: .same(proto: "WALLET_V3_R2"),
    2: .same(proto: "WALLET_V4_R2"),
  ]
}

extension TW_TheOpenNetwork_Proto_SendMode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DEFAULT"),
    1: .same(proto: "PAY_FEES_SEPARATELY"),
    2: .same(proto: "IGNORE_ACTION_PHASE_ERRORS"),
    32: .same(proto: "DESTROY_ON_ZERO_BALANCE"),
    64: .same(proto: "ATTACH_ALL_INBOUND_MESSAGE_VALUE"),
    128: .same(proto: "ATTACH_ALL_CONTRACT_BALANCE"),
  ]
}

extension TW_TheOpenNetwork_Proto_Transfer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Transfer"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "wallet_version"),
    2: .same(proto: "dest"),
    3: .same(proto: "amount"),
    4: .standard(proto: "sequence_number"),
    5: .same(proto: "mode"),
    6: .standard(proto: "expire_at"),
    7: .same(proto: "comment"),
    8: .same(proto: "bounceable"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.walletVersion) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.dest) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.amount) }()
      case 4: try { try decoder.decodeSingularUInt32Field(value: &self.sequenceNumber) }()
      case 5: try { try decoder.decodeSingularUInt32Field(value: &self.mode) }()
      case 6: try { try decoder.decodeSingularUInt32Field(value: &self.expireAt) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.comment) }()
      case 8: try { try decoder.decodeSingularBoolField(value: &self.bounceable) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.walletVersion != .walletV3R1 {
      try visitor.visitSingularEnumField(value: self.walletVersion, fieldNumber: 1)
    }
    if !self.dest.isEmpty {
      try visitor.visitSingularStringField(value: self.dest, fieldNumber: 2)
    }
    if self.amount != 0 {
      try visitor.visitSingularUInt64Field(value: self.amount, fieldNumber: 3)
    }
    if self.sequenceNumber != 0 {
      try visitor.visitSingularUInt32Field(value: self.sequenceNumber, fieldNumber: 4)
    }
    if self.mode != 0 {
      try visitor.visitSingularUInt32Field(value: self.mode, fieldNumber: 5)
    }
    if self.expireAt != 0 {
      try visitor.visitSingularUInt32Field(value: self.expireAt, fieldNumber: 6)
    }
    if !self.comment.isEmpty {
      try visitor.visitSingularStringField(value: self.comment, fieldNumber: 7)
    }
    if self.bounceable != false {
      try visitor.visitSingularBoolField(value: self.bounceable, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_TheOpenNetwork_Proto_Transfer, rhs: TW_TheOpenNetwork_Proto_Transfer) -> Bool {
    if lhs.walletVersion != rhs.walletVersion {return false}
    if lhs.dest != rhs.dest {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.sequenceNumber != rhs.sequenceNumber {return false}
    if lhs.mode != rhs.mode {return false}
    if lhs.expireAt != rhs.expireAt {return false}
    if lhs.comment != rhs.comment {return false}
    if lhs.bounceable != rhs.bounceable {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_TheOpenNetwork_Proto_JettonTransfer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".JettonTransfer"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "transfer"),
    2: .standard(proto: "query_id"),
    3: .standard(proto: "jetton_amount"),
    4: .standard(proto: "to_owner"),
    5: .standard(proto: "response_address"),
    6: .standard(proto: "forward_amount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._transfer) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.queryID) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.jettonAmount) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.toOwner) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.responseAddress) }()
      case 6: try { try decoder.decodeSingularUInt64Field(value: &self.forwardAmount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._transfer {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if self.queryID != 0 {
      try visitor.visitSingularUInt64Field(value: self.queryID, fieldNumber: 2)
    }
    if self.jettonAmount != 0 {
      try visitor.visitSingularUInt64Field(value: self.jettonAmount, fieldNumber: 3)
    }
    if !self.toOwner.isEmpty {
      try visitor.visitSingularStringField(value: self.toOwner, fieldNumber: 4)
    }
    if !self.responseAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.responseAddress, fieldNumber: 5)
    }
    if self.forwardAmount != 0 {
      try visitor.visitSingularUInt64Field(value: self.forwardAmount, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_TheOpenNetwork_Proto_JettonTransfer, rhs: TW_TheOpenNetwork_Proto_JettonTransfer) -> Bool {
    if lhs._transfer != rhs._transfer {return false}
    if lhs.queryID != rhs.queryID {return false}
    if lhs.jettonAmount != rhs.jettonAmount {return false}
    if lhs.toOwner != rhs.toOwner {return false}
    if lhs.responseAddress != rhs.responseAddress {return false}
    if lhs.forwardAmount != rhs.forwardAmount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_TheOpenNetwork_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "private_key"),
    2: .same(proto: "transfer"),
    3: .standard(proto: "jetton_transfer"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.privateKey) }()
      case 2: try {
        var v: TW_TheOpenNetwork_Proto_Transfer?
        var hadOneofValue = false
        if let current = self.actionOneof {
          hadOneofValue = true
          if case .transfer(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.actionOneof = .transfer(v)
        }
      }()
      case 3: try {
        var v: TW_TheOpenNetwork_Proto_JettonTransfer?
        var hadOneofValue = false
        if let current = self.actionOneof {
          hadOneofValue = true
          if case .jettonTransfer(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.actionOneof = .jettonTransfer(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.privateKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.privateKey, fieldNumber: 1)
    }
    switch self.actionOneof {
    case .transfer?: try {
      guard case .transfer(let v)? = self.actionOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .jettonTransfer?: try {
      guard case .jettonTransfer(let v)? = self.actionOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_TheOpenNetwork_Proto_SigningInput, rhs: TW_TheOpenNetwork_Proto_SigningInput) -> Bool {
    if lhs.privateKey != rhs.privateKey {return false}
    if lhs.actionOneof != rhs.actionOneof {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_TheOpenNetwork_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "encoded"),
    2: .same(proto: "error"),
    3: .standard(proto: "error_message"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.encoded) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.error) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.errorMessage) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.encoded.isEmpty {
      try visitor.visitSingularStringField(value: self.encoded, fieldNumber: 1)
    }
    if self.error != .ok {
      try visitor.visitSingularEnumField(value: self.error, fieldNumber: 2)
    }
    if !self.errorMessage.isEmpty {
      try visitor.visitSingularStringField(value: self.errorMessage, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_TheOpenNetwork_Proto_SigningOutput, rhs: TW_TheOpenNetwork_Proto_SigningOutput) -> Bool {
    if lhs.encoded != rhs.encoded {return false}
    if lhs.error != rhs.error {return false}
    if lhs.errorMessage != rhs.errorMessage {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
