# nsc

_nsc: (420) No Scope Commits_

This is a small gem intended to help you commit in the Angular Commit style, but
without the commit scope (since we think it's mostly useless). It's modeled after
the great NPM package commitizen, but does not require any sort of configuration
(since it's already really opinionated).

```bash
gem install nsc
```

Now you can add your files, and then generate a commit using:

```bash
nsc c # OR
nsc commit # OR JUST
nsc
```

If you're too lazy to add the files everytime, `nsc` can do that too! Just run:

```bash
nsc c -a # and all other variations
```

, and `nsc` will run `git add --all` before generating your commit! MAGIC!

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
