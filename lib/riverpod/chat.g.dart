// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentConversationInfoHash() =>
    r'fbd19013f35b9052c629df5704239d9761485a3a';

/// See also [currentConversationInfo].
@ProviderFor(currentConversationInfo)
final currentConversationInfoProvider =
    AutoDisposeFutureProvider<List<ConversationInfo>>.internal(
  currentConversationInfo,
  name: r'currentConversationInfoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentConversationInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentConversationInfoRef
    = AutoDisposeFutureProviderRef<List<ConversationInfo>>;
String _$messagesByConversationIdHash() =>
    r'6c35edd848ca3df276e6a51ab7113790b9d1ed4a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [messagesByConversationId].
@ProviderFor(messagesByConversationId)
const messagesByConversationIdProvider = MessagesByConversationIdFamily();

/// See also [messagesByConversationId].
class MessagesByConversationIdFamily
    extends Family<AsyncValue<List<MessageInfo>>> {
  /// See also [messagesByConversationId].
  const MessagesByConversationIdFamily();

  /// See also [messagesByConversationId].
  MessagesByConversationIdProvider call(
    String conversationId,
  ) {
    return MessagesByConversationIdProvider(
      conversationId,
    );
  }

  @override
  MessagesByConversationIdProvider getProviderOverride(
    covariant MessagesByConversationIdProvider provider,
  ) {
    return call(
      provider.conversationId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'messagesByConversationIdProvider';
}

/// See also [messagesByConversationId].
class MessagesByConversationIdProvider
    extends AutoDisposeFutureProvider<List<MessageInfo>> {
  /// See also [messagesByConversationId].
  MessagesByConversationIdProvider(
    String conversationId,
  ) : this._internal(
          (ref) => messagesByConversationId(
            ref as MessagesByConversationIdRef,
            conversationId,
          ),
          from: messagesByConversationIdProvider,
          name: r'messagesByConversationIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messagesByConversationIdHash,
          dependencies: MessagesByConversationIdFamily._dependencies,
          allTransitiveDependencies:
              MessagesByConversationIdFamily._allTransitiveDependencies,
          conversationId: conversationId,
        );

  MessagesByConversationIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.conversationId,
  }) : super.internal();

  final String conversationId;

  @override
  Override overrideWith(
    FutureOr<List<MessageInfo>> Function(MessagesByConversationIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MessagesByConversationIdProvider._internal(
        (ref) => create(ref as MessagesByConversationIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        conversationId: conversationId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<MessageInfo>> createElement() {
    return _MessagesByConversationIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessagesByConversationIdProvider &&
        other.conversationId == conversationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, conversationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MessagesByConversationIdRef
    on AutoDisposeFutureProviderRef<List<MessageInfo>> {
  /// The parameter `conversationId` of this provider.
  String get conversationId;
}

class _MessagesByConversationIdProviderElement
    extends AutoDisposeFutureProviderElement<List<MessageInfo>>
    with MessagesByConversationIdRef {
  _MessagesByConversationIdProviderElement(super.provider);

  @override
  String get conversationId =>
      (origin as MessagesByConversationIdProvider).conversationId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
