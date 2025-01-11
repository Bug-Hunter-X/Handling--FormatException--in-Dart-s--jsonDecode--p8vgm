# Dart JSON Decoding Error Handling

This repository demonstrates how to gracefully handle `FormatException` errors that can occur when using `jsonDecode` in Dart when dealing with malformed JSON responses from APIs or other sources. The `bug.dart` file shows a naive implementation, and the `bugSolution.dart` file provides an improved solution to prevent crashes.

## How to Reproduce

1. Clone this repository
2. Run the `bug.dart` file
3. Observe the crash due to malformed JSON (simulated). 
4. Then run the `bugSolution.dart` for a corrected version.

## Solution

The solution involves wrapping the `jsonDecode` call in a `try-catch` block to catch and handle potential `FormatException` exceptions.  The improved implementation includes more informative error messages and prevents app crashes.
