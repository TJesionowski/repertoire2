# Repertoire2

## Getting Started

To run locally:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Roadmap
 - [ ] Alpha Release (0.0.1)
   - [ ] Math Exercise workflow
     - [ ] Note creation
     - [ ] Card (re)generation
     - [ ] Question instantiation
     - [ ] Card (re)scheduling
     - [ ] Show Recipe on failure
     - [ ] Live Review page?
 - [ ] Beta Release (0.1.0)
   - [ ] User Account System
     - [ ] Password Security checking on signup
       - [ ] AmIPwned API call
       - [ ] zxcvbn strength test
         - [ ] special character handling?
     - [ ] strong Argon2 hashing
     - [ ] Single-User mode
 - [ ] Full Release (1.0.0)
   - [ ] Vocabulary Notes
   - [ ] Plugin System??
   - [ ] Note/Card relationships
   - [ ] "Memorize" option for notes
