require "spamtestplus";
require "fileinto";
require "relational";
require "comparator-i;ascii-numeric";
require "imap4flags";

if spamtest :value "gt" :comparator "i;ascii-numeric" "1" {
/*  discard;*/
    fileinto "Spam";
    stop;
}

/* Other messages get filed into INBOX */
