# Guardian crossword printer

This will print the Guardian crossword from the terminal to your default
printer. By default, it will try to print today's cryptic crossword, but
accepts a keyword (crossword type) and date as arguments.
Because it's a very simple wrapper around curl to the Guardian's
(predictable) crossword PDF URLs, it will fail if the day's crossword
hasn't been uploaded yet, or is special (Easter and Christmas, for
example).

## Usage

```bash
./print-guardian-crossword [TYPE [DATE]]
```

- `TYPE`: Defaults to `cryptic`, but `quick` should also work
- `DATE`: Defaults to today; should be of the form `YYYYMMDD`

## Running automatically

Because I run this on a Mac, I've included a `launchd` config to print
the (prize) cryptic crossword automatically every Saturday at 9am. To
install it, run:

```bash
make install
```

This assumes you have a `~/bin` directory, and installs the script
there. To uninstall, run `make uninstall`.
