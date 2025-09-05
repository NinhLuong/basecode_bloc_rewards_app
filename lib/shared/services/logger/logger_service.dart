/// A centralized logging utility that provides structured logging capabilities
/// using the `dart:developer` package for better debugging and monitoring.
///
/// This logger provides different log levels and context-specific methods
/// for better organization and filtering of log messages. It follows
/// Flutter/Dart best practices for logging in production applications.
///
/// ## Features
/// - Multiple log levels (debug, info, warning, error, verbose)
/// - Context-specific logging methods
/// - Proper error handling with stack traces
/// - Production-ready logging that can be easily filtered or disabled
///
/// ## Usage Examples
/// ```dart
/// // Basic logging
/// Logger.info('User logged in successfully');
/// Logger.error('Failed to fetch data', exception, stackTrace);
///
/// // Context-specific logging
/// Logger.auth('User authentication completed');
/// Logger.task('Task created with ID: ${task.id}');
/// Logger.database('Database query executed');
/// ```
///
/// ## Log Levels
/// - **Debug (500)**: Detailed information for debugging
/// - **Info (800)**: General information about application flow
/// - **Warning (900)**: Potential issues that don't stop execution
/// - **Error (1000)**: Errors that need attention
/// - **Verbose (300)**: Very detailed information for deep debugging
library;
import 'dart:developer' as developer;

/// Centralized logging utility for the Flutter application.
///
/// Provides structured logging with different levels and context-specific
/// methods for better debugging and monitoring capabilities.
class LoggerService {
  /// Default tag used for logging when no specific tag is provided.
  static const String _tag = 'Flutter';

  /// Logs a debug message with optional custom tag.
  ///
  /// Debug messages contain detailed information useful for debugging
  /// but are typically not needed in production.
  ///
  /// [message] The message to log.
  /// [tag] Optional custom tag for categorizing the log message.
  static void debug(String message, [String? tag]) {
    developer.log(
      message,
      name: tag ?? _tag,
      level: 500, // Debug level
    );
  }

  /// Logs an informational message with optional custom tag.
  ///
  /// Info messages contain general information about application flow
  /// and are useful for understanding what the application is doing.
  ///
  /// [message] The message to log.
  /// [tag] Optional custom tag for categorizing the log message.
  static void info(String message, [String? tag]) {
    developer.log(
      message,
      name: tag ?? _tag,
      level: 800, // Info level
    );
  }

  /// Logs a warning message with optional custom tag.
  ///
  /// Warning messages indicate potential issues that don't stop
  /// execution but should be monitored.
  ///
  /// [message] The message to log.
  /// [tag] Optional custom tag for categorizing the log message.
  static void warning(String message, [String? tag]) {
    developer.log(
      message,
      name: tag ?? _tag,
      level: 900, // Warning level
    );
  }

  /// Logs an error message with optional error object and stack trace.
  ///
  /// Error messages indicate actual errors that need attention
  /// and can include the error object and stack trace for debugging.
  ///
  /// [message] The error message to log.
  /// [error] Optional error object to include in the log.
  /// [stackTrace] Optional stack trace to include in the log.
  static void error(String message, [Object? error, StackTrace? stackTrace]) {
    developer.log(
      message,
      name: _tag,
      level: 1000, // Error level
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Logs a detailed error with comprehensive context information.
  ///
  /// This method provides enhanced error logging with stack trace analysis,
  /// file paths, line numbers, and contextual information for debugging.
  ///
  /// [message] The primary error message.
  /// [error] The error object to analyze.
  /// [stackTrace] Stack trace for detailed location analysis.
  /// [context] Optional additional context information.
  static void detailedError(
    String message,
    Object? error, [
    StackTrace? stackTrace,
    Map<String, dynamic>? context,
  ]) {
    final currentStackTrace = stackTrace ?? StackTrace.current;
    final stackTraceString = currentStackTrace.toString();
    
    // Parse stack trace to extract meaningful information
    final stackLines = stackTraceString.split('\n');
    final relevantFrames = stackLines.take(10).where((line) => 
      line.contains('package:magic_rewards') || 
      line.contains('lib/') || 
      line.contains('dart:')
    ).toList();

    final contextInfo = context != null 
      ? '\n🔍 Context:\n${context.entries.map((e) => '   • ${e.key}: ${e.value}').join('\n')}'
      : '';

    final detailedMessage = '''
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🔥 DETAILED ERROR ANALYSIS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📋 Message: $message
🏷️  Error Type: ${error.runtimeType}
💬 Error Details: $error
⏰ Timestamp: ${DateTime.now().toIso8601String()}$contextInfo

📍 STACK TRACE ANALYSIS:
${relevantFrames.asMap().entries.map((entry) => '   ${entry.key + 1}. ${entry.value.trim()}').join('\n')}

🔍 FULL STACK TRACE:
$stackTraceString
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━''';

    developer.log(
      detailedMessage,
      name: _tag,
      level: 1000,
      error: error,
      stackTrace: currentStackTrace,
    );
  }

  /// Logs a parsing error with specific analysis for JSON/model issues.
  ///
  /// This method is specifically designed to help debug common parsing
  /// issues in Flutter applications, especially those related to JSON
  /// serialization and null safety.
  ///
  /// [message] The primary error message.
  /// [error] The parsing error object.
  /// [stackTrace] Stack trace for location analysis.
  /// [jsonData] Optional JSON data that caused the error.
  /// [modelType] Optional model type being parsed.
  static void parsingError(
    String message,
    Object? error, [
    StackTrace? stackTrace,
    dynamic jsonData,
    Type? modelType,
  ]) {
    final analysisContext = <String, dynamic>{
      'Error Type': error.runtimeType.toString(),
      'Model Type': modelType?.toString() ?? 'Unknown',
      'JSON Data Type': jsonData?.runtimeType.toString() ?? 'null',
      'JSON Data': jsonData?.toString() ?? 'null',
    };

    // Common parsing error analysis
    String troubleshootingTips = '';
    if (error.toString().contains("type 'Null' is not a subtype of type 'Map<String, dynamic>'")) {
      troubleshootingTips = '''

🛠️  TROUBLESHOOTING TIPS:
   • API returned null instead of expected JSON object
   • Check if API endpoint is working correctly
   • Verify API response format matches model expectations
   • Ensure proper null safety in model constructors
   • Check @JsonKey annotations for correct field mapping
   • Verify toJson() and fromJson() methods are generated correctly''';
    } else if (error.toString().contains('NoSuchMethodError')) {
      troubleshootingTips = '''

🛠️  TROUBLESHOOTING TIPS:
   • Method called on null object
   • Check null safety in model methods
   • Verify object initialization before method calls
   • Ensure proper null checks before accessing properties''';
    } else if (error.toString().contains('FormatException')) {
      troubleshootingTips = '''

🛠️  TROUBLESHOOTING TIPS:
   • Invalid data format in JSON
   • Check data type mismatches (String vs int, etc.)
   • Verify date/time format compatibility
   • Check number format and locale issues''';
    }

    detailedError(
      '''$message

📊 PARSING ERROR ANALYSIS:
   • This error typically occurs during JSON to Dart object conversion
   • Check the API response format and ensure it matches your model structure$troubleshootingTips''',
      error,
      stackTrace,
      analysisContext,
    );
  }

  /// Logs a verbose message with optional custom tag.
  ///
  /// Verbose messages contain very detailed information useful for
  /// deep debugging but are typically disabled in production.
  ///
  /// [message] The message to log.
  /// [tag] Optional custom tag for categorizing the log message.
  static void verbose(String message, [String? tag]) {
    developer.log(
      message,
      name: tag ?? _tag,
      level: 300, // Verbose level
    );
  }

  // Convenience methods for specific contexts

  /// Logs an application-level informational message.
  static void app(String message) => info(message, 'App');

  /// Logs an authentication-related informational message.
  static void auth(String message) => info(message, 'Auth');

  /// Logs a task-related informational message.
  static void task(String message) => info(message, 'Task');

  /// Logs a notification-related informational message.
  static void notification(String message) => info(message, 'Notification');

  /// Logs a synchronization-related informational message.
  static void sync(String message) => info(message, 'Sync');

  /// Logs a database-related informational message.
  static void database(String message) => info(message, 'Database');

  /// Logs a network-related informational message.
  static void network(String message) => info(message, 'Network');
}
