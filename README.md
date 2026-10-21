# Ghareeb k Bacho — Flutter starter

This is a starter project for a free-to-play virtual farm game. It is a prototype, not a production cash-rewards app.

## Included
- Flutter Android starter screen
- Free virtual chickens and egg collection
- Demo coins stored locally for prototype testing
- Clear notice that coins have no cash value
- Example Firestore security rules (starting point only)

## Important limitations
- Demo balance is local and can be reset or manipulated. Do not use it for cash rewards.
- No login, advertising, payments, withdrawals, or live backend is connected.
- Cash rewards are intentionally not implemented.
- Before release, implement server-authoritative transactions (for example, Cloud Functions), authentication, abuse prevention, privacy disclosures, and legal/platform review.

## Run
1. Install Flutter SDK and Android Studio.
2. Create a new Flutter project:
   `flutter create ghareeb_k_bacho`
3. Replace `lib/main.dart` with the `lib/main.dart` from this package.
4. From the project directory run:
   `flutter pub get`
   `flutter run`

This starter uses only Flutter's built-in Material library; no extra packages are required.

## Suggested next steps
1. Add Firebase Authentication.
2. Add Firestore with security rules reviewed and tested.
3. Move all coin changes to trusted server-side code; never trust a client-provided balance.
4. Add privacy policy and account deletion support.
5. Add advertising only after consent, age/privacy, and Google Play policy review.
6. Consider cash rewards only after the model is legally reviewed and funding is based on real, settled ad/sponsor revenue.
