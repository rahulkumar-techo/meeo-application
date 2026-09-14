import 'dart:io';
import 'dart:math';

/// Pure Dart local storage manager (no external native Android/Kotlin plugins).
/// Persists session ID directly to the app's sandboxed device storage.
class LocalStorage {
  LocalStorage._();

  static const String _sessionFileName = 'meeo_guest_session.txt';
  static String? _cachedSessionId;
  static File? _resolvedFile;

  /// Resolves the app storage file location on Android/iOS/Desktop.
  static Future<File> _getStorageFile() async {
    if (_resolvedFile != null) return _resolvedFile!;

    // 1. Try standard Android internal files directory
    try {
      final androidDir = Directory('/data/user/0/com.example.meeo/files');
      if (await androidDir.exists()) {
        _resolvedFile = File('${androidDir.path}/$_sessionFileName');
        return _resolvedFile!;
      }
    } catch (_) {}

    // 2. Try temp parent directory fallback (app data dir on Android/iOS)
    try {
      final parentDir = Directory.systemTemp.parent;
      final filesDir = Directory('${parentDir.path}/files');
      if (!await filesDir.exists()) {
        await filesDir.create(recursive: true);
      }
      _resolvedFile = File('${filesDir.path}/$_sessionFileName');
      return _resolvedFile!;
    } catch (_) {}

    // 3. Fallback to local sandbox directory
    _resolvedFile = File(_sessionFileName);
    return _resolvedFile!;
  }

  /// Initializes and loads the persistent session ID from disk on app launch.
  static Future<void> init() async {
    try {
      final file = await _getStorageFile();
      if (await file.exists()) {
        final content = (await file.readAsString()).trim();
        if (content.isNotEmpty) {
          _cachedSessionId = content;
          return;
        }
      }
    } catch (_) {}

    // If no existing session found on disk, generate and save a new one
    _cachedSessionId = generateUuid();
    await saveSessionId(_cachedSessionId!);
  }

  /// Returns the current persistent session ID.
  static String getSessionId() {
    if (_cachedSessionId != null && _cachedSessionId!.trim().isNotEmpty) {
      return _cachedSessionId!.trim();
    }
    _cachedSessionId = generateUuid();
    saveSessionId(_cachedSessionId!);
    return _cachedSessionId!;
  }

  /// Persists a session ID to the device disk.
  static Future<void> saveSessionId(String sessionId) async {
    if (sessionId.trim().isEmpty) return;
    _cachedSessionId = sessionId.trim();
    try {
      final file = await _getStorageFile();
      await file.writeAsString(_cachedSessionId!, flush: true);
    } catch (_) {}
  }

  /// Clears stored session ID.
  static Future<void> clearSession() async {
    _cachedSessionId = null;
    try {
      final file = await _getStorageFile();
      if (await file.exists()) {
        await file.delete();
      }
    } catch (_) {}
  }

  /// Generates an RFC4122 v4 UUID string.
  static String generateUuid() {
    final random = Random.secure();
    final values = List<int>.generate(16, (i) => random.nextInt(256));
    values[6] = (values[6] & 0x0f) | 0x40; // version 4
    values[8] = (values[8] & 0x3f) | 0x80; // variant

    final buffer = StringBuffer();
    for (var i = 0; i < 16; i++) {
      if (i == 4 || i == 6 || i == 8 || i == 10) {
        buffer.write('-');
      }
      buffer.write(values[i].toRadixString(16).padLeft(2, '0'));
    }
    return buffer.toString();
  }
}
