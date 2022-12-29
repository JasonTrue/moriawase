# Moriawase

This is some experimental stuff wherein I try to make sense of ActivityPub, WebFinger
and other emerging distributed social networking tools

## Project goals

My near term objecties are just to understand the protocols used in federated social networks.
If I make a little progress, I'll deploy a version of this code on a domain I control
and play around a bit. I'm also hoping to explore scaling, managed hosting, and custom
domains.

## Development

The `.tool-versions` file at the project root represents all the tooling dependencies
for Elixir, Erlang/OTP, and (maybe eventually) Node. You'll also need Postgres 13 or higher.

If you have asdf, you can simply `asdf install` to make sure you're using compatible
versions of the tooling, assuming you've already installed plugins for Elixir and Erlang.
See [https://asdf-vm.com/guide/getting-started.html]ASDF's "Getting Started" guide for help.

Once you have OTP and Elixir installed:

* Install dependencies with `mix deps.get`
* Create and migrate your database with `mix ecto.setup`
* Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Deploying

Coming eventually. It's not deployed anywhere yet.

## Contributing

1. Fork it
2. Make your changes. Add tests please!
3. Commit
4. Send a [pull request](https://github.com/JasonTrue/moriawase/pulls)

## License

Copyright © 2022 Jason Truesdell and YuzuTen LLC.

Let's say "proprietary" for now, but if you're interested in using this code, post an
issue on the Moriawase [Github Issue Tracker](https://github.com/JasonTrue/moriawase/issues) and
I'll start more seriously committing to one. I was leaning toward either MIT or BSD,
rather than GNU or similar.
