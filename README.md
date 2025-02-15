## Quote!

A simple program that displays a random quote from a list. At least this is its original purpose.
It can be used to just display a random string that may not be a quote.

Written solely for Linux on x86-64 architecture. Modifying it to work on x86 or on BSD distributions
should not be difficult but I don't really want to do it :D.

If you want to run it, you can compile (assemble and link?) it using following commands.
You can replace `ld` with any linker you want such as `ld.lld` or `mold`.

```sh
$ nasm -f elf64 quote.a -o quote.o
$ ld quote.o -o quote
```

## Motivations

- Doing this in C would be far too simple.
- I wanted to learn/practice a bit of x86-64 assembly.
- I was bored.

It took me around 3 hours to get it done. I knew bits and pieces of assembly beforehand
but this is my first thing I've actually written in it.

As for the code, I'm quite pleased with it. Quote list probably can be done better, but
I don't know how, really. I tried to comment it as well so if you want to see x86-64 assembly in action,
this may serve as an example (probably).

## License

As per [LICENSE](LICENSE), you can DO WHAT THE FUCK YOU WANT TO with this.
If you have any questions about licensing, you can refer to the aforementioned full license text.
