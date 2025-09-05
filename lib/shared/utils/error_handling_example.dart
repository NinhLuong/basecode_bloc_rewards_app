/// # Enhanced Error Handling and Logging Example
/// 
/// This file demonstrates the proper usage of the enhanced error handling
/// mechanism implemented in the application. It shows how to capture and
/// log detailed error information including stack traces, file paths, and
/// line numbers for efficient debugging.
/// 
/// ## Key Features Implemented:
/// 
/// 1. **Stack Trace Capture**: Every exception is caught with its complete stack trace
/// 2. **Detailed Context Logging**: File paths, line numbers, and method call sequences
/// 3. **Error Type Analysis**: Specific handling for different error types
/// 4. **Troubleshooting Tips**: Contextual help for common error scenarios
/// 5. **Structured Logging**: Easy-to-read, filterable log format
/// 
/// ## Usage Examples:

import 'dart:developer' as developer;
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Example class demonstrating proper error handling patterns
class ErrorHandlingExample {
  
  /// Example 1: Basic error handling with stack trace capture
  /// 
  /// This demonstrates the fundamental pattern for catching and logging
  /// exceptions with complete context information.
  static Future<void> basicErrorHandlingExample() async {
    try {
      // Simulate some operation that might fail
      await _simulateApiCall();
      
    } catch (e, stackTrace) {
      // ✅ CORRECT: Always catch both exception and stack trace
      LoggerService.detailedError(
        'API call failed in basicErrorHandlingExample',
        e,
        stackTrace,
        {
          'Method': 'basicErrorHandlingExample',
          'Operation': 'simulateApiCall',
          'Class': 'ErrorHandlingExample',
        },
      );
      
      // Handle the error appropriately
      rethrow; // or handle gracefully based on requirements
    }
  }
  
  /// Example 2: JSON Parsing error handling with specific analysis
  /// 
  /// This shows how to handle parsing errors with detailed context
  /// that helps identify the exact cause of JSON conversion issues.
  static Future<Map<String, dynamic>?> jsonParsingExample(String jsonString) async {
    try {
      // Simulate JSON parsing that might fail
      final data = await _parseJsonData(jsonString);
      return data;
      
    } catch (e, stackTrace) {
      // ✅ CORRECT: Use specialized parsing error logging
      LoggerService.parsingError(
        'JSON parsing failed in jsonParsingExample',
        e,
        stackTrace,
        jsonString, // Pass the actual JSON data for analysis
        Map<String, dynamic>, // Pass the expected type
      );
      
      return null; // Return safe default or rethrow based on requirements
    }
  }
  
  /// Example 3: Repository-level error handling
  /// 
  /// This demonstrates error handling at the repository level where
  /// data transformation errors commonly occur.
  static Future<void> repositoryErrorExample() async {
    try {
      // Simulate repository operation
      await _simulateDataTransformation();
      
    } catch (e, stackTrace) {
      LoggerService.detailedError(
        'Data transformation failed in repository layer',
        e,
        stackTrace,
        {
          'Layer': 'Repository',
          'Operation': 'Data Transformation',
          'Method': 'repositoryErrorExample',
          'Component': 'ErrorHandlingExample',
        },
      );
      
      // Convert to appropriate failure type
      throw e; // Let ErrorsHandler.handleEither handle the conversion
    }
  }
  
  /// Example 4: Using developer.log directly for custom scenarios
  /// 
  /// Sometimes you need direct control over logging for specific debugging needs.
  static void customLoggingExample() {
    try {
      // Some operation
      _simulateComplexOperation();
      
    } catch (e, stackTrace) {
      // ✅ CORRECT: Direct developer.log usage with full context
      developer.log(
        '''
🔥 CUSTOM ERROR ANALYSIS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📋 Custom operation failed in ErrorHandlingExample.customLoggingExample()
🏷️  Error Type: ${e.runtimeType}
💬 Error Message: $e
📁 File: error_handling_example.dart
🎯 Method: customLoggingExample
⏰ Timestamp: ${DateTime.now().toIso8601String()}

📍 STACK TRACE:
$stackTrace
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━''',
        name: 'CustomError',
        level: 1000, // Error level
        error: e,
        stackTrace: stackTrace,
      );
      
      rethrow;
    }
  }
  
  // Simulation methods for examples
  static Future<void> _simulateApiCall() async {
    await Future.delayed(Duration(milliseconds: 100));
    throw Exception('Simulated API failure');
  }
  
  static Future<Map<String, dynamic>> _parseJsonData(String jsonString) async {
    await Future.delayed(Duration(milliseconds: 50));
    // Simulate parsing error
    throw TypeError();
  }
  
  static Future<void> _simulateDataTransformation() async {
    await Future.delayed(Duration(milliseconds: 75));
    throw FormatException('Simulated data transformation error');
  }
  
  static void _simulateComplexOperation() {
    throw StateError('Simulated complex operation error');
  }
}

/// # Error Handling Best Practices Summary
/// 
/// ## ✅ DO:
/// 
/// 1. **Always catch both exception and stack trace:**
///    ```dart
///    try {
///      // risky operation
///    } catch (e, stackTrace) {
///      LoggerService.detailedError('Operation failed', e, stackTrace);
///    }
///    ```
/// 
/// 2. **Use appropriate logging methods:**
///    - `LoggerService.detailedError()` for comprehensive error analysis
///    - `LoggerService.parsingError()` for JSON/parsing specific errors
///    - `LoggerService.error()` for standard error logging
/// 
/// 3. **Provide meaningful context:**
///    - Include method names, class names, operation types
///    - Add relevant data that helps identify the problem
///    - Include expected vs actual data types for parsing errors
/// 
/// 4. **Use structured error messages:**
///    - Clear, descriptive primary message
///    - Contextual information in additional parameters
///    - Consistent formatting for easy filtering
/// 
/// ## ❌ DON'T:
/// 
/// 1. **Don't ignore stack traces:**
///    ```dart
///    // ❌ WRONG
///    try {
///      // operation
///    } catch (e) {
///      print('Error: $e'); // No stack trace!
///    }
///    ```
/// 
/// 2. **Don't use generic error messages:**
///    ```dart
///    // ❌ WRONG
///    LoggerService.error('Something went wrong');
///    ```
/// 
/// 3. **Don't swallow exceptions without logging:**
///    ```dart
///    // ❌ WRONG
///    try {
///      // operation
///    } catch (e) {
///      // Silent failure - debugging nightmare!
///    }
///    ```
/// 
/// ## 🎯 Benefits of This Implementation:
/// 
/// 1. **Pinpoint Error Location**: Stack traces show exact file and line numbers
/// 2. **Complete Context**: See the full call chain leading to the error
/// 3. **Debugging Efficiency**: Quickly identify root causes
/// 4. **Production Monitoring**: Structured logs for error tracking systems
/// 5. **Type-Specific Handling**: Specialized logic for different error types
/// 6. **Troubleshooting Guidance**: Built-in tips for common error scenarios
/// 
/// ## 🔍 Stack Trace Importance:
/// 
/// Stack traces are crucial for debugging because they provide:
/// - **Exact file path and line number** where the error occurred
/// - **Call sequence** showing how the code reached the error point
/// - **Method chain** revealing the execution flow
/// - **Context switching** between async operations
/// - **Third-party library involvement** in the error chain
/// 
/// Without stack traces, debugging becomes a time-consuming guessing game.
/// With proper stack trace logging, developers can immediately locate and
/// fix issues, significantly reducing debugging time and improving code quality.
