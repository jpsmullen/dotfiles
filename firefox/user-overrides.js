// Disable Resist Fingerprinting (RFP)
user_pref("privacy.resistFingerprinting", false);
user_pref("privacy.resistFingerprinting.letterboxing", false);

// Enable DNS over HTTPS
user_pref("network.trr.mode", 3);
user_pref("network.trr.uri", "https://dns.adguard-dns.com/dns-query");
user_pref("network.trr.custom_uri", "https://dns.adguard-dns.com/dns-query");

// Enable WebGL (mostly for radio.garden)
user_pref("webgl.disabled", false);

// Disable container tabs
user_pref("privacy.userContext.enabled", false);
user_pref("privacy.userContext.ui.enabled", false);

// Disable certain address-bar suggestions
user_pref("browser.urlbar.suggest.engines", false);
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.suggest.topsites", false);

// Disable "Ask to save passwords"
user_pref("signon.rememberSignons", false);

// Disable "Remember browsing and download history"
user_pref("places.history.enabled", false);
