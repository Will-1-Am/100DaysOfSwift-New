import Cocoa

///How to create and use extensions
/// Extensions allow use to add functionality to any type.

var quote = "       The truth is rarely pure and never simple    "

/// To remove the white space before the capital 'T' and after the final 'e', we can write the following:

let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

/// These methods come from the Foundation api, but they are a bit wordy.  We could write the following to simplify the call.

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

let trimmed2 = quote.trimmed()

/// A global function could have been defined instead of creating the extension, but there are several advantages of using this technique:
/// 1. Code completion;
/// 2. Code organization;
/// 3. Internal access;
extension String {
    mutating func trim() {  /// mutating is required here because it applies the result to self (the current string instance)
        self = self.trimmed()
    }
}

quote.trim()
